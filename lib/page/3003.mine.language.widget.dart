import 'package:get/get.dart';

import '../index.dart';

class MineLanguageWidget extends StatelessWidget {
  final LocalStorageService localStorageService = Get.find();

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        top: false,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: TranslationsX()
              .keys
              .map(
                (key, value) => MapEntry(
                  key,
                  Container(
                    width: MediaQuery.of(context).size.width - 24,
                    height: 36,
                    child: GestureDetector(
                      child: Center(
                        child: Text(
                          '${value["语言"]}',
                          style: localStorageService.locale.toString() == key
                              ? context.titleStyle
                                  .copyWith(color: context.primaryWhiteColor)
                              : context.subtitleStyle,
                        ),
                      ),
                      onTap: () => Navigator.of(context).pop(key.locale),
                    ),
                  ),
                ),
              )
              .values
              .toList(),
        ).marginSymmetric(vertical: 18),
      ),
    );
  }
}
