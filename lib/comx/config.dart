import 'dart:convert';
import 'package:flutter/services.dart';

class Config {
  static final Config _instance = Config._internal();

  factory Config() => _instance;

  Config._internal() {
    init();
  }

  String mode;
  String version;
  String host;
  String port;
  String channel;

  init() async {
    final js = await rootBundle.loadString('assets/config.json');
    final obj = json.decode(js);

    mode = obj["mode"];
    version = obj["version"];
    host = obj["host"];
    port = obj["port"];
    channel = obj["channel"];
  }

  String get baseUrl =>
      port == "443" ? 'https://${host}' : 'http://${host}:${port}';

  @override
  String toString() {
    return "{version:$version, host:$host, port:$port, channel:$channel}";
  }
}
