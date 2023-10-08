import 'dart:io';
import 'dart:typed_data';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/services.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_native_image/flutter_native_image.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/request/request.dart';
import 'package:image/image.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:video_compress/video_compress.dart';

import '../crypt/aes.dart';
import '../index.dart';
import '../pb/psw.pb.dart' as $pb;

class CabinetModel extends ChangeNotifier {
  UserDataService userDataService = Get.find();

  int hash;

  CabinetModel init() {
    hash = userDataService.hashCode;

    debugPrint("CabinetModel.init() UserDataService HashCode is $hash");
    return this;
  }

  void onUpdate() {
    final newHash = userDataService.hashCode;
    debugPrint("CabinetModel.onRefresh() UserDataService HashCode :: "
        "$hash => $newHash");
    if (hash == newHash) return;

    hash = newHash;
    notifyListeners();
  }

  Future<MediaInfo> getMediaInfo(String path) async {
    try {
      return VideoCompress.getMediaInfo(path);
    } catch (e, s) {
      debugPrint("Exception :: $e");
      debugPrint("StackTrace :: $s");
      return null;
    }
  }

  onFilePicker(FileType type) async {
    // iOS Photo Permission
    if (PlatformDevice().isIOS &&
        (type == FileType.image || type == FileType.video)) {
      final isGranted = await PermissionHandler().isGranted(Permission.photos);
      if (!isGranted) return;
    }

    try {
      debugPrint("onFilePicker() Before1 ${DateTime.now().toIso8601String()}");
      await FilePicker.platform.clearTemporaryFiles();
      debugPrint("onFilePicker() After1 ${DateTime.now().toIso8601String()}");

      // allowCompression is true :: https://github.com/miguelpruivo/flutter_file_picker/issues/835
      FilePickerResult result = await FilePicker.platform.pickFiles(
        type: type,
        onFileLoading: (FilePickerStatus status) {
          if (status == FilePickerStatus.picking && type == FileType.image) {
            EasyLoading.show(status: "${"正在压缩文件，请稍后...".translate}");
          }
        },
        allowCompression: type == FileType.image,
        allowMultiple: true,
        withData: false,
        withReadStream: true,
      );

      debugPrint("onFilePicker() Before2 ${DateTime.now().toIso8601String()}");
      if (result == null || result.files.isEmpty) {
        EasyLoading.dismiss();
        return;
      }

      // Picked Files
      debugPrint("onFilePicker() Before3 Length is ${result.files.length}");
      for (int i = 0; i < result.files.length; i++) {
        final file = result.files[i];

        // Show Loading
        final prefix = result.count > 1 ? "${i + 1}/${result.count}" : "";

        // Bytes && Thumbnail
        Uint8List bytes;
        List<int> thumbnail = [];

        // It is a Video ?
        bool isVideo = false;
        try {
          final video = await VideoCompress.getMediaInfo(file.path);
          if (video != null) {
            isVideo = true;
          }
        } catch (e) {
          debugPrint("Exception :: $e");
        }

        // Video
        if (isVideo) {
          debugPrint("${userDataService.videoCompressSizeM}");
          if (file.size > userDataService.videoCompressSizeM << 20) {
            final status = "$prefix ${"正在压缩文件，请稍后...".translate}";
            EasyLoading.show(status: status);

            final video = await VideoCompress.compressVideo(
              file.path,
              quality: userDataService.videoCompressQuality.quality,
            );
            bytes = await video.file.readAsBytes();
          } else {
            final status = "$prefix ${"正在处理文件，请稍后...".translate}";
            EasyLoading.show(status: status);

            bytes = await file.readStream.toBytes();
          }

          final image = await VideoCompress.getByteThumbnail(file.path);
          thumbnail = image.thumbnail();
        } else {
          final image = getDecoderForNamedImage(file.path);
          if (image != null) {
            if (file.size > userDataService.imageCompressSizeM << 20) {
              final status = "$prefix ${"正在压缩文件，请稍后...".translate}";
              EasyLoading.show(status: status);

              final compress = await FlutterNativeImage.compressImage(
                file.path,
                percentage: userDataService.imageCompressPercentage,
                quality: userDataService.imageCompressQuality,
              );
              bytes = await compress.readAsBytes();
            } else {
              final status = "$prefix ${"正在处理文件，请稍后...".translate}";
              EasyLoading.show(status: status);

              bytes = await file.readStream.toBytes();
            }

            thumbnail = bytes.thumbnail();
          } else {
            final status = "$prefix ${"正在处理文件，请稍后...".translate}";
            EasyLoading.show(status: status);

            bytes = await file.readStream.toBytes();
          }
        }

        // Exceed Size ?
        final maxSize = userDataService.maxFileSizeM << 20;
        if (bytes.lengthInBytes > maxSize) {
          await EasyLoading.showInfo(
              "${"文件超过最大限制".translate} (${bytes.lengthInBytes.toFileSize})");
          return;
        }

        // Encrypt
        EasyLoading.show(status: "$prefix ${"正在加密文件，请稍后...".translate}");
        final encrypt = await userDataService.aes.encrypt(bytes);

        debugPrint(">>>> ${file.size} > ${bytes.length} > ${thumbnail.length}");

        final summary = file.path.toFileSummary();
        debugPrint("Before Message ${DateTime.now().toIso8601String()}");

        final req = $pb.UploadFile()
          ..type = $pb.FileType.FileCabinet
          ..accountId = 0.toInt64
          ..name = summary.name
          ..mime = summary.mime
          ..ext = summary.ext
          ..bytes = encrypt
          ..thumbnail = thumbnail
          ..size = encrypt.lengthInBytes;
        debugPrint("Before Post ${DateTime.now().toIso8601String()}");

        final resp = await Http().post($pb.MsgNo.Msg2102, req,
            prefix: prefix, timeout: 0) as $pb.UploadFileResp;
        if (resp == null) return;

        debugPrint("Response ${DateTime.now().toIso8601String()}");

        // Save to Cached Files
        Cached().cache(userDataService.md5Bytes, resp.id, encrypt);

        final pbFile = $pb.File()
          ..id = resp.id
          ..name = req.name
          ..mime = req.mime
          ..ext = req.ext
          ..hasThumbnail = thumbnail != null && thumbnail.isNotEmpty
          ..size = req.size
          ..uploadAt = resp.uploadAt;

        userDataService.files.add(pbFile);
        onUpdate();
      }
    } catch (e, s) {
      debugPrint("Platform Exception is $e");
      debugPrint("Platform StackTrace is $s");

      if (Config().mode.isDebug) {
        await EasyLoading.showError(
          "Exception :: $e \n StackTrace :: $s",
          duration: Duration(seconds: 30),
        );
      } else {
        if (e is PlatformException && type == FileType.audio) {
          EasyLoading.showError("你没有安装Music".translate);
        } else {
          await EasyLoading.showError("读取文件失败".translate);
        }
      }
    }
  }

  // 分享码: 79Sg1upheCmjUuwr21BishAgpV1HdEUS21BjZ3N22GNVsanS9N8bbnYXDroS1awQyv9W
  // Open Sharing File
  onOpenShare() async {
    try {
      final _data = await Clipboard.getData(Clipboard.kTextPlain);
      if (_data == null || _data.text == null) return;

      final text = _data.text.trim().split(RegExp(r"[#:;@$：]")).last;
      if (text.isEmpty) return;
      debugPrint("${text}");

      final msg = Shared().decode(text.trim());
      if (msg == null) return;

      debugPrint("${msg.writeToJson()}");
      final respBytes = await Http().getFile(msg.id, isShared: true);
      if (respBytes == null) return null;

      // Decrypt
      final aes = AES(msg.key, msg.iv);
      final bytes = await aes.decrypt(respBytes);

      // Write Local
      final directory = (await getTemporaryDirectory()).path;
      final path = "$directory/${msg.id}_${msg.name}";
      await File(path).writeAsBytes(bytes, flush: true);

      EasyLoading.dismiss();
      OpenFile.open(path);
    } catch (e, s) {
      debugPrint("onOpenShare() Exception is $e");
      debugPrint("onOpenShare() StackTrace is $s");

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
