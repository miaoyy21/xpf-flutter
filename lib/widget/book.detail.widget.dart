import 'package:flutter/services.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:protobuf/protobuf.dart';

import '../index.dart';
import '../page/9002.account.field.page.dart';
import '../pb/psw.pb.dart' as $pb;
import 'book.detail.image.widget.dart';
import 'book.detail.link.widget.dart';
import 'book.detail.obscure.widget.dart';
import 'book.detail.text.widget.dart';

class BookDetailWidget extends StatefulWidget {
  final $pb.AccountField field;
  final Function($pb.AccountField field) onFieldUpdate;
  final Function($pb.AccountField field) onFieldDelete;

  BookDetailWidget(this.field, this.onFieldUpdate, this.onFieldDelete);

  @override
  State<StatefulWidget> createState() => _StateBookDetailWidget();
}

class _StateBookDetailWidget extends State<BookDetailWidget> {
  @override
  Widget build(BuildContext context) {
    switch (widget.field.type) {
      case $pb.FieldType.FieldText:
        return BookDetailTextWidget(
          widget.field,
          () => onFieldUpdatePage(context),
          () => onFieldCopy(context, widget.field),
        );
      case $pb.FieldType.FieldObscure:
        return BookDetailObscureWidget(
          widget.field,
          () => onFieldUpdatePage(context),
          () => onFieldCopy(context, widget.field),
        );
      case $pb.FieldType.FieldLink:
        return BookDetailLinkWidget(
          widget.field,
          () => onFieldUpdatePage(context),
          () => onFieldCopy(context, widget.field),
        );
      default:
        return BookDetailImageWidget(
            widget.field, () => onFieldUpdatePage(context));
    }
  }

  @override
  void dispose() {

    super.dispose();
  }

  void onFieldUpdatePage(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => ChangeNotifierProvider(
        create: (_) => AccountFieldModel.from(widget.field.deepCopy(),
            widget.onFieldUpdate, widget.onFieldDelete),
        child: AccountFieldPage(),
      ),
    ));
  }

  void onFieldCopy(BuildContext context, $pb.AccountField field) {
    final text = field.plain;
    if (text == null || text.isEmpty) return;

    ClipboardData _data = ClipboardData(text: text);
    Clipboard.setData(_data);

    final msg = "${"复制".translate} ${field.name.translate} ${"完成".translate}";
    EasyLoading.showInfo(msg);
  }
}
