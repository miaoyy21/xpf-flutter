import 'package:permission_handler/permission_handler.dart';

import '../index.dart';

class PermissionHandler {
  PermissionHandler._();

  static PermissionHandler _single = PermissionHandler._();

  factory PermissionHandler() => _single;

  Future<bool> isGranted(Permission permission) async {
    final nStatus = await permission.request();

    debugPrint("Permission $permission Request Status is ${nStatus.name}");
    if (nStatus.isDenied || nStatus.isPermanentlyDenied) {
      await openAppSettings();

      return Future.value(false);
    }

    return Future.value(true);
  }
}
