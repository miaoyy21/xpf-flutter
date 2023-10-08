import 'package:flutter/services.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:get/get.dart';

import '../index.dart';

class MineAgreementPrivacyPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _StateMineAgreementPrivacyPage();
}

class _StateMineAgreementPrivacyPage extends State<MineAgreementPrivacyPage> {
  final LocalStorageService localStorageService = Get.find();
  Future<String> future;

  @override
  void initState() {
    super.initState();

    final locale = localStorageService.locale.toString();
    future = rootBundle.loadString("assets/agreement_privacy_$locale.md");
  }

  @override
  Widget build(BuildContext context) {
    debugPrint("MineAgreementPrivacyPage is Building");

    return Scaffold(
      appBar: AppBar(
        title: Text("用户协议与隐私政策".translate),
        centerTitle: true,
      ),
      backgroundColor: context.whiteBlackColor,
      body: FutureBuilder(
        future: future,
        builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return Markdown(data: snapshot.data);
          } else {
            return Center(child: context.spinKit());
          }
        },
      ),
    );
  }
}
