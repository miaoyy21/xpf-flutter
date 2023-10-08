import '../index.dart';
import '../pb/psw.pb.dart' as $pb;

class BookDetailTextWidget extends StatelessWidget {
  final $pb.AccountField field;
  final VoidCallback onEdit;
  final VoidCallback onCopy;

  BookDetailTextWidget(this.field, this.onEdit, this.onCopy);

  @override
  Widget build(BuildContext context) {
    debugPrint("BookDetailTextWidget is Building ${field.writeToJson()}");

    return Container(
      padding: EdgeInsets.only(left: 8, top: 4, right: 4, bottom: 4),
      child: Row(
        children: [
          Expanded(
            child: TextFormField(
              controller: TextEditingController(text: field.plain),
              minLines: field.minLines,
              maxLines: field.maxLines,
              readOnly: context.watch<BookDetailModel>().action.readOnly,
              scrollPadding: EdgeInsets.zero,
              cursorColor: context.primaryColor,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.fromLTRB(8, 16, 4, 4),
                labelText: field.name.translate,
                hintText: "${"请输入".translate}${field.name.translate}",
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
              style: context.titleStyle,
              onChanged: (value) => context
                  .read<BookDetailModel>()
                  .onFieldValueUpdate(field, value),
            ),
          ),
          GestureDetector(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 8),
              alignment: Alignment.center,
              child: Icon(
                context.watch<BookDetailModel>().action.readOnly
                    ? Icons.copy
                    : Icons.edit_outlined,
                size: 20,
                color: context.watch<BookDetailModel>().action.readOnly
                    ? context.subtitleStyle.color
                    : context.primaryColor,
              ),
            ),
            onTap: context.watch<BookDetailModel>().action.readOnly
                ? onCopy
                : onEdit,
          )
        ],
      ),
    );
  }
}
