import 'package:fixnum/fixnum.dart' as $fix;
import 'package:get/get.dart';

import '../index.dart';
import '../pb/psw.pb.dart' as $pb;
import '1102.book.detail.page.dart';

class BookBodyPage extends StatelessWidget {
  final UserDataService userDataService = Get.find();

  @override
  Widget build(BuildContext context) {
    debugPrint("BookBodyPage is Building");

    List<CategorySnapshots> categories = [];
    userDataService.categories.forEach((category) {
      final snapshots = userDataService.snapshots
          .where((src) => src.categoryId == category.id)
          .toList();

      if (snapshots.length > 0) {
        categories.add(CategorySnapshots(
          category.id,
          category.name,
          snapshots,
        ));
      }
    });

    // Sort
    categories
        .sort((x, y) => (x.id.isZero ? 1 : 0).compareTo(y.id.isZero ? 1 : 0));

    return categories.length.isZero
        ? Scaffold(
            appBar: AppBar(toolbarHeight: 72, elevation: 0),
            backgroundColor: context.whiteBlackColor,
            body: Center(
              child: Icon(Icons.search, size: 64, color: context.greyColor),
            ),
          )
        : categories.length == 1
            ? Scaffold(
                appBar: AppBar(toolbarHeight: 72, elevation: 0),
                backgroundColor: context.whiteBlackColor,
                body: buildView(context, categories.first.snapshots),
              )
            : DefaultTabController(
                length: categories.length,
                child: Scaffold(
                  appBar: AppBar(
                    elevation: 0,
                    bottom: TabBar(
                      isScrollable: true,
                      tabs: categories
                          .map(
                            (src) => Tab(text: src.name.translate),
                          )
                          .toList(),
                      indicator: UnderlineTabIndicator(
                        borderSide: BorderSide(
                          width: 2,
                          color: context.whiteColor,
                        ),
                      ),
                    ),
                  ),
                  backgroundColor: context.whiteBlackColor,
                  body: TabBarView(
                    children: categories
                        .map((category) =>
                            buildView(context, category.snapshots))
                        .toList(),
                  ),
                ),
              );
  }

  Widget buildView(BuildContext context, List<$pb.AccountSnapshot> snapshots) {
    return ListView.separated(
        itemBuilder: (context, index) => ListTile(
              leading: snapshots[index].getImage(size: 48),
              title: Text(snapshots[index].appName.translate),
              subtitle: Row(
                children: [
                  Expanded(
                    child: Text(
                      snapshots[index].accountId,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Text(
                    snapshots[index].createAt.toDateTime16,
                    style: context.subtitleStyle.copyWith(fontSize: 10),
                    textAlign: TextAlign.right,
                  ),
                ],
              ),
              trailing: Icon(Icons.chevron_right),
              onTap: () => onAccountView(context, snapshots[index]),
            ),
        separatorBuilder: (context, index) =>
            Divider(height: 0, indent: 8, endIndent: 8),
        itemCount: snapshots.length);
  }

  // 查看账号详情
  onAccountView(BuildContext context, $pb.AccountSnapshot snapshot) async {
    final success = await userDataService.verify(context);
    if (!success) return;

    final model = context.read<BookModel>();
    final req = $pb.GetApplicationAccount()..id = snapshot.id;

    final resp = await Http().post($pb.MsgNo.Msg1301, req)
        as $pb.GetApplicationAccountResp;
    if (resp == null) return;

    await Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => ChangeNotifierProvider(
          create: (_) => BookDetailModel.from(resp.account)
            ..action = BookDetailAction.view.nextAction,
          child: BookDetailPage(),
        ),
      ),
    );

    model.onUpdate();
  }
}

class CategorySnapshots {
  final $fix.Int64 id;
  final Map<String, String> name;
  final List<$pb.AccountSnapshot> snapshots;

  CategorySnapshots(this.id, this.name, this.snapshots);
}
