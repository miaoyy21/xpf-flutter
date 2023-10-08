import 'dart:async';

import 'package:flutter/services.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

import '../index.dart';
import '../page/9004.gesture.password.page.dart';
import '0000.login.page.dart';

class MineSecurityPage extends StatelessWidget {
  final LocalStorageService localStorageService = Get.find();

  @override
  Widget build(BuildContext context) {
    final model = context.watch<MineSecurityModel>();
    debugPrint("MineSecurityPage Gesture is ${model.gesture}");
    debugPrint("Service is ${Get.find<UserDataService>().gesture}");

    return Scaffold(
      appBar: AppBar(
        title: Text("安全保护".translate),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.done),
            padding: EdgeInsets.zero,
            onPressed: model.onSave,
          ),
        ],
      ),
      backgroundColor: context.whiteBlackColor,
      body: ListView(
        children: [
          SwitchListTile(
            activeColor: context.primaryWhiteColor,
            title: Text("手势密码".translate),
            subtitle: Text((model.isGesture ? "已启用" : "已关闭").translate),
            value: model.isGesture,
            onChanged: model.onIsGestureChange,
          ),
          Divider(height: 0, indent: 8, endIndent: 8),
          ListTile(
            title: Text(
                (model.gesture.length.isZero ? "设定手势密码" : "修改手势密码").translate),
            subtitle: Text(
                model.gesture.length.isZero ? "无".translate : "已设置".translate),
            trailing: model.isGesture ? Icon(Icons.keyboard_arrow_right) : null,
            onTap: model.isGesture
                ? () async {
                    // 验证手势密码
                    List<int> newGesture = await Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => GesturePasswordPage(),
                      ),
                    );

                    if (newGesture != null && newGesture.isNotEmpty) {
                      model.onGestureChange(newGesture);
                    }
                  }
                : null,
          ),
          Divider(height: 0, indent: 8, endIndent: 8),
          ListTile(
            title: Text("手势密码有效时限".translate),
            subtitle: model.validityGesture.isZero
                ? Text("无".translate)
                : Text("${model.validityGesture ~/ 60} ${"分钟".translate}"),
            trailing: model.isGesture
                ? DropdownButton(
                    icon: Icon(
                      Icons.keyboard_arrow_right,
                      color: context.trailingColor,
                    ),
                    underline: Material(),
                    items: [0, 120, 300, 600, 900, 1800, 3600]
                        .map(
                          (value) => DropdownMenuItem(
                            value: value,
                            child: ConstrainedBox(
                              constraints: BoxConstraints(maxWidth: 96),
                              child: value.isZero
                                  ? Text("无".translate)
                                  : Text("${(value ~/ 60)} ${"分钟".translate}"),
                            ),
                          ),
                        )
                        .toList(),
                    onChanged: model.onValidityGestureChange,
                  )
                : null,
          ),
          if (!localStorageService.isKeyLogin)
            Divider(height: 0, indent: 8, endIndent: 8),
          if (!localStorageService.isKeyLogin)
            ListTile(
              title: Text("清除本地密钥".translate),
              subtitle: Text("清除本地密钥的提示信息".translate),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () => onClean(context),
            ),
        ],
      ),
    );
  }

  // Clean
  onClean(BuildContext context) async {
    int total = 9;
    Timer timer;
    StreamController<int> streamController = StreamController();

    // Create Ticker
    timer = Timer.periodic(Duration(seconds: 1), (timer) {
      total--;
      if (total < 0) {
        streamController.close();
        timer.cancel();
        return;
      }

      streamController.add(total);
    });

    // Copy Private Key
    ClipboardData _data = ClipboardData(text: localStorageService.privateKey);
    Clipboard.setData(_data);
    EasyLoading.showInfo("密钥已自动复制".translate);

    await showCupertinoModalBottomSheet(
      expand: false,
      context: context,
      elevation: 4,
      backgroundColor: context.whiteBlackColor,
      builder: (context) {
        return Material(
          color: context.whiteBlackColor,
          child: SafeArea(
            top: false,
            child: ListView(
              shrinkWrap: true,
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              children: [
                Center(
                  child: Text(
                    "清除本地密钥".translate,
                    style: context.titleStyle.copyWith(fontSize: 24),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 8),
                  child: Divider(height: 0, indent: 8, endIndent: 8),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 8),
                  child: SelectableText(localStorageService.privateKey),
                ),
                StreamBuilder<int>(
                  stream: streamController.stream,
                  initialData: total,
                  builder: (context, snapshot) {
                    return snapshot.data.isZero
                        ? ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  context.dangerColor),
                            ),
                            child: Text(
                              "清除".translate,
                              style: TextStyle(color: context.whiteColor),
                            ),
                            onPressed: () => context.showActionDialog(
                              title: "清除".translate,
                              content: "清除本地密钥提示".translate,
                              action: "清除".translate,
                              callback: () => clean(context),
                            ),
                          )
                        : Padding(
                            padding: EdgeInsets.symmetric(vertical: 4),
                            child: Center(
                              child: Text(
                                "${"密钥已自动复制".translate}${"，".translate}"
                                "${snapshot.data} ${"秒后可执行清除操作".translate}",
                                style: context.subtitleStyle.copyWith(
                                  color: context.dangerColor,
                                ),
                              ),
                            ),
                          );
                  },
                ),
              ],
            ),
          ),
        );
      },
    );

    streamController.close();
    timer.cancel();
  }

  clean(BuildContext context) async {
    localStorageService.page = 0;
    localStorageService.isKeyLogin = false;
    localStorageService.privateKey = "";

    EasyLoading.showInfo("清除密钥成功提示".translate, duration: Duration(seconds: 6));
    await Navigator.of(context).pushAndRemoveUntil(
      MaterialPageRoute(
        builder: (context) => LoginPage(),
      ),
      (route) => route == null,
    );
  }
}
