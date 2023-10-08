import 'dart:async';
import 'dart:convert';
import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:fixnum/fixnum.dart' as $fix;
import 'package:flutter/foundation.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart' hide MultipartFile, FormData;
import 'package:protobuf/protobuf.dart';

import '../crypt/index.dart';
import '../pb/psw.pb.dart' as $pb;
import 'index.dart';

class Http {
  Http._();

  static Http _single = Http._();

  factory Http() => _single;

  final localStorageService = Get.find<LocalStorageService>();
  final userDataService = Get.find<UserDataService>();

  final Map<$pb.MsgNo, GeneratedMessage> _pbResp = {
    // Categories
    $pb.MsgNo.Msg1201: $pb.CreateApplicationCategoryResp(),
    $pb.MsgNo.Msg1202: $pb.DeleteApplicationCategoryResp(),
    $pb.MsgNo.Msg1203: $pb.SaveApplicationCategoryResp(),

    // Applications
    $pb.MsgNo.Msg1204: $pb.SaveApplicationCategoriesSeqResp(),
    $pb.MsgNo.Msg1301: $pb.GetApplicationAccountResp(),
    $pb.MsgNo.Msg1302: $pb.CreateApplicationAccountResp(),
    $pb.MsgNo.Msg1303: $pb.DeleteApplicationAccountResp(),
    $pb.MsgNo.Msg1304: $pb.SaveApplicationAccountResp(),

    // Files
    $pb.MsgNo.Msg2101: $pb.ShareFileResp(),
    $pb.MsgNo.Msg2102: $pb.UploadFileResp(),
    $pb.MsgNo.Msg2103: $pb.RenameFileResp(),
    $pb.MsgNo.Msg2104: $pb.DeleteFileResp(),

    // Others
    $pb.MsgNo.Msg3101: $pb.SaveGestureResp(),
    $pb.MsgNo.Msg3102: $pb.GetScoresResp(),
    $pb.MsgNo.Msg3103: $pb.GetOperatesResp(),

    // Trash
    $pb.MsgNo.Msg3201: $pb.GetTrashResp(),
    $pb.MsgNo.Msg3202: $pb.RestoreTrashResp(),

    // Register && Login
    $pb.MsgNo.Msg9000: $pb.RegisterResp(),
    $pb.MsgNo.Msg9001: $pb.GetUserDataResp(),
    $pb.MsgNo.Msg9002: $pb.LoadAssetsResp(),
    $pb.MsgNo.Msg9009: $pb.InAppPurchaseResp()
  };

  List<int> dealMsg(
      {int userId,
      Uint8List md5,
      EC ec,
      $pb.MsgNo msgNo,
      GeneratedMessage msg,
      String os,
      String device}) {
    BytesBuilder buf = new BytesBuilder();

    final pbMsg = msg.writeToBuffer();
    final header = ByteData(6);

    // 消息号
    header.setUint16(0, msgNo.value);

    // 消息长度
    header.setUint32(2, pbMsg.lengthInBytes);
    buf.add(header.buffer.asUint8List());

    // 消息
    buf.add(pbMsg);

    // 非注册消息
    if (msgNo != $pb.MsgNo.Msg9000) {
      buf.add((ByteData(8)..setUint64(0, userId)).buffer.asUint8List());

      // MD5
      buf.addByte(md5.lengthInBytes);
      buf.add(md5);

      if (msgNo != $pb.MsgNo.Msg2102) {
        Uint8List sig = ec.sign(pbMsg);

        buf.addByte(1);
        buf.add(sig);
      } else {
        buf.addByte(0);
      }
    }

    // OS
    if (os != null) {
      final operatingSystem = utf8.encode(os);

      buf.addByte(operatingSystem.length);
      buf.add(operatingSystem);
    } else {
      buf.add(ByteData(1).buffer.asUint8List());
    }

    // Device
    if (device != null) {
      final deviceInfo = utf8.encode(device);

      final deviceInfoSize = ByteData(2)..setUint16(0, deviceInfo.length);

      buf.add(deviceInfoSize.buffer.asUint8List());
      buf.add(deviceInfo);
    } else {
      buf.add(ByteData(2).buffer.asUint8List());
    }

    return buf.takeBytes().toList();
  }

  // Completer
  Future<List<int>> dealFn(
      {int userId,
      Uint8List md5,
      EC ec,
      $pb.MsgNo msgNo,
      GeneratedMessage msg,
      String os,
      String device}) async {
    final completer = Completer<List<int>>();

    final fn = await Future.value(() {
      final bytes = dealMsg(
          userId: userId,
          md5: md5,
          ec: ec,
          msgNo: msgNo,
          msg: msg,
          os: os,
          device: device);

      completer.complete(bytes);
    });

    await fn();

    return completer.future;
  }

  BaseOptions getOptions({int timeout}) {
    debugPrint("Base URL is ${Config().baseUrl}/psw");

    return BaseOptions(
      baseUrl: "${Config().baseUrl}/psw",
      contentType: "text/plain",
      responseType: ResponseType.bytes,
      connectTimeout: 6000,
      sendTimeout: timeout,
      receiveTimeout: timeout,
    );
  }

  // Get User's File
  Future<Uint8List> getFile($fix.Int64 id, {bool isShared = false}) async {
    if (isShared) {
      EasyLoading.show(status: "正在下载文件，请稍后...".translate);
    } else {
      EasyLoading.show(status: "正在下载加密文件，请稍后...".translate);
    }

    // Cache Exists
    if (Cached().exists(id)) {
      debugPrint("Fetch Cached File Successful ......");
      return Cached().fetch(userDataService.md5Bytes, id);
    }

    // Remote Path
    String path = "/file/${userDataService.userId}/${id}";
    if (isShared) {
      path = "/share/${id}";
    }

    // GET
    final bytes = await Dio(getOptions(timeout: 0))
        .get(path)
        .then((value) => value.data as Uint8List)
        .onError(
      (e, s) {
        if (Config().mode.isDebug) {
          EasyLoading.showError("$e :: $s", duration: Duration(seconds: 30));
        } else {
          EasyLoading.showError("连接服务器失败".translate);
        }

        return Future.value(null);
      },
    );

    // Cache File
    if (bytes != null) {
      await Cached().cache(userDataService.md5Bytes, id, bytes);
    }

    return bytes;
  }

  // POST
  Future<GeneratedMessage> post($pb.MsgNo msgNo, GeneratedMessage msg,
      {bool showStatus = true, String prefix, int timeout = 9000}) async {
    if (msgNo == $pb.MsgNo.Msg2102) {
      debugPrint("MsgNo is ${msgNo.value} ${DateTime.now().toIso8601String()}");
    } else {
      debugPrint("${DateTime.now().toIso8601String()} :: "
          "MsgNo is ${msgNo.value} , Message is ${msg.writeToJson()}");
    }

    if (showStatus) {
      final status = "${prefix != null ? prefix : ""} "
          "${"HTTP_${msgNo.value}".translate}";
      EasyLoading.show(status: status);
    }

    // 平台和设备信息
    String os, device;
    debugPrint("Before PlatformDevice ${DateTime.now().toIso8601String()}");
    if (msgNo == $pb.MsgNo.Msg9000 || msgNo == $pb.MsgNo.Msg9001) {
      os = "${PlatformDevice().os},${Config().channel}";
      device = await PlatformDevice().getDevice();
    }
    debugPrint("After PlatformDevice ${DateTime.now().toIso8601String()}");

    // 使用 Completer 进行异步
    debugPrint("Before Completer ${DateTime.now().toIso8601String()}");
    final bytes = await dealFn(
      userId: userDataService.userId,
      md5: userDataService.md5Bytes,
      ec: userDataService.ec,
      msgNo: msgNo,
      msg: msg,
      os: os,
      device: device,
    );

    debugPrint("After Completer ${DateTime.now().toIso8601String()}");

    final opts = getOptions(timeout: timeout);

    // Request
    debugPrint("Before Post ${DateTime.now().toIso8601String()}");
    return Dio(opts).post("/md", data: Stream.value(bytes)).then((value) {
      debugPrint("After Post ${DateTime.now().toIso8601String()}");

      try {
        // Response
        GeneratedMessage pbResp = _pbResp[msgNo].deepCopy();
        pbResp.mergeFromBuffer(value.data as Uint8List);

        // It is OK ?
        if (pbResp.getField(1) != 1) {
          EasyLoading.showError("RT_${pbResp.getField(1)}".translate);
          if (msgNo == $pb.MsgNo.Msg9001 && pbResp.getField(1) == 0) {
            localStorageService.privateKey = "";
          }

          return Future.value(null);
        }

        EasyLoading.dismiss();
        return Future.value(pbResp);
      } catch (e) {
        EasyLoading.showError("$e");
        return Future.value(null);
      }
    }, onError: (e, s) {
      if (Config().mode.isDebug) {
        EasyLoading.showError("$e :: $s", duration: Duration(seconds: 30));
      } else {
        EasyLoading.showError("连接服务器失败".translate);
      }

      return Future.value(null);
    });
  }
}
