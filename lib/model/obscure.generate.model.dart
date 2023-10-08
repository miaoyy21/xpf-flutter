import 'dart:convert';
import 'dart:math';
import 'dart:typed_data';

import '../index.dart';

class RandomCharacter {
  double sort;
  int codeUnit;

  RandomCharacter(this.sort, this.codeUnit);
}

class ObscureGenerateModel extends ChangeNotifier {
  String value;
  void Function(String) callback;

  ObscureGenerateModel(this.value, this.callback);

  bool number = true;
  bool lowercase = true;
  bool uppercase = true;
  bool special = true;

  RangeValues rangeValues = const RangeValues(9, 16);

  final _random = Random.secure();
  final _numberCharacters = "01234567890123456789"; // 10
  final _lowercaseCharacters = "abcdefghijklmnopqrstuvwxyz"; // 26
  final _uppercaseCharacters = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"; //26
  final _specialCharacters = "______!@#\$%^&*~-=[]./_+{}|:<>?"; // 30

  void onGenerate() {
    final _start = rangeValues.start.round();
    final _end = rangeValues.end.round();

    // Password Length
    final _length = _start + _random.nextDouble() * (_end - _start).truncate();

    StringBuffer _all = StringBuffer();
    List<RandomCharacter> _password = [];

    // Contain Number
    if (number) {
      Uint8List(8).forEach((_) => _all.write(_numberCharacters));
      _password.add(_getRandomCharacter(_numberCharacters));
    }

    // Contain Lowercase
    if (lowercase) {
      Uint8List(12).forEach((_) => _all.write(_lowercaseCharacters));
      _password.add(_getRandomCharacter(_lowercaseCharacters));
    }

    // Contain Uppercase
    if (uppercase) {
      Uint8List(12).forEach((_) => _all.write(_uppercaseCharacters));
      _password.add(_getRandomCharacter(_uppercaseCharacters));
    }

    // Contain Special
    if (special) {
      _all.write(_specialCharacters);
      _password.add(_getRandomCharacter(_specialCharacters));
    }

    // Others
    for (int _index = _password.length; _index <= _length; _index++) {
      _password.add(_getRandomCharacter(_all.toString()));
    }

    _password.sort((a, b) => a.sort.compareTo(b.sort));

    value = utf8.decode(_password.map((e) => e.codeUnit).toList());

    notifyListeners();
  }

  RandomCharacter _getRandomCharacter(String _characters) => RandomCharacter(
      _random.nextDouble(),
      _characters.length > 0
          ? _characters.codeUnitAt(_random.nextInt(_characters.length))
          : 90);

  void notify() {
    notifyListeners();
  }
}
