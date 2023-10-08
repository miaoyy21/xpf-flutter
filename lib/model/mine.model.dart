import 'package:get/get.dart';

import '../index.dart';

class MineModel extends ChangeNotifier {
  final LocalStorageService localStorageService = Get.find();
  final UserDataService userDataService = Get.find();

  int hash;
  bool isDark;

  MineModel init() {
    hash = userDataService.hashCode;
    isDark = localStorageService.brightnessDark;

    return this;
  }

  void onUpdate() {
    final newHash = userDataService.hashCode;
    debugPrint("MineModel.onRefresh() UserDataService HashCode :: "
        "$hash => $newHash");
    if (hash == newHash) return;

    hash = newHash;
    notifyListeners();
  }

  onBrightnessChange(bool value) {
    isDark = value;

    localStorageService.brightnessDark = isDark;
  }
}
