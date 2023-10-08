import 'dart:typed_data';

import 'package:fixnum/fixnum.dart' as $fix;
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pointycastle/digests/md5.dart';

import '../crypt/index.dart';
import '../page/9004.gesture.password.page.dart';
import '../pb/psw.pb.dart' as $pb;
import 'config.dart';
import 'extension.dart';
import 'loading.dart';

class UserDataService extends GetxService {
  int userId;

  String version;

  bool isGesture;
  List<int> gesture;
  int validityGesture;

  int maxFileSizeM;
  int imageCompressSizeM;
  int videoCompressSizeM;
  int costAccountScore;
  int costFile10MScore;
  bool allowCompression;
  int imageCompressPercentage;
  int imageCompressQuality;
  $pb.VideoQuality videoCompressQuality;

  List<$pb.ApplicationCategory> categories = [];
  List<$pb.AccountSnapshot> snapshots = [];
  List<$pb.File> files = [];
  $fix.Int64 score = 0.toInt64;
  List<String> products = [];
  String qrCode = "";

  RSA rsa;
  AES aes;
  EC ec;

  int validity = 0;
  Uint8List keyBytes;
  Uint8List md5Bytes;

  initKeyBytes(List<int> keys) {
    if (keys.length <= 0) return this;

    Uint8List bytes = Uint8List.fromList(keys);
    keyBytes = bytes;

    int readSize = 0;
    ByteData byteData = bytes.buffer.asByteData();

    // 读取1个字节长度的消息
    Uint8List Function() read = () {
      final size = byteData.getUint8(readSize);
      readSize = readSize + 1;

      Uint8List bytes = byteData.buffer.asUint8List(readSize, size);
      readSize = readSize + size;

      return bytes;
    };

    // 用户ID
    userId = byteData.getUint64(0, Endian.little);
    readSize = readSize + 8;

    debugPrint("User ID is $userId");

    // RSA 私钥
    final rsaPrivateKeySize = byteData.getUint16(readSize);
    readSize = readSize + 2;

    final rsaKey = byteData.buffer.asUint8List(readSize, rsaPrivateKeySize);
    rsa = RSA(rsaKey);
    readSize = readSize + rsaPrivateKeySize;

    final aesKey = read();
    final aesIV = read();
    final ecD = read();
    final salt = read();
    final md5 = read();

    Uint8List u8d5 = Uint8List.fromList(rsaKey + aesKey + aesIV + ecD + salt);
    final xd5 = MD5Digest().process(u8d5);
    if (!md5.isEqual(xd5)) {
      throw FlutterError("Hash of MD5 is Failure");
    }

    // AES EC
    aes = AES(aesKey, aesIV);
    ec = EC(BigInt.parse(String.fromCharCodes(ecD)));
    md5Bytes = md5;
  }

  initUserData($pb.UserData pbResp) {
    version = pbResp.version;
    isGesture = pbResp.isGesture;
    gesture = pbResp.gesture;
    validityGesture = pbResp.validityGesture;

    maxFileSizeM = pbResp.maxFileSizeM;
    imageCompressSizeM = pbResp.imageCompressSizeM;
    videoCompressSizeM = pbResp.videoCompressSizeM;
    costAccountScore = pbResp.costAccountScore;
    costFile10MScore = pbResp.costFile10MScore;
    allowCompression = pbResp.allowCompression;
    imageCompressPercentage = pbResp.imageCompressPercentage;
    imageCompressQuality = pbResp.imageCompressQuality;
    videoCompressQuality = pbResp.videoCompressQuality;

    categories = pbResp.categories;
    snapshots = pbResp.snapshots;
    files = pbResp.files;
    score = pbResp.score;
    products = pbResp.products;
    qrCode = pbResp.qrCode;

    Loading().onReset();
    if (!Config().mode.isDebug) {
      debugPrint = (String message, {int wrapWidth}) => null;
    }
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is UserDataService &&
        categories.isEqual(o.categories) &&
        snapshots.isEqual(o.snapshots);
  }

  @override
  int get hashCode => hashValues(score.hashCode, hashList(categories),
      hashList(snapshots), hashList(files));

  bool needVerify() {
    if (!isGesture || gesture.length < 1) return false;

    if (validityGesture > 0 && validity != null) {
      final now = DateTime.now().millisecondsSinceEpoch ~/ 1000;
      if (now - validity <= validityGesture) return false;
    }

    return true;
  }

  // 手势验证
  Future<bool> verify(BuildContext context, {bool required = false}) async {
    if (!isGesture || gesture.length < 1) return true;

    // 是否在手势密码有效期内
    if (!required && validityGesture > 0 && validity != null) {
      final now = DateTime.now().millisecondsSinceEpoch ~/ 1000;
      if (now - validity <= validityGesture) return true;
    }

    List<int> _password = await Navigator.of(context).push<List<int>>(
      MaterialPageRoute(
        builder: (context) => GesturePasswordPage(answer: gesture),
      ),
    );

    if (_password == null || _password.isEmpty) {
      return false;
    }

    // 记录有效时间
    if (!required && validityGesture > 0) {
      validity = DateTime.now().millisecondsSinceEpoch ~/ 1000;
    }

    return true;
  }

  double getCabinetSize() {
    int size = 0;
    files.forEach((src) {
      size += src.size;
    });

    return size / (1 << 20);
  }

  // 计算积分消耗
  CostScore getCostScore() {
    final costN = snapshots.length * costAccountScore;

    int size = 0;
    snapshots.forEach((src) {
      size += src.size;
    });

    files.forEach((src) {
      size += src.size;
    });

    final costSize = size * costFile10MScore ~/ (10 << 20);

    return CostScore(snapshots.length, costN, size / (1 << 20), costSize);
  }
}

class CostScore {
  final int n;
  final int costN;

  final double size;
  final int costSize;

  CostScore(this.n, this.costN, this.size, this.costSize);
}
