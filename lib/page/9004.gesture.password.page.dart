import 'dart:typed_data';

import 'package:gesture_password_widget/gesture_password_widget.dart';

import '../index.dart';

class GesturePasswordPage extends StatefulWidget {
  final List<int> answer;

  GesturePasswordPage({this.answer});

  @override
  State<StatefulWidget> createState() => _StateGesturePassword();
}

class _StateGesturePassword extends State<GesturePasswordPage> {
  List<int> _latest = [];

  @override
  Widget build(BuildContext context) {
    var _label = "手势密码".translate;

    if (widget.answer == null) {
      if (_latest.isEmpty) {
        _label = "请设置手势密码".translate;
      } else {
        _label = "请再次输入手势密码".translate;
      }
    } else {
      if (_latest.isNotEmpty) {
        _label = "手势密码不匹配".translate;
      }
    }

    return Scaffold(
      appBar: AppBar(elevation: 0, backgroundColor: context.primaryBlackColor),
      backgroundColor: context.primaryBlackColor,
      body: Center(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 24, bottom: 64),
              child: Text(
                _label,
                style:
                    context.titleStyle.copyWith(color: context.actionTextColor),
              ),
            ),
            Container(child: createGesturePasswordView(context)),
          ],
        ),
      ),
    );
  }

  Widget createGesturePasswordView(BuildContext context) {
    final _min = 4;
    var _answer =
        widget.answer == null && _latest.isNotEmpty ? _latest : widget.answer;

    return GesturePasswordWidget(
      lineColor: context.actionTextColor,
      errorLineColor: context.dangerColor,
      singleLineCount: 3,
      identifySize: 64.0,
      minLength: _min,
      hitShowMilliseconds: 100,
      errorItem: Container(
        width: 18.0,
        height: 18.0,
        decoration: BoxDecoration(
          color: context.dangerColor,
          borderRadius: BorderRadius.circular(50.0),
        ),
      ),
      normalItem: Container(
        width: 16.0,
        height: 16.0,
        decoration: BoxDecoration(
          color: context.actionTextColor,
          borderRadius: BorderRadius.circular(50.0),
        ),
      ),
      selectedItem: Container(
        width: 32.0,
        height: 32.0,
        decoration: BoxDecoration(
          color: context.actionTextColor,
          borderRadius: BorderRadius.circular(50.0),
        ),
      ),
      hitItem: Container(
        width: 24.0,
        height: 24.0,
        decoration: BoxDecoration(
          color: context.actionTextColor,
          borderRadius: BorderRadius.circular(50.0),
        ),
      ),
      answer: _answer,
      color: context.primaryBlackColor,
      onComplete: (data) {
        if (data.length < _min) {
          _latest = data;
          setState(() {});
          return;
        }

//        debugPrint("01 widget.answer => ${widget.answer}");
//        debugPrint("02 latest => $_latest");
//        debugPrint("03 data => $data");

        // 手势密码跟预设手势密码匹配
        if (widget.answer != null) {
          if (widget.answer.isEqual(data)) {
            Navigator.of(context).pop(Uint8List.fromList(data).toList());
            return;
          }

          _latest = data;
          setState(() {});
        } else {
          // 创建手势密码
          if (_latest.isEmpty) {
            // 注意：必须拷贝1份，否则下次执行时，会和data一致
            _latest = Uint8List.fromList(data).toList();
            setState(() {});
            return;
          } else {
            if (_answer.isEqual(data)) {
              Navigator.of(context).pop(Uint8List.fromList(data).toList());
            }
          }
        }
      },
    );
  }
}
