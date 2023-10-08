import 'dart:io';
import 'dart:typed_data';

import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';

import '../index.dart';
import '../pb/psw.pb.dart' as $pb;

class CabinetViewModel extends ChangeNotifier {
  final UserDataService userDataService = Get.find();

  final Uint8List bytes;
  $pb.File file;

  CabinetViewModel(this.bytes, this.file);

  bool isLoading = false;

  // Rename
  onRename(String name) async {
    if (file.name == name) return;

    final req = $pb.RenameFile()
      ..id = file.id
      ..name = name;

    final resp =
        await Http().post($pb.MsgNo.Msg2103, req) as $pb.RenameFileResp;
    if (resp == null) return;

    file.name = name;
    userDataService.files.firstWhere((src) => src.id == file.id)..name = name;

    notifyListeners();
  }

  // Open
  Future<OpenResult> onOpen() async {
    try {
      final directory = (await getTemporaryDirectory()).path;
      final path = "$directory/${file.nameExt}";

      await File(path).writeAsBytes(bytes, flush: true);
      return OpenFile.open(path);
    } catch (e) {
      EasyLoading.showError("打开文件失败".translate);
    }

    return null;
  }

  // Setting Share
  onSettingSharing() async {
    final req = $pb.ShareFile()
      ..id = file.id
      ..isShared = !file.isShared;

    final resp = await Http().post($pb.MsgNo.Msg2101, req) as $pb.ShareFileResp;
    if (resp == null) return;

    file.isShared = !file.isShared;
    userDataService.files.firstWhere((src) => src.id == file.id)
      ..isShared = file.isShared;

    notifyListeners();
  }

  onShare(String sharing) {
    final text = "${"复制以下共享码".translate}${"，".translate}"
        "${"打开".translate} ${"我的移动应用名称".translate} "
        "${"，".translate}${"点击文件柜的搜索图标".translate} "
        ": $sharing";

    Share.share(
      text,
      subject: "我的移动应用名称".translate,
    );
  }

  // Delete
  onDelete() async {
    final req = $pb.DeleteFile();
    req.id = file.id;

    final resp =
        await Http().post($pb.MsgNo.Msg2104, req) as $pb.DeleteFileResp;
    if (resp == null) return;

    userDataService.files.removeWhere((src) => src.id == resp.id);

    Navigator.of(Get.context).pop();
  }
}
