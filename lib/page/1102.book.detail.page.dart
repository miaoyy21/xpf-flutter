import 'dart:math';

import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:screenshot/screenshot.dart';

import '../index.dart';
import '../widget/book.app.name.widget.dart';
import '../widget/book.category.widget.dart';
import '../widget/book.detail.widget.dart';
import '1103.book.screenshot.page.dart';
import '9002.account.field.page.dart';

class BookDetailPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _StateBookDetailPage();
}

class _StateBookDetailPage extends State<BookDetailPage> {
  final controller = ScreenshotController();

  @override
  Widget build(BuildContext context) {
    debugPrint("BookDetailPage is Building");
    final model = context.watch<BookDetailModel>();
    model.fields.sort((x, y) => x.isImage && y.isImage
        ? x.index.compareTo(y.index)
        : (x.isImage ? 1 : 0));

    List<Widget> items = [];

    // AppName
    if (model.id.isZero || model.appId.isPsw) {
      items.add(BookAppNameWidget(model.appName));
    }

    // Category
    items.add(BookCategoryWidget(model.categoryId));

    // Divider
    items.add(Divider(thickness: 1, height: 16, indent: 4, endIndent: 4));

    // Application Fields
    items.addAll(model.fields
        .map((field) => Column(
              children: [
                if (field.isImage) Divider(height: 16, indent: 4, endIndent: 4),
                BookDetailWidget(
                    field, model.onFieldUpdate, model.onFieldDelete)
              ],
            ))
        .toList());

    return Scaffold(
      appBar: AppBar(
        title: Text(model.id > 0 ? model.appName.translate : "添加账号".translate),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(model.action.icon),
            onPressed: model.action == BookDetailAction.save
                ? context.read<BookDetailModel>().onSave
                : context.read<BookDetailModel>().toNextAction,
          )
        ],
      ),
      backgroundColor: context.primaryBlackColor,
      body: Card(
        margin: EdgeInsets.fromLTRB(8, 0, 8, 8),
        elevation: 4,
        child: ListView(
          physics: BouncingScrollPhysics(),
          padding: EdgeInsets.symmetric(vertical: 12),
          children: items,
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: context.primaryBlackColor,
        elevation: 0,
        child: ConstrainedBox(
          constraints: BoxConstraints(
            maxHeight: 36.0,
          ),
          child: ListView(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            children: [
              TextButton.icon(
                icon: Icon(
                  Icons.playlist_add,
                  color: context.actionTextColor,
                ),
                label: Text(
                  "添加属性".translate,
                  style: TextStyle(color: context.actionTextColor),
                ),
                onPressed: openFieldInsertPage,
              ),
              TextButton.icon(
                icon: Icon(
                  Icons.save_alt,
                  color: context.actionTextColor,
                ),
                label: Text(
                  "保存相册".translate,
                  style: TextStyle(color: context.actionTextColor),
                ),
                onPressed: onScreenshot,
              ),
              if (model.id > 0 && model.action == BookDetailAction.edit)
                TextButton.icon(
                  icon: Icon(
                    Icons.delete_outline,
                    color: context.actionTextColor,
                  ),
                  label: Text(
                    "删除".translate,
                    style: TextStyle(color: context.actionTextColor),
                  ),
                  onPressed: () => context.showActionDialog(
                    title: "删除".translate,
                    content: "${model.appName.translate}"
                        " ${model.fields.firstWhere((src) => src.isPrimary).name.translate}"
                        " ${model.accountId} ${"？".translate}",
                    callback: model.onDelete,
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }

  void openFieldInsertPage() {
    final model = context.read<BookDetailModel>();

    int index = model.fields.length;
    model.fields.forEach((src) => index = max(index, src.index));

    index++;
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => ChangeNotifierProvider(
        create: (_) => AccountFieldModel(index, model.onFieldInsert),
        child: AccountFieldPage(),
      ),
    ));
  }

  void onScreenshot() async {
    final model = context.read<BookDetailModel>();

    // Permission
    if (PlatformDevice().isIOS) {
      final isGranted =
          await PermissionHandler().isGranted(Permission.photosAddOnly);
      if (!isGranted) return;
    }

    controller
        .captureFromWidget(
      BookScreenshotPage(model.toSnapshot(), model.fields),
      context: context,
      delay: Duration(milliseconds: 10),
    )
        .then(
      (bytes) async {
        final result = Map<String, dynamic>.from(
          await ImageGallerySaver.saveImage(
            bytes,
            name:
                "psw_${model.id}_${DateTime.now().millisecondsSinceEpoch ~/ 1000}",
          ),
        );

        if (result.containsKey("isSuccess") && result["isSuccess"]) {
          EasyLoading.showInfo("保存成功".translate);
          return;
        }

        EasyLoading.showError("保存失败".translate);
      },
    );
  }
}
