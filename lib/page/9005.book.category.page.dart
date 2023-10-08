import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:reorderables/reorderables.dart';

import '../index.dart';

class BookCategoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final model = context.watch<BookCategoryModel>();
    debugPrint("BookCategoryPage is Building ...");

    return Scaffold(
      appBar: AppBar(
        title: Text("编辑分类".translate),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            padding: EdgeInsets.zero,
            onPressed: () => context.showTextFieldDialog(
              title: "添加".translate,
              hintText: "请输入分类名称".translate,
              callback: (text) {
                final model = context.read<BookCategoryModel>();
                if (text.isEmpty) return false;

                model.onCategoryInsert(text);
                return true;
              },
            ),
          ),
          IconButton(
            icon: Icon(Icons.done),
            padding: EdgeInsets.zero,
            onPressed: model.onCategorySelect,
          ),
        ],
      ),
      backgroundColor: context.whiteBlackColor,
      body: ReorderableColumn(
        draggingWidgetOpacity: 0.5,
        crossAxisAlignment: CrossAxisAlignment.start,
        padding: EdgeInsets.symmetric(vertical: 12),
        children: model.categories
            .map(
              (category) => Slidable(
                key: ValueKey(category.id),
                actionPane: SlidableDrawerActionPane(),
                actionExtentRatio: 0.25,
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 8),
                  decoration: ShapeDecoration(
                    shape: Border(
                      bottom: BorderSide(color: context.greyColor),
                    ),
                  ),
                  child: CheckboxListTile(
                    tileColor: context.whiteBlackColor,
                    activeColor: context.primaryColor,
                    checkColor: context.whiteBlackColor,
                    value: category.id == model.categoryId,
                    title: Text(category.name.translate),
                    onChanged: (checked) =>
                        model.onCategoryChecked(category.id),
                  ),
                ),
                secondaryActions: <Widget>[
                  IconSlideAction(
                    caption: '编辑'.translate,
                    color: context.slightColor,
                    icon: Icons.edit_outlined,
                    closeOnTap: model.closeOnTap,
                    onTap: () => context.showTextFieldDialog(
                      text: category.name.translate,
                      title: '编辑'.translate,
                      hintText: "请输入分类名称".translate,
                      callback: (text) {
                        final model = context.read<BookCategoryModel>();
                        if (text.isEmpty) return false;

                        model.closeOnTap = true;
                        model.onCategoryUpdate(category.id, text);

                        model.closeOnTap = false;
                        return true;
                      },
                    ),
                  ),
                  IconSlideAction(
                    caption: '删除'.translate,
                    color: context.dangerColor,
                    icon: Icons.delete,
                    closeOnTap: model.closeOnTap,
                    onTap: () => context.showActionDialog(
                      title: "删除".translate,
                      content: "${"删除".translate}${"应用分类".translate}"
                          " ${category.name.translate} ${"？".translate}",
                      callback: () {
                        model.closeOnTap = true;
                        model.onCategoryDelete(category.id);

                        model.closeOnTap = false;
                      },
                    ),
                  ),
                ],
              ),
            )
            .toList(),
        onReorder: model.onDragReorder,
      ),
    );
  }
}
