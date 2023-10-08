import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../index.dart';
import '../pb/psw.pb.dart' as $pb;

class MineScorePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _StateMineScorePage();
}

class _StateMineScorePage extends State<MineScorePage> {
  final UserDataService userDataService = Get.find();
  Future<List<$pb.Score>> future;

  @override
  void initState() {
    super.initState();

    future = onFuture();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("积分明细".translate),
        centerTitle: true,
      ),
      backgroundColor: context.whiteBlackColor,
      body: FutureBuilder<List<$pb.Score>>(
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

              return buildView(snapshot.data);
          }
        },
      ),
    );
  }

  Future<List<$pb.Score>> onFuture() async {
    final req = $pb.GetScores()
      ..limit = 100
      ..offset = 0;

    final resp = await Http().post($pb.MsgNo.Msg3102, req, showStatus: false)
        as $pb.GetScoresResp;
    if (resp == null) return null;

    userDataService.score = resp.score;

    return resp.scores;
  }

  Widget buildView(List<$pb.Score> scores) {
    return ListView.separated(
      itemBuilder: (BuildContext context, int index) {
        final score = scores[index];

        return ListTile(
          title: Row(
            children: [
              Expanded(child: Text("SCORE_ACTION_${score.action}".translate)),
              Expanded(
                child: Text(
                  NumberFormat(
                          "${!score.cost.isNegative && !score.cost.isZero ? "+" : ""}#,###")
                      .format(score.cost),
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: score.cost.isNegative ? Colors.red : Colors.green,
                  ),
                ),
              ),
            ],
          ),
          subtitle: Row(
            children: [
              Expanded(child: Text(score.at.toDateTime16)),
              Expanded(
                child: Text(
                  NumberFormat("#,###").format(score.score),
                  textAlign: TextAlign.right,
                ),
              ),
            ],
          ),
        );
      },
      separatorBuilder: (BuildContext context, int index) =>
          Divider(height: 0, indent: 8, endIndent: 8),
      itemCount: scores.length,
    );
  }
}
