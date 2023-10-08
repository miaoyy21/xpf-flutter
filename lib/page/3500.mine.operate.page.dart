import 'package:get/get.dart';
import 'package:timelines/timelines.dart';

import '../index.dart';
import '../pb/psw.pb.dart' as $pb;

class MineOperatePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _StateMineOperatePage();
}

class _StateMineOperatePage extends State<MineOperatePage> {
  final UserDataService userDataService = Get.find();
  Future<List<$pb.Operate>> future;

  @override
  void initState() {
    super.initState();

    future = onFuture();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("操作日志".translate),
        centerTitle: true,
      ),
      backgroundColor: context.whiteBlackColor,
      body: FutureBuilder<List<$pb.Operate>>(
        future: future,
        builder: (context, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.none:
            case ConnectionState.waiting:
              return Center(child: context.spinKit());
            default:
              if (!snapshot.hasData || snapshot.data.length.isZero)
                return Center(
                  child: Icon(Icons.search, size: 64, color: context.greyColor),
                );

              return Timeline.tileBuilder(
                theme: TimelineThemeData(
                  indicatorTheme: IndicatorThemeData(size: 30),
                ),
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                builder: TimelineTileBuilder.connected(
                  contentsAlign: ContentsAlign.basic,
                  oppositeContentsBuilder: (_, index) =>
                      buildContents(context, snapshot.data, index, 0),
                  contentsBuilder: (_, index) =>
                      buildContents(context, snapshot.data, index, 1),
                  connectorBuilder: (_, index, __) => DashedLineConnector(
                    color: context.trailingColor,
                    dash: 2,
                    gap: 2,
                    thickness: 1,
                  ),
                  indicatorBuilder: (_, index) {
                    final operate = snapshot.data[index];
                    return DotIndicator(
                      color: operate.rt == 1
                          ? context.primaryBlackColor
                          : context.dangerColor,
                      child: Icon(
                        operate.msgNo.icon,
                        color: context.whiteColor,
                        size: 18.0,
                      ),
                    );
                  },
                  itemCount: snapshot.data.length,
                ),
              );
          }
        },
      ),
    );
  }

  Future<List<$pb.Operate>> onFuture() async {
    final req = $pb.GetOperates()
      ..limit = 100
      ..offset = 0;

    final resp = await Http().post($pb.MsgNo.Msg3103, req, showStatus: false)
        as $pb.GetOperatesResp;
    if (resp == null) return null;

    return resp.operates;
  }

  Widget buildContents(
      BuildContext context, List<$pb.Operate> operates, int index, int mod) {
    final style12 = context.titleStyle.copyWith(fontSize: 12);
    final style10 = context.subtitleStyle.copyWith(fontSize: 10);

    final operate = operates[index];
    return index % 2 == mod
        ? Container(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment:
                  mod == 1 ? CrossAxisAlignment.start : CrossAxisAlignment.end,
              children: [
                Text(
                  "MSG_${operate.msgNo.value}".translate,
                  style: style12,
                  strutStyle: StrutStyle(fontSize: 12),
                ),
                if (operate.msg != null && operate.msg.length > 0)
                  Text(
                    operate.msg.join(" "),
                    style: style10,
                    overflow: TextOverflow.ellipsis,
                  ),
                if (operate.rt != 1)
                  Text(
                    "RT_${operate.rt}".translate,
                    style: operate.rt == 1
                        ? style10
                        : style10.copyWith(color: context.dangerColor),
                    overflow: TextOverflow.ellipsis,
                  ),
                Text("${operate.at.toDateTime11} [${operate.ip}]",
                    style: style10)
              ],
            ),
          )
        : Material();
  }
}
