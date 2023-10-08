import 'dart:typed_data';

import "package:pointycastle/export.dart";
import 'package:psw/crypt/random.secure.dart';

class EC {
  BigInt d;

  EC(this.d);

  Uint8List sign(Uint8List msg) {
    final privateKey = ECPrivateKey(d, ECDomainParameters('secp256r1'));

    final priParams = () => ParametersWithRandom(
          PrivateKeyParameter<ECPrivateKey>(privateKey),
          RandomSecure().generate(),
        );

    final Signer signer = Signer('SHA-256/ECDSA');

    signer.reset();
    signer.init(true, priParams());
    final Signature signature = signer.generateSignature(msg);

    BytesBuilder buf = new BytesBuilder();
    String sig = signature.toString();
    sig.substring(1, sig.length - 1).split(',').forEach((src) {
      final bs = src.codeUnits;

      buf.addByte(bs.length);
      buf.add(bs);
    });

    return buf.toBytes();
  }
}
