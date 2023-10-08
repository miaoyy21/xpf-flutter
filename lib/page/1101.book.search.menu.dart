import 'package:get/get.dart';

import '../index.dart';
import '../pb/psw.pb.dart' as $pb;
import '1102.book.detail.page.dart';

class BookSearchMenu extends StatefulWidget {
  final $pb.Application application;
  final List<$pb.AccountSnapshot> snapshots;

  BookSearchMenu(this.application, this.snapshots);

  @override
  State<StatefulWidget> createState() => _StateBookSearchMenu();
}

class _StateBookSearchMenu extends State<BookSearchMenu> {
  final UserDataService userDataService = Get.find();

  // Build Snapshot
  List<Widget> _buildSnapshots(BuildContext context) {
    final List<Widget> children = [];

    for (int i = 0; i < widget.snapshots.length; i++) {
      final snapshot = widget.snapshots.elementAt(i);

      children.add(
        Container(
          child: ListTile(
            contentPadding: EdgeInsets.symmetric(horizontal: 24),
            leading: Container(
              width: 24,
              height: 24,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: context.primaryColor,
                border: Border.all(width: 1, color: context.primaryColor),
              ),
              child: Text(
                "${i + 1}",
                style: TextStyle(
                  color: context.whiteBlackColor,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
            title: Text(snapshot.accountId),
            trailing: Icon(Icons.open_in_new, color: context.primaryColor),
            onTap: () => onAccountView(context, snapshot),
          ),
        ),
      );

      children.add(
        Container(
          margin: EdgeInsets.symmetric(horizontal: 24),
          child: Divider(height: 0),
        ),
      );
    }

    return children;
  }

  onAccountView(BuildContext context, $pb.AccountSnapshot snapshot) async {
    // 验证手势密码
    final success = await userDataService.verify(context);
    if (!success) {
      Navigator.of(context).pop();
      return;
    }

    final req = $pb.GetApplicationAccount()..id = snapshot.id;

    final resp = await Http().post($pb.MsgNo.Msg1301, req)
        as $pb.GetApplicationAccountResp;
    if (resp == null) return;

    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (context) => ChangeNotifierProvider(
          create: (_) => BookDetailModel.from(resp.account)
            ..action = BookDetailAction.create.nextAction,
          child: BookDetailPage(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    debugPrint("BookSearchMenu is Building");

    return Material(
      child: SafeArea(
        top: false,
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                leading: Container(
                  width: 36,
                  height: 36,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(width: 2, color: context.primaryColor),
                  ),
                  child: Icon(Icons.create, color: context.primaryColor),
                ),
                title: Text("添加账号".translate),
                onTap: () => onAccountCreate(context),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                child: Text(
                  "已拥有账号".translate,
                  style: context.subtitleStyle,
                  textAlign: TextAlign.left,
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 8),
                child: Divider(height: 0),
              ),
              ..._buildSnapshots(context),
            ],
          ),
        ),
      ),
    );
  }

  onAccountCreate(BuildContext context) async {
    final req = $pb.CreateApplicationAccount()
      ..appId = widget.application.appId
      ..appName.assignAll(widget.application.appName);

    final resp = await Http().post($pb.MsgNo.Msg1302, req)
        as $pb.CreateApplicationAccountResp;
    if (resp == null) return;

    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (context) => ChangeNotifierProvider(
          create: (_) => BookDetailModel.from(resp.account)
            ..action = BookDetailAction.create.nextAction,
          child: BookDetailPage(),
        ),
      ),
    );
  }
}
