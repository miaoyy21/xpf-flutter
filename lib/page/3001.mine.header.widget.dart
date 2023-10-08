import 'package:bs58/bs58.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../index.dart';

class MineHeaderWidget extends StatelessWidget {
  final UserDataService userDataService = Get.find();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: context.primaryBlackColor,
      ),
      child: buildHeader(context),
    );
  }

  // Header
  Widget buildHeader(BuildContext context) {
    final cost = userDataService.getCostScore();

    var ctext = "${NumberFormat('#,###').format(cost.costN + cost.costSize)}";
    if (cost.n > 0 || cost.size > 0) {
      List<String> clist = [];

      if (cost.costN > 0) {
        final text = "${cost.n}${"条".translate} ≈ "
            "${NumberFormat('#,###').format(cost.costN)} ";
        clist.add(text);
      }

      if (cost.costSize > 0) {
        final text = "${cost.size.toStringAsFixed(2)}M ≈ "
            "${NumberFormat('#,###').format(cost.costSize)}";
        clist.add(text);
      }

      if (clist.isNotEmpty) {
        ctext = ctext + "  [" + clist.join(",") + "]";
      }
    }

    return Row(
      children: [
        Container(
          width: 64,
          height: 64,
          child: Icon(
            Icons.account_circle,
            color: context.actionTextColor,
            size: 64,
          ),
        ),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buildItem(
                "密钥序号",
                "${userDataService.userId}",
                selectable: true,
              ),
              buildItem(
                "密钥MD5",
                base58.encode(userDataService.md5Bytes),
                selectable: true,
              ),
              buildItem(
                "积分消耗",
                ctext,
              ),
              buildItem(
                "积分总额",
                "${NumberFormat('#,###').format(userDataService.score)}",
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget buildItem(String label, String value, {bool selectable = false}) {
    TextStyle style =
        Get.context.subtitleStyle.copyWith(color: Get.context.actionTextColor);

    return Container(
      padding: EdgeInsets.symmetric(vertical: 1),
      child: Row(
        children: [
          Expanded(flex: 2, child: Text(label.translate, style: style)),
          Expanded(
            flex: 5,
            child: selectable
                ? SelectableText(value, style: style)
                : Text(value, style: style),
          ),
        ],
      ),
    );
  }
}
