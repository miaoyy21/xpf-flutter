import '../index.dart';
import '../pb/psw.pb.dart' as $pb;

class AccountFieldPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final model = context.watch<AccountFieldModel>();

    final _start = model.rangeValues.start.round();
    final _end = model.rangeValues.end.round();

    List<$pb.FieldType> values = $pb.FieldType.values
        .where((src) =>
            model.bytes.length.isZero ||
            model.type == $pb.FieldType.FieldImage ||
            (model.type != $pb.FieldType.FieldImage &&
                src != $pb.FieldType.FieldImage))
        .toList();

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("属性设置".translate),
        actions: [
          IconButton(
            icon: Icon(Icons.done),
            onPressed: () {
              model.onEdit(model.toAccountField());
              Navigator.of(context).pop();
            },
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
          children: [
            ListTile(
              title: Row(
                children: [
                  Expanded(
                    child: Text(
                      "属性名称".translate,
                      textAlign: TextAlign.center,
                      style: context.subtitleStyle,
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: TextFormField(
                      controller:
                          TextEditingController(text: model.name.translate),
                      autofocus: false,
                      style: context.titleStyle,
                      decoration: InputDecoration(
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                        border: UnderlineInputBorder(),
                      ),
                      onChanged: model.onNameUpdate,
                    ),
                  ),
                ],
              ),
            ),
            Divider(height: 0, indent: 8, endIndent: 8),
            ListTile(
              title: Row(
                children: [
                  Expanded(
                    child: Text(
                      "编辑控件".translate,
                      textAlign: TextAlign.center,
                      style: context.subtitleStyle,
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Row(
                      children: [
                        Expanded(child: Material()),
                        DropdownButton<$pb.FieldType>(
                          value: model.type,
                          items: values
                              .map((value) => _buildMenuItem(context, value))
                              .toList(),
                          onChanged:
                              !model.isPrimary ? model.onFieldTypeUpdate : null,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            if (model.type != $pb.FieldType.FieldImage)
              Divider(height: 0, indent: 8, endIndent: 8),
            if (model.type != $pb.FieldType.FieldImage)
              ListTile(
                title: Row(
                  children: [
                    Expanded(
                      child: Text(
                        "行数范围".translate,
                        textAlign: TextAlign.center,
                        style: context.subtitleStyle,
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: RangeSlider(
                        values: model.rangeValues,
                        min: 1,
                        max: 9,
                        divisions: 8,
                        labels: RangeLabels("$_start", "$_end"),
                        activeColor: context.primaryColor,
                        inactiveColor: context.primaryColor.withOpacity(0.25),
                        onChanged: !model.isPrimary
                            ? (RangeValues values) =>
                                model.onMinMaxLinesUpdate(values)
                            : null,
                      ),
                    ),
                  ],
                ),
              ),
            if (model.type != $pb.FieldType.FieldImage)
              Divider(height: 0, indent: 8, endIndent: 8),
            if (model.onDelete != null && !model.isPrimary)
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 24),
                child: ElevatedButton.icon(
                  icon: Icon(
                    Icons.remove_circle_outline,
                    color: context.whiteColor,
                  ),
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(context.dangerColor),
                    elevation: MaterialStateProperty.all(2),
                  ),
                  label: Text(
                    "删除".translate,
                    style: TextStyle(color: context.whiteColor),
                  ),
                  onPressed: () {
                    model.onDelete(model.toAccountField());
                    Navigator.of(context).pop();
                  },
                ),
              ),
          ],
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            maxHeight: 36.0,
          ),
        ),
      ),
    );
  }

  DropdownMenuItem<$pb.FieldType> _buildMenuItem(
      BuildContext context, $pb.FieldType value) {
    final model = context.read<AccountFieldModel>();

    final style = !model.isPrimary ? context.titleStyle : context.subtitleStyle;

    return DropdownMenuItem(
      value: value,
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: 128),
        child: Row(
          children: [
            Expanded(child: Icon(value.icon, color: style.color)),
            Expanded(
              child: Text(
                value.translate,
                textAlign: TextAlign.center,
                style: style,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
