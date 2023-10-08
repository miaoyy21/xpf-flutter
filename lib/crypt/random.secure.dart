import 'dart:math';
import 'dart:typed_data';

import 'package:pointycastle/api.dart';
import 'package:pointycastle/random/fortuna_random.dart';

class RandomSecure {
  static final RandomSecure _instance = RandomSecure._internal();

  factory RandomSecure() => _instance;

  RandomSecure._internal();

  FortunaRandom generate() {
    final secureRandom = FortunaRandom();
    final random = Random.secure();

    const int seedLength = 32;
    const int randomMax = 255;
    final Uint8List bytes = Uint8List(seedLength);

    for (int i = 0; i < seedLength; i++) {
      bytes[i] = random.nextInt(randomMax);
    }

    final KeyParameter keyParameter = KeyParameter(bytes);
    secureRandom.seed(keyParameter);

    return secureRandom;
  }
}
