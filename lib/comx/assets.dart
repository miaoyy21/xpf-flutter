import 'package:get/get.dart';

import '../index.dart';
import '../pb/psw.pb.dart' as $pb;

class Assets {
  static final Assets _instance = Assets._internal();

  factory Assets() => _instance;

  Assets._internal();

  List<$pb.Application> _applications;

  List<$pb.Application> get applications => _applications;

  set applications(List<$pb.Application> applications) {
    if (_applications != applications) {
      _applications = applications;
    }
  }

// 资源加载
  Future<void> onAssets(String assetsVersion) async {
    final LocalStorageService localStorageService = Get.find();
    debugPrint("onAssets() 资源加载>>>>>>>>>>>>>$assetsVersion");

    // 如果版本相同，则从本地加载资源
    if (assetsVersion == localStorageService.assetsVersion) {
      debugPrint("从本次缓存 资源加载>>>>>>>>>>>>>");

      try {
        final loaded = $pb.LoadAssetsResp();
        loaded.mergeFromJson(localStorageService.assets);

        Assets().applications = loaded.applications;
        return;
      } catch (e) {
        // 如果出现异常，执行从远程服务器进行资源加载
        debugPrint("***********从本地加载资源出现错误$e");
      }
    }

    debugPrint("从远程服务器 资源加载>>>>>>>>>>>>>");

    final req = $pb.LoadAssets();
    final resp = await Http().post($pb.MsgNo.Msg9002, req, timeout: 0)
        as $pb.LoadAssetsResp;
    if (resp == null) return;

    Assets().applications = resp.applications;

    // 序列化存储
    localStorageService.assetsVersion = assetsVersion;
    localStorageService.assets = resp.writeToJson();
  }
}
