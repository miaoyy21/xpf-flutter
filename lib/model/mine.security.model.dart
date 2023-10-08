import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';

import '../index.dart';
import '../pb/psw.pb.dart' as $pb;

class MineSecurityModel extends ChangeNotifier {
  final UserDataService userDataService = Get.find();

  bool isGesture;
  List<int> gesture;
  int validityGesture;

  MineSecurityModel(this.isGesture, this.gesture, this.validityGesture);

  onSave() async {
    final req = $pb.SaveGesture()
      ..isGesture = isGesture
      ..gesture = gesture
      ..validityGesture = validityGesture;

    final resp =
        await Http().post($pb.MsgNo.Msg3101, req) as $pb.SaveGestureResp;
    if (resp == null) return;

    userDataService.isGesture = resp.isGesture;
    userDataService.gesture = resp.gesture;
    userDataService.validityGesture = resp.validityGesture;

    EasyLoading.showSuccess("保存成功".translate);
  }

  // 是否开启手势密码
  onIsGestureChange(bool value) {
    isGesture = value;
    if (!isGesture) {
      gesture = [];
      validityGesture = 0;
    }

    notifyListeners();
  }

  // 修改手势密码
  onGestureChange(List<int> value) async {
    gesture = value;
    notifyListeners();
  }

  // 手势密码有效时限
  onValidityGestureChange(int value) async {
    validityGesture = value;
    notifyListeners();
  }
}
