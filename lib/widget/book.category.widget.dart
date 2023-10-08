import 'package:fixnum/fixnum.dart' as $fix;
import 'package:get/get.dart';
import 'package:protobuf/protobuf.dart';

import '../index.dart';
import '../page/9005.book.category.page.dart';

class BookCategoryWidget extends StatefulWidget {
  final $fix.Int64 categoryId;

  BookCategoryWidget(this.categoryId);

  @override
  State<StatefulWidget> createState() => _StateBookCategoryWidget();
}

class _StateBookCategoryWidget extends State<BookCategoryWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 8, top: 4, right: 4, bottom: 4),
      child: Row(
        children: [
          Expanded(
            child: TextFormField(
              controller:
                  TextEditingController(text: widget.categoryId.categoryName),
              readOnly: true,
              focusNode: null,
              scrollPadding: EdgeInsets.zero,
              style: context.titleStyle,
              cursorColor: context.primaryColor,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.fromLTRB(8, 16, 4, 4),
                labelText: "应用分类".translate,
                hintText: "应用分类".translate,
                floatingLabelStyle: MaterialStateTextStyle.resolveWith(
                  (states) => states.contains(MaterialState.focused)
                      ? TextStyle(color: context.primaryColor)
                      : null,
                ),
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: context.primaryColor, width: 2),
                ),
              ),
              onChanged: context.read<BookDetailModel>().onAppNameUpdate,
            ),
          ),
          context.watch<BookDetailModel>().action.readOnly
              ? SizedBox(width: 36)
              : GestureDetector(
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 8),
                    alignment: Alignment.center,
                    child: Icon(
                      Icons.category,
                      size: 20,
                      color: context.primaryColor,
                    ),
                  ),
                  onTap: () {
                    final categories = Get.find<UserDataService>()
                        .categories
                        .map((src) => src.deepCopy())
                        .toList();
                    final model = BookCategoryModel(
                        categories, widget.categoryId, onChange);

                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ChangeNotifierProvider(
                        create: (_) => model,
                        child: BookCategoryPage(),
                      ),
                    ));
                  },
                ),
        ],
      ),
    );
  }

  // Category Update
  void onChange($fix.Int64 categoryId) {
    context.read<BookDetailModel>().onCategoryIdUpdate(categoryId);

    Navigator.of(context).pop();
  }
}
