import '../index.dart';
import '../page/9003.obscure.generate.page.dart';
import '../pb/psw.pb.dart' as $pb;

class BookDetailObscureWidget extends StatefulWidget {
  final $pb.AccountField field;
  final VoidCallback onEdit;
  final VoidCallback onCopy;

  BookDetailObscureWidget(this.field, this.onEdit, this.onCopy);

  @override
  State<StatefulWidget> createState() => _StateBookDetailObscureWidget();
}

class _StateBookDetailObscureWidget extends State<BookDetailObscureWidget> {
  @override
  Widget build(BuildContext context) {
    debugPrint(
        "BookDetailObscureWidget is Building  ${widget.field.writeToJson()}");

    return Container(
      padding: EdgeInsets.only(left: 8, top: 4, right: 4, bottom: 4),
      child: Row(
        children: [
          Expanded(
            child: TextFormField(
              controller: TextEditingController(text: widget.field.plain),
              minLines: widget.field.minLines,
              maxLines: widget.field.maxLines,
              readOnly: context.read<BookDetailModel>().action.readOnly,
              scrollPadding: EdgeInsets.zero,
              keyboardType: TextInputType.visiblePassword,
              cursorColor: context.primaryColor,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.fromLTRB(8, 16, 4, 4),
                labelText: widget.field.name.translate,
                hintText: "${"请输入".translate}${widget.field.name.translate}",
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
                  .onFieldValueUpdate(widget.field, value),
            ),
          ),
          GestureDetector(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 8),
              alignment: Alignment.center,
              child: Icon(
                context.watch<BookDetailModel>().action.readOnly
                    ? Icons.copy
                    : Icons.vpn_key_outlined,
                size: 20,
                color: context.watch<BookDetailModel>().action.readOnly
                    ? context.subtitleStyle.color
                    : context.primaryColor,
              ),
            ),
            onTap: context.watch<BookDetailModel>().action.readOnly
                ? widget.onCopy
                : () {
                    final plain = widget.field.plain;
                    final model = ObscureGenerateModel(plain, onGenerate);
                    if (plain == null || plain.isEmpty) {
                      model.onGenerate();
                    }

                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ChangeNotifierProvider(
                        create: (_) => model,
                        child: ObscureGeneratePage(),
                      ),
                    ));
                  },
          ),
          if (!context.watch<BookDetailModel>().action.readOnly)
            GestureDetector(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 8),
                alignment: Alignment.center,
                child: Icon(
                  Icons.edit_outlined,
                  size: 20,
                  color: context.primaryColor,
                ),
              ),
              onTap: widget.onEdit,
            )
        ],
      ),
    );
  }

  void onGenerate(String value) {
    context
        .read<BookDetailModel>()
        .onFieldValueUpdate(widget.field, value, notify: true);

    Navigator.of(context).pop();
  }
}
