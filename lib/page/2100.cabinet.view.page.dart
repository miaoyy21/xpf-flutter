import 'package:get/get.dart';

import '../index.dart';

class CabinetViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final model = context.watch<CabinetViewModel>();
    debugPrint("CabinetViewPage is Building");

    final sharing = Shared().encode(model.file);

    return Scaffold(
      appBar: AppBar(
        title: Text("文件详情".translate),
        elevation: 0,
        centerTitle: true,
      ),
      backgroundColor: context.whiteBlackColor,
      body: ListView(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.only(top: 12),
        children: [
          buildFileDetail(
            "文件ID",
            "${model.file.id}",
            first: true,
          ),
          buildFileDetail("文件名", model.file.name),
          buildFileDetail("文件类型", model.file.mime),
          buildFileDetail("存储空间", model.file.size.toFileSize),
          buildFileDetail("上传时间", model.file.uploadAt.toDateTime19),
          SizedBox(height: 12),
          buildRenameWidget(context),
          buildOpenWidget(context),
          buildDeleteWidget(context),
          SizedBox(height: 24),
          buildSharingWidget(context),
          if (model.file.isShared)
            ListTile(
              leading: Text("共享码".translate, textAlign: TextAlign.center),
              subtitle: SelectableText(sharing),
              trailing: IconButton(
                splashRadius: 24,
                icon: Icon(
                  Icons.share,
                  color: context.primaryWhiteColor,
                ),
                onPressed: () => model.onShare(sharing),
              ),
            )
        ],
      ),
    );
  }

  Widget buildFileDetail(String head, String detail, {bool first = false}) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8),
      padding: EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        border: Border(
          top: first
              ? BorderSide(color: Get.context.greyColor)
              : BorderSide.none,
          bottom: BorderSide(color: Get.context.greyColor),
        ),
      ),
      child: Row(
        children: [
          SizedBox(
            width: 96,
            child: Text(
              head.translate,
              textAlign: TextAlign.right,
              style: Get.context.titleStyle,
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.only(left: 8),
              child: SelectableText(
                detail,
                style: Get.context.subtitleStyle,
              ),
            ),
          )
        ],
      ),
    );
  }

  // 重命名
  Widget buildRenameWidget(BuildContext context) {
    final model = context.watch<CabinetViewModel>();

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12),
      child: ElevatedButton.icon(
        icon: Icon(Icons.edit, color: context.actionTextColor),
        label: Text(
          "重命名".translate,
          style: TextStyle(color: context.actionTextColor),
        ),
        style: context.buttonStyle,
        onPressed: () async {
          await context.showTextFieldDialog(
            text: model.file.name,
            title: "重命名".translate,
            hintText: "请输入文件名".translate,
            callback: (name) {
              if (name.isEmpty) return false;

              model.onRename(name);
              return true;
            },
          );
        },
      ),
    );
  }

  // 打开
  Widget buildOpenWidget(BuildContext context) {
    final model = context.watch<CabinetViewModel>();

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12),
      child: ElevatedButton.icon(
        icon: Icon(Icons.open_in_browser, color: context.actionTextColor),
        label: Text(
          "打开".translate,
          style: TextStyle(color: context.actionTextColor),
        ),
        style: context.buttonStyle,
        onPressed: model.onOpen,
      ),
    );
  }

  // 共享
  Widget buildSharingWidget(BuildContext context) {
    final model = context.watch<CabinetViewModel>();

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12),
      child: ElevatedButton.icon(
        icon: Icon(
          model.file.isShared ? Icons.search_off : Icons.search,
          color: context.actionTextColor,
        ),
        label: Text(
          (model.file.isShared ? "关闭共享" : "开启共享").translate,
          style: TextStyle(color: context.actionTextColor),
        ),
        style: context.buttonStyle,
        onPressed: model.onSettingSharing,
      ),
    );
  }

  // 删除
  Widget buildDeleteWidget(BuildContext context) {
    final model = context.watch<CabinetViewModel>();

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12),
      child: ElevatedButton.icon(
        icon: Icon(
          Icons.remove_circle_outline,
          color: context.whiteColor,
        ),
        label: Text(
          "删除".translate,
          style: TextStyle(color: context.whiteColor),
        ),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(context.dangerColor),
        ),
        onPressed: () async {
          await context.showActionDialog(
            title: "删除".translate,
            content: "${"是否删除这个文件".translate} ${"？".translate}",
            callback: model.onDelete,
          );
        },
      ),
    );
  }
}
