import 'package:barcode_widget/barcode_widget.dart';
import 'package:get/get.dart';

import '../index.dart';
import '../pb/psw.pb.dart' as $pb;

class BookScreenshotPage extends StatelessWidget {
  final UserDataService userDataService = Get.find();
  final $pb.AccountSnapshot snapshot;
  final List<$pb.AccountField> fields;

  BookScreenshotPage(this.snapshot, this.fields);

  final double _size = 12;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Get.context.whiteBlackColor,
      body: Stack(
        children: [
          ListView(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: _size + 8),
                child: Row(
                  children: [
                    snapshot.getImage(size: 48),
                    Expanded(
                      child: Text(
                        snapshot.appName.translate,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 24,
                          decoration: TextDecoration.none,
                        ),
                        strutStyle: StrutStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    BarcodeWidget(
                      barcode: Barcode.qrCode(
                        errorCorrectLevel: BarcodeQRCorrectionLevel.high,
                      ),
                      data: userDataService.qrCode,
                      color: Get.context.primaryColor,
                      width: 72,
                      height: 72,
                    ),
                  ],
                ),
              ),
              Divider(
                thickness: 1,
                color: Get.context.primaryColor,
              ),
              ...fields
                  .where((src) => !src.isImage)
                  .map((field) => Column(
                        children: [
                          Container(
                            padding:
                                EdgeInsets.symmetric(horizontal: _size + 8),
                            constraints: BoxConstraints(minHeight: 36),
                            child: Container(
                              padding: EdgeInsets.all(4),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Text(field.name.translate,
                                        style: Get.context.titleStyle),
                                  ),
                                  Expanded(
                                    flex: 3,
                                    child: Text(
                                      field.plain,
                                      style: Get.context.subtitleStyle,
                                      overflow: TextOverflow.visible,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Divider(
                              height: 1,
                              indent: _size + 8,
                              endIndent: _size + 8),
                        ],
                      ))
                  .toList(),
            ],
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              padding: EdgeInsets.fromLTRB(4, 8, 4, 0),
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(color: Get.context.primaryColor),
                ),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      "我的移动应用名称".translate,
                      style: Get.context.subtitleStyle,
                    ),
                  ),
                  Text(
                    "${(DateTime.now().millisecondsSinceEpoch ~/ 1000).toDateTime16}",
                    style: Get.context.subtitleStyle,
                  )
                ],
              ),
            ),
          ),
        ],
      ).marginAll(36),
    );
  }
}
