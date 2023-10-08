import 'package:intl/intl.dart';

import '../index.dart';

class ObscureGeneratePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final model = context.watch<ObscureGenerateModel>();

    final _start = model.rangeValues.start.round();
    final _end = model.rangeValues.end.round();

    debugPrint("ObscureGeneratePage is Building ...");

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("密码生成器".translate),
        actions: [
          IconButton(
            icon: Icon(Icons.done),
            padding: EdgeInsets.zero,
            onPressed: () => model.callback(model.value),
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
                  Expanded(child: Text("密码长度".translate)),
                  Expanded(
                    flex: 3,
                    child: RangeSlider(
                      values: model.rangeValues,
                      min: 6,
                      max: 24,
                      divisions: 18,
                      labels: RangeLabels("$_start", "$_end"),
                      activeColor: context.primaryColor,
                      inactiveColor: context.primaryColor.withOpacity(0.25),
                      onChanged: (RangeValues values) => model
                        ..rangeValues = values
                        ..notify(),
                    ),
                  ),
                ],
              ),
            ),
            Divider(height: 0, indent: 8, endIndent: 8),
            SwitchListTile(
              title: Text("数字".translate),
              value: model.number,
              activeColor: context.primaryWhiteColor,
              onChanged: (value) => model
                ..number = value
                ..notify(),
            ),
            Divider(height: 0, indent: 8, endIndent: 8),
            SwitchListTile(
              title: Text("小写字母".translate),
              value: model.lowercase,
              activeColor: context.primaryWhiteColor,
              onChanged: (value) => model
                ..lowercase = value
                ..notify(),
            ),
            Divider(height: 0, indent: 8, endIndent: 8),
            SwitchListTile(
              title: Text("大写字母".translate),
              value: model.uppercase,
              activeColor: context.primaryWhiteColor,
              onChanged: (value) => model
                ..uppercase = value
                ..notify(),
            ),
            Divider(height: 0, indent: 8, endIndent: 8),
            SwitchListTile(
              title: Text("特殊字符".translate),
              value: model.special,
              activeColor: context.primaryWhiteColor,
              onChanged: (value) => model
                ..special = value
                ..notify(),
            ),
            Divider(height: 0, indent: 8, endIndent: 8),
            Container(
              margin: EdgeInsets.only(top: 24, bottom: 4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "(${NumberFormat("00").format(model.value.length)})  ",
                    style: context.subtitleStyle,
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    model.value,
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 12),
              child: ElevatedButton.icon(
                style: context.buttonStyle,
                icon: Icon(
                  Icons.vpn_key_outlined,
                  color: context.actionTextColor,
                ),
                label: Text(
                  "生成密码".translate,
                  style: TextStyle(color: context.actionTextColor),
                ),
                onPressed: model.onGenerate,
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
}
