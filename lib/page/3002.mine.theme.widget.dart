import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../index.dart';

class MineThemeWidget extends StatelessWidget {
  final LocalStorageService localStorageService = Get.find();

  @override
  Widget build(BuildContext context) {
    return Material(
      child: CupertinoPageScaffold(
        backgroundColor: context.whiteBlackColor,
        child: SafeArea(
          bottom: false,
          child: ListView.separated(
            itemBuilder: (context, index) {
              final color = Colors.primaries[index];

              return ListTile(
                contentPadding: EdgeInsets.all(4),
                leading: Container(
                  width: 36,
                  height: 36,
                  margin: EdgeInsets.zero,
                  decoration:
                      BoxDecoration(shape: BoxShape.circle, color: color),
                ),
                title: Text(
                  (color.value & 0x00ffffff)
                      .toRadixString(16)
                      .padLeft(6, '0')
                      .toUpperCase(),
                  style: TextStyle(color: color),
                ),
                trailing: localStorageService.primarySwatch == index
                    ? Icon(Icons.check_box, color: color)
                    : null,
                onTap: () {
                  localStorageService.primarySwatch = index;
                  Navigator.pop(context);
                },
              );
            },
            separatorBuilder: (context, index) => Divider(
              height: 0,
              indent: 8,
              endIndent: 8,
            ),
            itemCount: Colors.primaries.length,
          ).marginSymmetric(vertical: 18, horizontal: 12),
        ),
      ),
    );
  }
}
