import 'dart:convert';
import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/foundation.dart';

class PlatformDevice {
  PlatformDevice._();

  static PlatformDevice _single = PlatformDevice._();

  factory PlatformDevice() => _single;

  String get os => Platform.operatingSystem;

  bool get isAndroid => Platform.isAndroid;
  bool get isIOS => Platform.isIOS;

  Future<String> getDevice() async {
    Map<String, dynamic> _dev;

    if (kIsWeb) {
      final web = (await DeviceInfoPlugin().webBrowserInfo);
      _dev = {
        'browserName': describeEnum(web.browserName),
        'appCodeName': web.appCodeName,
        'appName': web.appName,
        'appVersion': web.appVersion,
        'deviceMemory': web.deviceMemory,
        'language': web.language,
        'languages': web.languages,
        'platform': web.platform,
        'product': web.product,
        'productSub': web.productSub,
        'userAgent': web.userAgent,
        'vendor': web.vendor,
        'vendorSub': web.vendorSub,
        'hardwareConcurrency': web.hardwareConcurrency,
        'maxTouchPoints': web.maxTouchPoints,
      };
    } else if (Platform.isAndroid) {
      _dev = (await DeviceInfoPlugin().androidInfo).toMap();
    } else if (Platform.isIOS) {
      _dev = (await DeviceInfoPlugin().iosInfo).toMap();
    } else if (Platform.isWindows) {
      final windows = (await DeviceInfoPlugin().windowsInfo);
      _dev = {
        'numberOfCores': windows.numberOfCores,
        'computerName': windows.computerName,
        'systemMemoryInMegabytes': windows.systemMemoryInMegabytes,
      };
    } else if (Platform.isLinux) {
      final linux = (await DeviceInfoPlugin().linuxInfo);
      _dev = {
        'name': linux.name,
        'version': linux.version,
        'id': linux.id,
        'idLike': linux.idLike,
        'versionCodename': linux.versionCodename,
        'versionId': linux.versionId,
        'prettyName': linux.prettyName,
        'buildId': linux.buildId,
        'variant': linux.variant,
        'variantId': linux.variantId,
        'machineId': linux.machineId,
      };
    } else if (Platform.isMacOS) {
      final macOs = (await DeviceInfoPlugin().macOsInfo);
      _dev = {
        'computerName': macOs.computerName,
        'hostName': macOs.hostName,
        'arch': macOs.arch,
        'model': macOs.model,
        'kernelVersion': macOs.kernelVersion,
        'osRelease': macOs.osRelease,
        'activeCPUs': macOs.activeCPUs,
        'memorySize': macOs.memorySize,
        'cpuFrequency': macOs.cpuFrequency,
        'systemGUID': macOs.systemGUID,
      };
    }

    return jsonEncode(_dev);
  }
}
