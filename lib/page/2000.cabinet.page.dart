import 'package:fab_circular_menu/fab_circular_menu.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:protobuf/protobuf.dart';

import '../index.dart';
import '../pb/psw.pb.dart' as $pb;
import '2100.cabinet.view.page.dart';

class CabinetPage extends StatelessWidget {
  final UserDataService userDataService = Get.find();
  final GlobalKey<FabCircularMenuState> fabKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    final model = context.watch<CabinetModel>();
    final buttonColor = Theme.of(context).brightness == Brightness.dark
        ? Colors.grey[600]
        : context.primaryColor;
    debugPrint("CabinetPage is Building");

    return Scaffold(
      appBar: userDataService.files.length.isZero
          ? AppBar(
              title: Text("文件柜".translate),
              centerTitle: true,
              actions: [
                IconButton(
                  icon: Icon(Icons.search),
                  onPressed: model.onOpenShare,
                )
              ],
            )
          : AppBar(
              title: Text(
                "${userDataService.files.length}${"个文件".translate}${"，".translate}"
                "${"使用空间".translate}${userDataService.getCabinetSize().toStringAsFixed(2)}M",
                style: context.titleStyle.copyWith(
                  color: context.actionTextColor,
                ),
              ),
              centerTitle: true,
              actions: [
                IconButton(
                  icon: Icon(Icons.search),
                  onPressed: model.onOpenShare,
                )
              ],
            ),
      backgroundColor: context.whiteBlackColor,
      body: userDataService.files.length.isZero
          ? Center(
              child: Icon(Icons.search, size: 64, color: context.greyColor),
            )
          : buildView(context),
      floatingActionButton: Builder(
        builder: (context) => FabCircularMenu(
          key: fabKey,
          alignment: Alignment.centerRight,
          ringColor: Colors.transparent,
          ringDiameter: 240.0,
          fabElevation: 4,
          fabIconBorder: CircleBorder(),
          fabColor: buttonColor,
          fabOpenIcon: Icon(
            Icons.cloud_upload,
            color: context.actionTextColor,
          ),
          fabCloseIcon: Icon(Icons.close, color: context.actionTextColor),
          fabMargin: EdgeInsets.only(right: 4),
          animationDuration: const Duration(milliseconds: 400),
          animationCurve: Curves.easeInOutCirc,
          children: <Widget>[
            FloatingActionButton(
              child: Icon(
                Icons.library_books,
                color: context.actionTextColor,
              ),
              backgroundColor: buttonColor,
              onPressed: () => model.onFilePicker(FileType.any),
            ),
            FloatingActionButton(
              child: Icon(
                Icons.video_library,
                color: context.actionTextColor,
              ),
              backgroundColor: buttonColor,
              onPressed: () => model.onFilePicker(FileType.video),
            ),
            FloatingActionButton(
              child: Icon(
                Icons.photo_library,
                color: context.actionTextColor,
              ),
              backgroundColor: buttonColor,
              onPressed: () => model.onFilePicker(FileType.image),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildView(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) {
        final file = userDataService.files[index];

        return ListTile(
            leading: file.getImage(),
            title: Text(file.nameExt, overflow: TextOverflow.ellipsis),
            subtitle: Row(
              children: [
                Expanded(child: Text(file.size.toFileSize)),
                Padding(
                  padding: EdgeInsets.only(right: 8),
                  child: file.isShared
                      ? Icon(
                          Icons.settings_ethernet,
                          size: context.subtitleStyle.fontSize,
                          color: context.primaryWhiteColor,
                        )
                      : SizedBox(),
                ),
                Text(
                  "${file.uploadAt.toDateTime16}",
                  textAlign: TextAlign.right,
                ),
              ],
            ),
            trailing: Icon(Icons.chevron_right),
            onTap: () {
              fabKey.currentState?.close();
              onFileView(context, file);
            });
      },
      separatorBuilder: (context, index) =>
          Divider(height: 0, indent: 8, endIndent: 8),
      itemCount: userDataService.files.length,
    );
  }

  onFileView(BuildContext context, $pb.File file) async {
    final success = await userDataService.verify(context);
    if (!success) return;

    final model = context.read<CabinetModel>();

    final respBytes = await Http().getFile(file.id);
    if (respBytes == null) return;

    EasyLoading.show(status: "正在解密文件，请稍后...".translate);
    final bytes = await userDataService.aes.decrypt(respBytes);
    EasyLoading.dismiss();

    await Navigator.of(context).push(MaterialPageRoute(
      builder: (_) => ChangeNotifierProvider(
        create: (_) => CabinetViewModel(
          bytes,
          file.deepCopy(),
        ),
        child: CabinetViewPage(),
      ),
    ));

    model.onUpdate();
  }
}
