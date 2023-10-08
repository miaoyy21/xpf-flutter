import 'dart:core';
import 'dart:typed_data';

import 'package:file_picker/file_picker.dart';
import 'package:fixnum/fixnum.dart' as $fix;
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_native_image/flutter_native_image.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/request/request.dart';
import 'package:permission_handler/permission_handler.dart';

import '../index.dart';
import '../page/9001.image.view.page.dart';
import '../pb/psw.pb.dart' as $pb;

class BookDetailImageWidget extends StatefulWidget {
  final $pb.AccountField field;
  final VoidCallback onEdit;

  BookDetailImageWidget(this.field, this.onEdit);

  @override
  State<StatefulWidget> createState() => _StateBookDetailImageWidget();
}

class _StateBookDetailImageWidget extends State<BookDetailImageWidget> {
  final userDataService = Get.find<UserDataService>();
  final double _size = 64.0;

  @override
  Widget build(BuildContext context) {
    debugPrint("BookDetailImageWidget is Building");

    final readOnly = context.watch<BookDetailModel>().action.readOnly;

    List<Widget> _children = [];

    // Photo Icon shortcut
    final plain = widget.field.plain;
    List<$fix.Int64> fileIds = plain.length >= 6
        ? plain.split(",").map((src) => $fix.Int64.parseInt(src)).toList()
        : [];
    fileIds.forEach((id) {
      final child = GestureDetector(
        child: Container(
          width: _size,
          height: _size,
          margin: EdgeInsets.only(right: 8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            shape: BoxShape.rectangle,
            image: DecorationImage(image: id.thumbnail(), fit: BoxFit.fill),
          ),
        ),
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => ImageViewPage(
                id: id,
                onDelete: !readOnly ? _onDelete : null,
              ),
            ),
          );
        },
      );

      _children.add(child);
    });

    // Add Photo Button
    if (!readOnly) {
      _children.add(
        Container(
          width: _size,
          height: _size,
          margin: EdgeInsets.only(right: 8),
          decoration: BoxDecoration(
            border: Border.all(color: context.greyColor, width: 1),
            borderRadius: BorderRadius.circular(4),
            shape: BoxShape.rectangle,
          ),
          child: IconButton(
            icon: Icon(Icons.add_a_photo),
            onPressed: () => _onInsert(),
          ),
        ),
      );
    }

    if (_children.length.isZero) {
      _children.add(
        Container(
          width: _size,
          height: _size,
          alignment: Alignment.center,
          margin: EdgeInsets.only(right: 8),
          child: Text("暂无图片".translate,
              textAlign: TextAlign.center, style: context.subtitleStyle),
        ),
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 16),
          child: Text(
            widget.field.name.translate,
            style: context.subtitleStyle,
          ),
        ),
        Container(
          padding: EdgeInsets.only(left: 8, top: 4, right: 4, bottom: 4),
          child: Row(
            children: [
              Expanded(
                child: Container(
                  height: _size,
                  decoration: BoxDecoration(shape: BoxShape.rectangle),
                  child: Scrollbar(
                    thickness: 2,
                    child: ListView(
                      physics: BouncingScrollPhysics(),
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      scrollDirection: Axis.horizontal,
                      children: _children,
                    ),
                  ),
                ),
              ),
              readOnly
                  ? SizedBox(width: 36)
                  : GestureDetector(
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 8),
                        alignment: Alignment.center,
                        child: Icon(
                          Icons.edit_outlined,
                          size: 20,
                          color: context.primaryColor,
                        ),
                      ),
                      onTap: widget.onEdit,
                    ),
            ],
          ),
        )
      ],
    );
  }

  // Delete a Photo
  void _onDelete($fix.Int64 fileId) {
    final values = widget.field.plain.split(",")
      ..removeWhere((src) => $fix.Int64.parseInt(src) == fileId);
    final newValue = values.join(",");

    final model = context.read<BookDetailModel>();
    model.onFieldValueUpdate(widget.field, newValue, notify: true);
  }

  // Insert a Photo
  void _onInsert() async {
    final model = context.read<BookDetailModel>();

    // Permission
    if (PlatformDevice().isIOS) {
      final isGranted = await PermissionHandler().isGranted(Permission.photos);
      if (!isGranted) return;
    }

    // Original
    final result = await FilePicker.platform
        .pickFiles(type: FileType.image, withReadStream: true);

    // It is empty
    if (result == null || result.files.isEmpty) return;

    try {
      Uint8List bytes;
      final file = result.files.first;

      if (file.size > userDataService.imageCompressSizeM << 20) {
        final status = "${"正在压缩文件，请稍后...".translate}";
        EasyLoading.show(status: status);

        final compress = await FlutterNativeImage.compressImage(
          file.path,
          percentage: userDataService.imageCompressPercentage,
          quality: userDataService.imageCompressQuality,
        );
        bytes = await compress.readAsBytes();
      } else {
        final status = "${"正在处理文件，请稍后...".translate}";
        EasyLoading.show(status: status);

        bytes = await file.readStream.toBytes();
      }

      EasyLoading.show(status: "正在加密图片，请稍后...".translate);
      final encrypt = await userDataService.aes.encrypt(bytes);

      final thumbnail = bytes.thumbnail();
      debugPrint(">>>> ${file.size} > ${bytes.length} > ${thumbnail.length}");

      final summary = file.path.toFileSummary();
      final req = $pb.UploadFile()
        ..type = $pb.FileType.FileImage
        ..accountId = model.id
        ..name = summary.name
        ..mime = summary.mime
        ..ext = summary.ext
        ..bytes = encrypt
        ..thumbnail = thumbnail
        ..size = bytes.length;

      String value = widget.field.plain;
      final resp = await Http().post($pb.MsgNo.Msg2102, req, timeout: 0)
          as $pb.UploadFileResp;
      if (resp == null) return;

      // Save to Cached Files
      Cached().cache(userDataService.md5Bytes, resp.id, encrypt);

      // Save File ID
      if (value.length < 6) {
        value = "${resp.id}";
      } else {
        final newValue = value.split(",")..add("${resp.id}");
        value = newValue.join(",");
      }

      model.onFieldValueUpdate(widget.field, value, notify: true);
    } catch (e, s) {
      debugPrint("Platform Exception is $e");
      debugPrint("Platform StackTrace is $s");

      if (Config().mode.isDebug) {
        await EasyLoading.showError(
          "Exception :: $e \n StackTrace :: $s",
          duration: Duration(seconds: 30),
        );
      } else {
        await EasyLoading.showError("读取文件失败".translate);
      }
    }
  }
}
