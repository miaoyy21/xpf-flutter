import 'package:url_launcher/url_launcher_string.dart';

import '../index.dart';
import '../pb/psw.pb.dart' as $pb;

class BookDetailLinkWidget extends StatelessWidget {
  final $pb.AccountField field;
  final VoidCallback onEdit;
  final VoidCallback onCopy;

  BookDetailLinkWidget(this.field, this.onEdit, this.onCopy);

  @override
  Widget build(BuildContext context) {
    debugPrint("BookDetailLinkWidget is Building  ${field.writeToJson()}");

    return Container(
      padding: EdgeInsets.only(left: 8, top: 4, right: 4, bottom: 4),
      child: Row(
        children: [
          Expanded(
            child: TextFormField(
              controller: TextEditingController(text: field.plain),
              minLines: field.minLines,
              maxLines: field.maxLines,
              readOnly: context.read<BookDetailModel>().action.readOnly,
              scrollPadding: EdgeInsets.zero,
              keyboardType: TextInputType.url,
              cursorColor: context.primaryColor,
              decoration: InputDecoration(
                prefix: Text("http(s)://"),
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
          context.watch<BookDetailModel>().action.readOnly
              ? GestureDetector(
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 8),
                    alignment: Alignment.center,
                    child: Icon(
                      Icons.language,
                      size: 20,
                      color: context.subtitleStyle.color,
                    ),
                  ),
                  onTap: () async {
                    String url = field.plain;
                    if (url == null || url.isEmpty) return;

                    if (!url.startsWith("http://") &&
                        !url.startsWith("https://")) {
                      if (await canLaunchUrlString("http://$url")) {
                        url = "http://$url";
                      } else {
                        url = "https://$url";
                      }
                    }

                    // If couldn't launch URL,Then copy URL
                    if (await canLaunchUrlString(url)) {
                      await launchUrlString(url);
                    } else {
                      onCopy();
                    }
                  },
                )
              : GestureDetector(
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 8),
                    alignment: Alignment.center,
                    child: Icon(
                      Icons.edit_outlined,
                      size: 20,
                      color: context.primaryColor,
                    ),
                  ),
                  onTap: onEdit,
                ),
        ],
      ),
    );
  }
}
