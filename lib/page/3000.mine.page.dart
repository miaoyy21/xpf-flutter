import 'package:get/get.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

import '../index.dart';
import '0000.login.page.dart';
import '3001.mine.header.widget.dart';
import '3002.mine.theme.widget.dart';
import '3003.mine.language.widget.dart';
import '3100.mine.security.page.dart';
import '3200.mine.trash.page.dart';
import '3300.mine.score.page.dart';
import '3400.mine.purchase.page.dart';
import '3500.mine.operate.page.dart';
import '3700.mine.about.page.dart';

class MinePage extends StatelessWidget {
  final LocalStorageService localStorageService = Get.find();
  final UserDataService userDataService = Get.find();

  @override
  Widget build(BuildContext context) {
    final model = context.watch<MineModel>();

    return Scaffold(
      backgroundColor: context.whiteBlackColor,
      appBar: AppBar(
        title: MineHeaderWidget(),
        toolbarHeight: 96,
      ),
      body: ListView(
        shrinkWrap: true,
        padding: EdgeInsets.zero,
        physics: BouncingScrollPhysics(),
        children: [
          ListTile(
            leading: Icon(
              Icons.security,
              color: context.primaryColor,
            ),
            title: Text("安全保护".translate),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () async {
              final success =
                  await userDataService.verify(context, required: true);
              if (!success) return;

              await Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => ChangeNotifierProvider(
                    create: (_) => MineSecurityModel(
                      userDataService.isGesture,
                      userDataService.gesture,
                      userDataService.validityGesture,
                    ),
                    child: MineSecurityPage(),
                  ),
                ),
              );
            },
          ),
          Divider(height: 0, indent: 8, endIndent: 8),
          ListTile(
            leading: Icon(
              Icons.restore_from_trash,
              color: context.primaryColor,
            ),
            title: Text("回收站".translate),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () async {
              final success = await userDataService.verify(context);
              if (!success) return;

              await Navigator.of(context).push(
                MaterialPageRoute(builder: (_) => MineTrashPage()),
              );

              model.onUpdate();
            },
          ),
          Divider(height: 0, indent: 8, endIndent: 8),
          ListTile(
            leading: Icon(
              Icons.storage,
              color: context.primaryColor,
            ),
            title: Text("积分明细".translate),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () async {
              await Navigator.of(context)
                  .push(MaterialPageRoute(builder: (_) => MineScorePage()));

              model.onUpdate();
            },
          ),
          Divider(height: 0, indent: 8, endIndent: 8),
          ListTile(
            leading: Icon(
              Icons.shopping_cart,
              color: context.primaryColor,
            ),
            title: Text("积分充值".translate),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () async {
              await Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => MinePurchasePage(),
                ),
              );

              model.onUpdate();
            },
          ),
          Divider(height: 0, indent: 8, endIndent: 8),
          ListTile(
            leading: Icon(
              Icons.extension,
              color: context.primaryColor,
            ),
            title: Text("操作日志".translate),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_) => MineOperatePage(),
              ),
            ),
          ),
          Divider(height: 0, indent: 8, endIndent: 8),
          SwitchListTile(
            activeColor: context.primaryWhiteColor,
            title: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  margin: EdgeInsets.only(right: 32),
                  child: Icon(
                    Icons.nights_stay,
                    color: context.primaryColor,
                  ),
                ),
                Text("夜间模式".translate),
              ],
            ),
            value: model.isDark,
            onChanged: model.onBrightnessChange,
          ),
          Divider(height: 0, indent: 8, endIndent: 8),
          ListTile(
            leading: Icon(
              Icons.color_lens,
              color: context.primaryColor,
            ),
            title: Text("切换主题".translate),
            trailing: !localStorageService.brightnessDark
                ? Icon(Icons.keyboard_arrow_right)
                : null,
            onTap: !localStorageService.brightnessDark
                ? () => showCupertinoModalBottomSheet(
                      expand: true,
                      context: context,
                      elevation: 4,
                      backgroundColor: context.whiteBlackColor,
                      builder: (context) => MineThemeWidget(),
                    )
                : null,
          ),
          Divider(height: 0, indent: 8, endIndent: 8),
          ListTile(
            leading: Icon(
              Icons.language,
              color: context.primaryColor,
            ),
            title: Text("语言设置".translate),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () async {
              final locale = await showCupertinoModalBottomSheet<Locale>(
                expand: false,
                context: context,
                elevation: 4,
                backgroundColor: context.whiteBlackColor,
                builder: (context) => MineLanguageWidget(),
              );

              if (locale != null) {
                localStorageService.locale = locale;
              }
            },
          ),
          Divider(height: 0, indent: 8, endIndent: 8),
          ListTile(
            leading: Icon(
              Icons.info,
              color: context.primaryColor,
            ),
            title: Text("关于".translate),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () async {
              await Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => MineAboutPage(),
                ),
              );
            },
          ),
          if (localStorageService.isKeyLogin)
            Divider(height: 0, indent: 8, endIndent: 8),
          if (localStorageService.isKeyLogin)
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(context.dangerColor),
                ),
                child: Text(
                  "退出密钥".translate,
                  style: TextStyle(color: context.whiteColor),
                ),
                onPressed: () async {
                  localStorageService.page = 0;
                  localStorageService.isKeyLogin = false;
                  localStorageService.privateKey = "";

                  await Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(
                      builder: (context) => LoginPage(),
                    ),
                    (route) => route == null,
                  );
                },
              ),
            ),
        ],
      ),
    );
  }
}
