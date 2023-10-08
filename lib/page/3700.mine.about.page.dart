import 'package:badges/badges.dart';
import 'package:get/get.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';

import '../index.dart';
import '3600.mine.agreement.privacy.page.dart';

class MineAboutPage extends StatelessWidget {
  final UserDataService userDataService = Get.find();

  @override
  Widget build(BuildContext context) {
    final isLatest = Config().version == userDataService.version;

    return Scaffold(
      appBar: AppBar(
        title: Text("关于".translate),
        centerTitle: true,
      ),
      backgroundColor: context.whiteBlackColor,
      body: ListView(
        physics: NeverScrollableScrollPhysics(),
        children: [
          ListTile(
            contentPadding: EdgeInsets.symmetric(vertical: 16),
            title: Center(
              child: Text(
                "我的移动应用名称".translate,
                style: TextStyle(fontSize: 24),
                textAlign: TextAlign.center,
              ),
            ),
            subtitle: Center(
              child: Text(
                "${"版本号".translate} ${Config().version}",
                style: context.subtitleStyle,
              ),
            ),
          ),
          Divider(height: 0, indent: 8, endIndent: 8),
          ListTile(
            leading: Icon(
              Icons.update,
              color: context.primaryColor,
            ),
            title: Row(
              children: [
                Expanded(child: Text("检测更新".translate)),
                isLatest
                    ? Text(
                        "已是最新版".translate,
                        style: context.subtitleStyle,
                      )
                    : Badge(
                        badgeColor: context.dangerColor,
                        child: Text(
                          "${"最新版".translate} ${userDataService.version}",
                          style: context.subtitleStyle,
                        ),
                      ),
              ],
            ),
          ),
          Divider(height: 0, indent: 8, endIndent: 8),
          ListTile(
            leading: Icon(
              Icons.share,
              color: context.primaryColor,
            ),
            title: Text("分享".translate),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () => onShare(context),
          ),
          Divider(height: 0, indent: 8, endIndent: 8),
          ListTile(
            leading: Icon(
              Icons.escalator_warning,
              color: context.primaryColor,
            ),
            title: Text("用户协议与隐私政策".translate),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () => onAgreementPrivacy(context),
          ),
          Divider(height: 0, indent: 8, endIndent: 8),
          ListTile(
            leading: Icon(
              Icons.help_outline,
              color: context.primaryColor,
            ),
            title: Text("帮助手册".translate),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () => onHelp(context),
          ),
        ],
      ),
    );
  }

  // Share
  onShare(BuildContext context) {
    Share.share(
      "${"我的移动应用描述".translate} : ${userDataService.qrCode}",
      subject: "我的移动应用名称".translate,
    );
  }

  // User Agreement and Privacy Policy
  onAgreementPrivacy(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (_) => MineAgreementPrivacyPage(),
    ));
  }

  // Help
  onHelp(BuildContext context) async {
    final locale = Get.find<LocalStorageService>().locale.toString();
    final url = Uri.parse("${Config().baseUrl}/www/psw/help_${locale}.html");

    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    }
  }
}
