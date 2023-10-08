import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../index.dart';
import '../pb/psw.pb.dart' as $pb;

class MineTrashPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _StateMineTrashPage();
}

class _StateMineTrashPage extends State<MineTrashPage> {
  final UserDataService userDataService = Get.find();
  Future<List<$pb.Trash>> future;

  @override
  void initState() {
    super.initState();

    future = onFuture();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("回收站".translate),
        centerTitle: true,
      ),
      backgroundColor: context.whiteBlackColor,
      body: FutureBuilder<List<$pb.Trash>>(
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

  Future<List<$pb.Trash>> onFuture() async {
    final req = $pb.GetTrash();

    final resp = await Http().post($pb.MsgNo.Msg3201, req, showStatus: false)
        as $pb.GetTrashResp;
    if (resp == null) return null;

    return resp.trashes;
  }

  Widget buildView(List<$pb.Trash> trashes) {
    return ListView.separated(
      itemBuilder: (BuildContext context, int index) {
        final trash = trashes[index];

        Widget leading;
        String title, subtitle;
        int cost;

        int days =
            (DateTime.now().millisecondsSinceEpoch ~/ 1000 - trash.deleteAt) ~/
                (24 * 3600);

        if (!trash.snapshot.id.isZero) {
          leading = trash.snapshot.getImage(size: 48);
          title = trash.snapshot.appName.translate;
          subtitle = trash.snapshot.accountId;
          cost = days *
              (userDataService.costAccountScore +
                  trash.snapshot.size *
                      userDataService.costFile10MScore ~/
                      (10 << 20));
        } else {
          leading = trash.file.getImage();
          title = trash.file.nameExt;
          subtitle = trash.file.size.toFileSize;
          cost = days *
              (trash.file.size *
                  userDataService.costFile10MScore ~/
                  (10 << 20));
        }

        return ListTile(
          leading: leading,
          title: Row(
            children: [
              Expanded(
                child: Text(title, overflow: TextOverflow.ellipsis),
              ),
              Text(
                cost > 0 ? NumberFormat('#,###').format(cost) : "--",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Colors.red,
                ),
                textAlign: TextAlign.right,
              ),
            ],
          ),
          subtitle: Row(
            children: [
              Expanded(
                child: Text(subtitle, overflow: TextOverflow.ellipsis),
              ),
              Text(
                trash.deleteAt.toDateTime16,
                style: context.subtitleStyle.copyWith(fontSize: 10),
                textAlign: TextAlign.right,
              ),
            ],
          ),
          onTap: () async {
            String content = "${"是否恢复数据记录".translate}${"？".translate}";
            if (cost > 0) {
              content =
                  "${"消耗".translate} ${NumberFormat('#,###').format(cost)}${"积分".translate}"
                  "${"，".translate}${"恢复数据记录".translate}${"？".translate}";
            }

            await context.showActionDialog(
              title: "恢复".translate,
              content: content,
              action: "恢复".translate,
              callback: () => onRestore(trash),
            );
          },
        );
      },
      separatorBuilder: (BuildContext context, int index) =>
          Divider(height: 0, indent: 8, endIndent: 8),
      itemCount: trashes.length,
    );
  }

  // 撤回
  onRestore($pb.Trash trash) async {
    final req = $pb.RestoreTrash();
    req.accountId = trash.snapshot.id;
    req.fileId = trash.file.id;

    final resp =
        await Http().post($pb.MsgNo.Msg3202, req) as $pb.RestoreTrashResp;
    if (resp == null) return;

    if (!resp.snapshot.id.isZero) {
      userDataService.snapshots
          .removeWhere((src) => resp.snapshot.id == src.id);
      userDataService.snapshots.add(resp.snapshot);

      (await future).removeWhere((src) => src.snapshot.id == resp.snapshot.id);
    } else {
      userDataService.files.removeWhere((src) => resp.file.id == src.id);
      userDataService.files.add(resp.file);

      (await future).removeWhere((src) => src.file.id == resp.file.id);
    }

    userDataService.score = resp.score;

    setState(() {});
  }
}
