import 'dart:math';
import 'dart:typed_data';

import 'package:flutter/foundation.dart';
import "package:pointycastle/export.dart";

// The `callback` argument must be a top-level function, not a closure or an instance or static method of a class.
Uint8List aesProcess(AESProcess p) {
  return p.ctr.process(p.bytes);
}

class AESProcess {
  final CTRStreamCipher ctr;
  final Uint8List bytes;

  AESProcess(this.ctr, this.bytes);
}

class AES {
  final ctr = CTRStreamCipher(AESFastEngine());
  final rd = Random.secure();

  Uint8List key;
  Uint8List iv;

  AES(this.key, this.iv);

  // 加密
  Future<Uint8List> encrypt(Uint8List plain) {
    ctr..init(true, ParametersWithIV(KeyParameter(key), iv));
    return compute(aesProcess, AESProcess(ctr, plain));
  }

  // 加密
  Uint8List encryptSync(Uint8List plain) {
    ctr..init(true, ParametersWithIV(KeyParameter(key), iv));
    return ctr.process(plain);
  }

  Future<Uint8List> decrypt(Uint8List cipher) {
    ctr..init(false, ParametersWithIV(KeyParameter(key), iv));
    return compute(aesProcess, AESProcess(ctr, cipher));
  }

  // 解密
  Uint8List decryptSync(Uint8List cipher) {
    ctr..init(false, ParametersWithIV(KeyParameter(key), iv));
    return ctr.process(cipher);
  }
}
