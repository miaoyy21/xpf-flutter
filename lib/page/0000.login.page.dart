import 'package:bs58/bs58.dart';
import 'package:flutter/services.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';

import '../index.dart';
import '../pb/psw.pb.dart' as $pb;
import '0000.home.page.dart';

class LoginPage extends StatelessWidget {
  final LocalStorageService localStorageService = Get.find();
  final UserDataService userDataService = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 36,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0,
        actions: [
          GestureDetector(
            child: Center(
              child: Container(
                margin: EdgeInsets.only(right: 8),
                child: Text(
                  "语言".translate,
                  style: TextStyle(color: context.primaryColor),
                ),
              ),
            ),
            onTap: () {
              final List<String> keys = TranslationsX().keys.keys.toList();

              int index = keys.indexWhere(
                  (src) => src == localStorageService.locale.toString());

              if (index == keys.length - 1) {
                index = 0;
              } else {
                index = index + 1;
              }

              localStorageService.locale = keys[index].locale;
            },
          ),
        ],
      ),
      body: Center(
        child: ListView(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          padding: EdgeInsets.fromLTRB(8, 0, 8, 72),
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 48),
              child: Text(
                "我的移动应用名称".translate,
                textAlign: TextAlign.center,
                style: context.titleStyle.copyWith(fontSize: 30),
              ),
            ),
            if (localStorageService.privateKey.isEmpty)
              ElevatedButton(
                style: context.buttonStyle,
                child: Text(
                  "创建密钥".translate,
                  style: TextStyle(color: context.actionTextColor),
                ),
                onPressed: () => onRegister(context),
              ),
            ElevatedButton(
              style: context.buttonStyle,
              child: Text(
                "密钥登录".translate,
                style: TextStyle(color: context.actionTextColor),
              ),
              onPressed: () => onLogin(context),
            ),
            Container(
              margin: EdgeInsets.only(top: 8),
              child: Text(
                "密钥登录提示".translate,
                textAlign: TextAlign.center,
                style: context.subtitleStyle.copyWith(
                  color: context.dangerColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // 创建密钥
  onRegister(BuildContext context) async {
    final req = $pb.Register();
    final resp = await Http().post($pb.MsgNo.Msg9000, req) as $pb.RegisterResp;
    if (resp == null) return;

    debugPrint("Register Response User ID is ${resp.userId}");

    localStorageService.privateKey = base58.encode(resp.bytes);
    localStorageService.isKeyLogin = false;

    userDataService.initKeyBytes(resp.bytes);
    userDataService.initUserData(resp.userData);

    await Assets().onAssets(resp.userData.assetsVersion);
    await Cached().load(userDataService.md5Bytes);

    await Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => HomePage()),
    );
  }

  // 从剪切板读取密钥
  onLogin(BuildContext context) async {
    final _data = await Clipboard.getData(Clipboard.kTextPlain);
    if (_data == null || _data.text == null || _data.text.trim().isEmpty) {
      EasyLoading.showInfo("你没有复制密钥".translate);
    } else {
      try {
        final bytes = base58.decode(_data.text.trim());
        userDataService.initKeyBytes(bytes);
      } catch (e) {
        EasyLoading.showError("密钥校验不合法".translate);
        return;
      }

      localStorageService.privateKey = _data.text.trim();
      localStorageService.isKeyLogin = true;

      final req = $pb.GetUserData();

      final resp =
          await Http().post($pb.MsgNo.Msg9001, req) as $pb.GetUserDataResp;
      if (resp == null) return;

      userDataService.initUserData(resp.userData);

      await Assets().onAssets(resp.userData.assetsVersion);
      await Cached().load(userDataService.md5Bytes);

      EasyLoading.showSuccess("密钥登录成功".translate);
      await Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomePage()),
      );
    }
  }
}
