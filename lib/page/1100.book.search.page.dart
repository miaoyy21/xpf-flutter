import 'package:get/get.dart';
import 'package:implicitly_animated_reorderable_list/implicitly_animated_reorderable_list.dart';
import 'package:implicitly_animated_reorderable_list/transitions.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

import '../index.dart';
import '../pb/psw.pb.dart' as $pb;
import '1101.book.search.menu.dart';
import '1102.book.detail.page.dart';

class BookSearchPage extends StatelessWidget {
  final Widget body;
  final VoidCallback onUpdate;

  BookSearchPage({this.body, this.onUpdate});

  final searcher = FloatingSearchBarController();
  final LocalStorageService localStorageService = Get.find();
  final UserDataService userDataService = Get.find();

  @override
  Widget build(BuildContext context) {
    final model = context.watch<BookSearchModel>();
    debugPrint("BookSearchPage is Building");

    return FloatingSearchBar(
      controller: searcher,
      hint: "添加或查找（应用、游戏等）".translate,
      hintStyle: context.titleStyle,
      queryStyle: context.titleStyle,
      height: 48,
      transitionDuration: Duration(milliseconds: 750),
      transitionCurve: Curves.easeInOutCubic,
      physics: BouncingScrollPhysics(),
      openAxisAlignment: 0.0,
      maxWidth: MediaQuery.of(context).size.width,
      automaticallyImplyBackButton: false,
      leadingActions: [
        FloatingSearchBarAction(
          showIfOpened: false,
          showIfClosed: true,
          child: Icon(Icons.search),
        ),
        FloatingSearchBarAction(
          showIfOpened: true,
          showIfClosed: false,
          child: CircularButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              searcher.close();
              onUpdate();
            },
          ),
        ),
      ],
      actions: [FloatingSearchBarAction.searchToClear(showIfClosed: false)],
      progress: context.watch<BookSearchModel>().isLoading,
      debounceDelay: Duration(milliseconds: 500),
      onQueryChanged: context.watch<BookSearchModel>().onQueryChanged,
      transition: CircularFloatingSearchBarTransition(),
      builder: (context, _) => Material(
        elevation: 4.0,
        borderRadius: BorderRadius.circular(4),
        color: context.whiteBlackColor,
        child: model.suggestions.isEmpty
            ? _buildSearchEmptyWidget(context)
            : ImplicitlyAnimatedList<$pb.Application>(
                shrinkWrap: true,
                padding: EdgeInsets.zero,
                physics: NeverScrollableScrollPhysics(),
                items: model.suggestions,
                areItemsTheSame: (a, b) => a == b,
                itemBuilder: (context, animation, application, index) {
                  return SizeFadeTransition(
                    animation: animation,
                    child: Column(
                      children: [
                        InkWell(
                          child: ListTile(
                            leading: application.getImage(),
                            title: Text(application.appName.translate),
                          ),
                          onTap: () => onMenu(context, application),
                        ),
                        if (index + 1 != model.suggestions.length)
                          Divider(height: 0, indent: 8, endIndent: 8),
                        if (index + 1 == model.suggestions.length &&
                            model.query.isNotEmpty) ...[
                          SizedBox(height: 8),
                          Divider(height: 0, thickness: 1),
                          _buildSearchEmptyWidget(context),
                        ]
                      ],
                    ),
                  );
                },
              ),
      ),
      body: body,
      scrollPadding: EdgeInsets.symmetric(vertical: 4),
    );
  }

  void onMenu(BuildContext context, $pb.Application application) async {
    // TODO ? 用户添加自定义程序重复的问题
//    ||
//    (snap.appId.isPsw &&
//    snap.appName.values
//        .toList()
//        .isEqual(application.appName.values.toList()))

    final snapshots = userDataService.snapshots
        .where((snap) => snap.appId == application.appId)
        .toList();

    if (snapshots.isEmpty) {
      final req = $pb.CreateApplicationAccount()
        ..appId = application.appId
        ..appName.assignAll(application.appName);

      final resp = await Http().post($pb.MsgNo.Msg1302, req)
          as $pb.CreateApplicationAccountResp;
      if (resp == null) return;

      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => ChangeNotifierProvider(
            create: (_) => BookDetailModel.from(resp.account)
              ..action = BookDetailAction.create.nextAction,
            child: BookDetailPage(),
          ),
        ),
      );
    } else {
      // userDataService.needVerify() :: 为了不显示启用手势密码有返回按钮的问题
      showCupertinoModalBottomSheet(
        expand: userDataService.needVerify(),
        isDismissible: true,
        context: context,
        elevation: 4,
        backgroundColor: context.whiteBlackColor,
        builder: (context) => BookSearchMenu(application, snapshots),
      );
    }
  }

  Widget _buildSearchEmptyWidget(BuildContext context) {
    final model = context.watch<BookSearchModel>();

    return ListTile(
      title: Row(
        children: [
          model.suggestions.isEmpty
              ? Text("${"无搜索结果，添加".translate} ", style: context.subtitleStyle)
              : Text("${"以上都不是我要的结果，添加".translate} ",
                  style: context.subtitleStyle),
          Text(
            model.query,
            style: context.titleStyle.copyWith(
              color: context.primaryColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
      trailing: Icon(Icons.add_to_home_screen, color: context.primaryColor),
      onTap: () async {
        final req = $pb.CreateApplicationAccount()
          ..appId = "0"
          ..appName.assign("${localStorageService.locale}", model.query);

        final resp = await Http().post($pb.MsgNo.Msg1302, req)
            as $pb.CreateApplicationAccountResp;
        if (resp == null) return;

        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => ChangeNotifierProvider(
              create: (_) => BookDetailModel.from(resp.account)
                ..action = BookDetailAction.create.nextAction,
              child: BookDetailPage(),
            ),
          ),
        );
      },
    );
  }
}
