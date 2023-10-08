import 'dart:convert';

import 'package:bs58/bs58.dart';
import 'package:get/get.dart';

import '../index.dart';
import '../pb/psw.pb.dart' as $pb;

class Shared {
  static final Shared _instance = Shared._internal();

  factory Shared() => _instance;

  Shared._internal();

  String encode($pb.File file) {
    final userDataService = Get.find<UserDataService>();

    final name = base58.encode(utf8.encode("${file.uploadAt % 1000}"));

    final msg = $pb.SharedData()
      ..id = file.id
      ..name = file.ext.length > 0 ? "${name}.${file.ext}" : name
      ..key = userDataService.aes.key
      ..iv = userDataService.aes.iv;

    return base58.encode(msg.writeToBuffer());
  }

  $pb.SharedData decode(String code) {
    final msg = $pb.SharedData()..mergeFromBuffer(base58.decode(code));

    return msg;
  }
}
