import '../index.dart';

class BookAppNameWidget extends StatelessWidget {
  final Map<String, String> appName;

  BookAppNameWidget(this.appName);

  @override
  Widget build(BuildContext context) {
    debugPrint("BookAppNameWidget is Building $appName");

    return Container(
      padding: EdgeInsets.only(left: 8, top: 4, right: 4, bottom: 4),
      child: Row(
        children: [
          Expanded(
            child: TextFormField(
              controller: TextEditingController(text: appName.translate),
              readOnly: context.watch<BookDetailModel>().action.readOnly,
              scrollPadding: EdgeInsets.zero,
              style: context.titleStyle,
              cursorColor: context.primaryColor,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.fromLTRB(8, 16, 4, 4),
                labelText: "应用名称".translate,
                hintText: "请输入应用名称".translate,
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
          SizedBox(width: 36),
        ],
      ),
    );
  }
}
