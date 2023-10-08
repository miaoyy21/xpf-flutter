import 'package:bs58/bs58.dart';
import 'package:get/get.dart';

import '../index.dart';
import '../pb/psw.pb.dart' as $pb;
import '0000.home.page.dart';
import '0000.login.page.dart';

class AutoSwitchPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _StateAutoSwitchPage();
}

class _StateAutoSwitchPage extends State<AutoSwitchPage> {
  Future<bool> future;

  @override
  void initState() {
    super.initState();

    future = onFuture();
  }

  @override
  Widget build(BuildContext context) {
    Loading().onReset();
    debugPrint("AutoSwitchPage is Building");

    return FutureBuilder<bool>(
      key: GlobalKey(),
      future: future,
      builder: (BuildContext context, AsyncSnapshot<bool> snapshot) {
        switch (snapshot.connectionState) {
          case ConnectionState.none:
          case ConnectionState.waiting:
            return Material();
          default:
            if (snapshot.hasError) return LoginPage();
            if (snapshot.data) {
              return HomePage();
            }

            return LoginPage();
        }
      },
    );
  }

  // 从缓存文件中读取密钥
  Future<bool> onFuture() async {
    final privateKey = Get.find<LocalStorageService>().privateKey;
    final UserDataService userDataService = Get.find();

    if (privateKey == null || privateKey.trim().isEmpty) {
      return false;
    }

    try {
      final bytes = base58.decode(privateKey);
      userDataService.initKeyBytes(bytes);
    } catch (e) {
      return false;
    }

    final req = $pb.GetUserData();
    final resp =
        await Http().post($pb.MsgNo.Msg9001, req) as $pb.GetUserDataResp;
    if (resp == null) return false;

    userDataService.initUserData(resp.userData);

    await Assets().onAssets(resp.userData.assetsVersion);
    await Cached().load(userDataService.md5Bytes);

    return true;
  }
}
