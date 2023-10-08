import 'dart:typed_data';

import 'package:fixnum/fixnum.dart' as $fix;
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:photo_view/photo_view.dart';

import '../index.dart';

class ImageViewPage extends StatefulWidget {
  final $fix.Int64 id;
  final Function($fix.Int64) onDelete;

  ImageViewPage({this.id, this.onDelete});

  @override
  State<StatefulWidget> createState() => _StateImageViewPage();
}

class _StateImageViewPage extends State<ImageViewPage> {
  final UserDataService userDataService = Get.find();

  Future<Uint8List> future;

  @override
  void initState() {
    super.initState();

    future = onFuture();
  }

  @override
  Widget build(BuildContext context) {
    debugPrint("BookDetailImageWidget is Building");

    return Scaffold(
      body: Stack(
        children: <Widget>[
          buildFuture(),
          Positioned(
            right: 8,
            top: MediaQuery.of(context).padding.top,
            child: FloatingActionButton(
              child: Icon(
                Icons.close,
                size: 36,
                color: context.actionTextColor,
              ),
              backgroundColor: context.primaryBlackColor,
              elevation: 2,
              onPressed: Navigator.of(context).pop,
            ),
          ),
          if (widget.onDelete != null)
            Positioned(
              right: 8,
              bottom: MediaQuery.of(context).padding.bottom,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: context.dangerColor,
                  shape: CircleBorder(),
                  padding: EdgeInsets.all(12),
                ),
                child: Icon(
                  Icons.delete_outline,
                  size: 36,
                  color: context.whiteColor,
                ),
                onPressed: () {
                  widget.onDelete(widget.id);
                  Navigator.of(context).pop();
                },
              ),
            )
        ],
      ),
    );
  }

  Future<Uint8List> onFuture() async {
    final respBytes = await Http().getFile(widget.id);
    if (respBytes == null) return null;

    EasyLoading.show(status: "正在解密文件，请稍后...".translate);
    final bytes = await userDataService.aes.decrypt(respBytes);
    EasyLoading.dismiss();

    return bytes;
  }

  FutureBuilder buildFuture() {
    return FutureBuilder<Uint8List>(
      future: future,
      builder: (context, snapshot) {
        switch (snapshot.connectionState) {
          case ConnectionState.none:
          case ConnectionState.waiting:
            return PhotoView(
              enableRotation: true,
              imageProvider: widget.id.thumbnail(),
            );
          default:
            return PhotoView(
              enableRotation: true,
              imageProvider: MemoryImage(snapshot.data),
            );
        }
      },
    );
  }
}
