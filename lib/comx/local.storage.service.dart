import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocalStorageService extends GetxService {
  SharedPreferences _prefs;

  int page = 0;

  bool get isReverse => [
        Colors.lightGreen,
        Colors.orange,
        Colors.lightBlue,
        Colors.yellow,
        Colors.amber,
        Colors.lime,
        Colors.cyan
      ].indexWhere((src) => src == Colors.primaries[primarySwatch]).isNegative;

  // Init LocalStorage Service
  Future<LocalStorageService> init() async {
    _prefs = await SharedPreferences.getInstance();

    // AssetsVersion
    String assetsVersion = _prefs.getString("AssetsVersion");
    _assetsVersion = assetsVersion ?? "0.0.0";

    // Assets
    String assets = _prefs.getString("Assets");
    _assets = assets ?? "{}";

    // Private Key
    String privateKey = _prefs.getString("PrivateKey");
    _privateKey = privateKey ?? "";

    // Is Key Login
    bool isKeyLogin = _prefs.getBool("IsKeyLogin");
    _isKeyLogin = isKeyLogin ?? false;

    // Locale
    List<String> locales = _prefs.getString("Locale")?.split("_");

    Locale locale = Locale("zh", "TW");
    if (locales == null) {
      final deviceLocale = Get.deviceLocale;

      if (deviceLocale.languageCode == "zh" &&
          deviceLocale.countryCode == "CN") {
        locale = Locale("zh", "CN");
      } else if (deviceLocale.languageCode == "zh" &&
          deviceLocale.scriptCode == "Hans") {
        locale = Locale("zh", "CN");
      } else if (deviceLocale.languageCode == "en") {
        locale = Locale("en", "US");
      }
    } else {
      locale = Locale(locales[0], locales[1]);
    }

    _locale = locale;

    // Primary Swatch Default Purple
    _primarySwatch = _prefs.getInt("PrimarySwatch") ?? 2;

    // Brightness Dark
    _brightnessDark = _prefs.getBool("BrightnessDark") ?? false;

    return this;
  }

  // AssetsVersion
  String _assetsVersion;

  String get assetsVersion => _assetsVersion;

  set assetsVersion(String assetsVersion) {
    _prefs.setString("AssetsVersion", assetsVersion);

    if (_assetsVersion != assetsVersion) {
      _assetsVersion = assetsVersion;
    }
  }

  // Assets
  String _assets;

  String get assets => _assets;

  set assets(String assets) {
    _prefs.setString("Assets", assets);

    if (_assets != assets) {
      _assets = assets;
    }
  }

  // PrivateKey
  String _privateKey;

  String get privateKey => _privateKey;

  set privateKey(String privateKey) {
    _prefs.setString("PrivateKey", privateKey);

    if (_privateKey != privateKey) {
      _privateKey = privateKey;
    }
  }

  // Is Key Login
  bool _isKeyLogin;

  bool get isKeyLogin => _isKeyLogin;

  set isKeyLogin(bool isKeyLogin) {
    _prefs.setBool("IsKeyLogin", isKeyLogin);

    if (_isKeyLogin != isKeyLogin) {
      _isKeyLogin = isKeyLogin;
    }
  }

  // Locale
  Locale _locale;

  Locale get locale => _locale;

  set locale(Locale locale) {
    _prefs.setString("Locale", "${locale.languageCode}_${locale.countryCode}");

    if (_locale != locale) {
      _locale = locale;
      Get.updateLocale(locale);
    }
  }

  // Primary Swatch
  int _primarySwatch;

  int get primarySwatch => _primarySwatch;

  set primarySwatch(int primarySwatch) {
    _prefs.setInt("PrimarySwatch", primarySwatch);

    if (_primarySwatch != primarySwatch) {
      _primarySwatch = primarySwatch;

      Get.changeTheme(ThemeData(
        appBarTheme: AppBarTheme(
          color: Colors.primaries.elementAt(_primarySwatch),
        ),
        primarySwatch: Colors.primaries.elementAt(_primarySwatch),
      ));
    }
  }

  // Brightness Dark
  bool _brightnessDark;

  bool get brightnessDark => _brightnessDark;

  set brightnessDark(bool brightnessDark) {
    _prefs.setBool("BrightnessDark", brightnessDark);

    if (_brightnessDark != brightnessDark) {
      _brightnessDark = brightnessDark;

      Get.changeTheme(_brightnessDark
          ? ThemeData.dark()
          : ThemeData(
              brightness: Brightness.light,
              appBarTheme: AppBarTheme(
                color: Colors.primaries.elementAt(_primarySwatch),
              ),
              primaryColor: Colors.primaries.elementAt(_primarySwatch),
            ));
    }
  }
}
