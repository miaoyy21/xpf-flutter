import 'package:get/get.dart';

import '../index.dart';
import '1000.book.page.dart';
import '2000.cabinet.page.dart';
import '3000.mine.page.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _StateHomePage();
}

class _StateHomePage extends State<HomePage> {
  int page = Get.find<LocalStorageService>().page;
  bool isPrivateKeyLogin = !Get.find<LocalStorageService>().isKeyLogin;

  @override
  Widget build(BuildContext context) {
    Loading().onReset();
    debugPrint("HomePage is Building");

    return isPrivateKeyLogin
        ? Scaffold(
            backgroundColor: context.primaryBlackColor,
            body: AlertDialog(
              elevation: 4,
              title: Center(
                child: Text(
                    "${"用户".translate} ${Get.find<UserDataService>().userId}"),
              ),
              contentPadding: EdgeInsets.fromLTRB(24, 12, 24, 16),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "本地密钥登录提示1".translate,
                    style: context.titleStyle,
                  ),
                  SizedBox(height: 9),
                  Text(
                    "本地密钥登录提示2".translate,
                    style: context.titleStyle,
                  ),
                  SizedBox(height: 16),
                  Text(
                    "本地密钥操作提示".translate,
                    style: context.titleStyle.copyWith(
                        fontSize: 11, color: context.primaryWhiteColor),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              actionsAlignment: MainAxisAlignment.center,
              actions: [
                ElevatedButton(
                  style: context.buttonStyle,
                  child: Text(
                    "确定".translate,
                    style: TextStyle(color: context.actionTextColor),
                  ),
                  onPressed: () {
                    isPrivateKeyLogin = false;
                    setState(() {});
                  },
                )
              ],
            ))
        : Scaffold(
            body: IndexedStack(
              index: page,
              children: <Widget>[
                ChangeNotifierProvider(
                  create: (_) => BookModel()..init(),
                  child: BookPage(),
                ),
                ChangeNotifierProvider(
                  create: (_) => CabinetModel()..init(),
                  child: CabinetPage(),
                ),
                ChangeNotifierProvider(
                  create: (_) => MineModel()..init(),
                  child: MinePage(),
                ),
              ],
            ),
            bottomNavigationBar: BottomNavigationBar(
              onTap: (index) {
                if (page == index) return;

                page = index;
                Get.find<LocalStorageService>().page = index;
                setState(() {});
              },
              type: BottomNavigationBarType.fixed,
              fixedColor: context.primaryWhiteColor,
              currentIndex: page,
              showUnselectedLabels: false,
              items: [
                BottomNavigationBarItem(
                    icon: Icon(Icons.vpn_key),
                    activeIcon: Icon(Icons.vpn_key_outlined),
                    label: "密码簿".translate),
                BottomNavigationBarItem(
                  icon: Icon(Icons.folder_special),
                  activeIcon: Icon(Icons.folder_special_outlined),
                  label: "文件柜".translate,
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  activeIcon: Icon(Icons.home_outlined),
                  label: "我的".translate,
                ),
              ],
            ),
          );
  }
}
