import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';

import '../index.dart';

class Loading {
  Loading._();

  static Loading _single = Loading._();

  factory Loading() => _single;

  // EasyLoading
  onReset() {
    final LocalStorageService localStorageService = Get.find();

    EasyLoading.instance
      ..loadingStyle = EasyLoadingStyle.custom
      ..dismissOnTap = Config().mode.isDebug
      ..textColor = Get.context.titleStyle.color
      ..textStyle = Get.context.titleStyle.copyWith(fontSize: 10)
      ..indicatorColor = Get.context.primaryColor
      ..successWidget = Icon(
        Icons.check_circle_rounded,
        color: Get.context.primaryColor,
        size: 36,
      )
      ..infoWidget = Icon(
        Icons.info_rounded,
        color: Get.context.primaryColor,
        size: 36,
      )
      ..errorWidget = Icon(
        Icons.cancel_rounded,
        color: Get.context.dangerColor,
        size: 36,
      )
      ..maskType = EasyLoadingMaskType.clear
      ..displayDuration = Duration(milliseconds: 1500)
      ..backgroundColor = localStorageService.brightnessDark
          ? Colors.grey[800]
          : ThemeData().scaffoldBackgroundColor;
  }
}
