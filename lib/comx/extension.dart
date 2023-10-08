import 'dart:convert';
import 'dart:io';
import 'dart:math';
import 'dart:typed_data';

import 'package:fixnum/fixnum.dart' as $fix;
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:image/image.dart' as $image;
import 'package:mime/mime.dart';
import 'package:path_provider/path_provider.dart';
import 'package:psw/index.dart';
import 'package:video_compress/video_compress.dart';

import '../pb/psw.pb.dart' as $pb;

final Map<$pb.MsgNo, IconData> _msgNoIcon = {
  $pb.MsgNo.Msg1201: Icons.add_circle_outline,
  $pb.MsgNo.Msg1202: Icons.delete_outline,
  $pb.MsgNo.Msg1203: Icons.save_alt_outlined,
  $pb.MsgNo.Msg1204: Icons.save_as_outlined,
  $pb.MsgNo.Msg1301: Icons.query_builder_outlined,
  $pb.MsgNo.Msg1302: Icons.add_business_outlined,
  $pb.MsgNo.Msg1303: Icons.delete_outline,
  $pb.MsgNo.Msg1304: Icons.data_saver_off_outlined,
  $pb.MsgNo.Msg2101: Icons.settings_ethernet,
  $pb.MsgNo.Msg2102: Icons.add_chart_outlined,
  $pb.MsgNo.Msg2103: Icons.edit_outlined,
  $pb.MsgNo.Msg2104: Icons.delete_outline,
  $pb.MsgNo.Msg3101: Icons.save_outlined,
  $pb.MsgNo.Msg3102: Icons.point_of_sale_outlined,
  $pb.MsgNo.Msg3103: Icons.countertops_outlined,
  $pb.MsgNo.Msg9000: Icons.how_to_reg_outlined,
  $pb.MsgNo.Msg9001: Icons.login_outlined,
  $pb.MsgNo.Msg9009: Icons.shopping_cart_outlined,
};

extension PswMsgNoExtension on $pb.MsgNo {
  IconData get icon => _msgNoIcon.containsKey(this)
      ? _msgNoIcon[this]
      : Icons.extension_outlined;
}

class FileSummary {
  final String name;
  final String mime;
  final String ext;

  FileSummary({this.name, this.mime, this.ext});
}

extension PswStringExtension on String {
  String get translate => this.tr;

  bool get isDebug => this == "debug";

  bool get isPsw => this.startsWith("psw");

  FileSummary toFileSummary() {
    final name = this.split("/").last;

    final split = name.split(".");
    String ext = split.length > 1 ? split.last.toLowerCase() : "";

    return FileSummary(
      name: name.substring(0, name.length - ext.length - 1),
      mime: lookupMimeType(this) ?? "",
      ext: ext,
    );
  }

  Locale get locale =>
      Locale(this.split("_").first, this.split("_").elementAt(1));
}

Widget _getImage(String appId, Map<String, String> appName, {double size}) {
  if (appId.startsWith("psw")) {
    String tr = appName.translate;
    String name = tr.length > 2 ? tr.substring(0, 2) : tr;

    return Container(
      width: size,
      height: size,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: Get.context.primaryBlackColor,
        shape: BoxShape.rectangle,
        border: Border.all(width: 1, color: Get.context.primaryColor),
      ),
      child: Text(name, style: TextStyle(color: Get.context.actionTextColor)),
    );
  }

  return Container(
    width: size,
    height: size,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(4),
      shape: BoxShape.rectangle,
      image: DecorationImage(
        image: NetworkImage([Config().baseUrl, "psw", "icon", appId].join("/")),
      ),
    ),
  );
}

extension PswPbApplication on $pb.Application {
  Widget getImage({double size = 36}) {
    return _getImage(this.appId, this.appName, size: size);
  }
}

extension PswPbAccountSnapshot on $pb.AccountSnapshot {
  Widget getImage({double size = 36}) {
    return _getImage(this.appId, this.appName, size: size);
  }
}

extension PswBuildContextExtension on BuildContext {
  bool get _dark => Theme.of(this).brightness == Brightness.dark;

  MaterialColor get _primary =>
      Colors.primaries[Get.find<LocalStorageService>().primarySwatch];

  static final Map<MaterialColor, MaterialColor> _danger = {
    Colors.red: Colors.purple,
    Colors.pink: Colors.purple,
    Colors.lime: Colors.red,
    Colors.yellow: Colors.red,
    Colors.amber: Colors.red,
    Colors.orange: Colors.purple,
    Colors.deepOrange: Colors.purple,
    Colors.blueGrey: Colors.red,
    Colors.blue: Colors.red,
    Colors.lightBlue: Colors.red,
    Colors.cyan: Colors.red,
    Colors.teal: Colors.red,
    Colors.green: Colors.red,
    Colors.lightGreen: Colors.red,
    Colors.brown: Colors.red,
    Colors.purple: Colors.red,
    Colors.deepPurple: Colors.red,
    Colors.indigo: Colors.red,
  };

  // Color
  Color get whiteColor => _dark ? Colors.grey[200] : Colors.white;

  Color get actionTextColor => _dark
      ? Colors.grey[200]
      : Get.find<LocalStorageService>().isReverse
          ? Colors.white
          : Theme.of(this).textTheme.headline6.color;

  Color get whiteBlackColor => _dark ? Colors.grey[800] : Colors.white;

  Color get greyColor => _dark ? Colors.grey[600] : Colors.grey[200];

  Color get primaryColor =>
      _dark ? Colors.grey[200] : Theme.of(this).primaryColor;

  Color get primaryBlackColor =>
      _dark ? Colors.grey[800] : Theme.of(this).primaryColor;

  Color get primaryBlack10Color => _dark
      ? Colors.grey[800].withOpacity(0.1)
      : Theme.of(this).primaryColor.withOpacity(0.1);

  Color get primaryWhiteColor =>
      _dark ? Colors.white : Theme.of(this).primaryColor;

  Color get slightColor =>
      _dark ? Colors.grey[800] : Theme.of(this).primaryColor.withGreen(128);

  Color get dangerColor => _dark
      ? Colors.grey
      : _primary == _danger.keys.contains(_primary)
          ? _danger[_primary]
          : Colors.red;

  Color get trailingColor => _dark ? Colors.white : Colors.black45;

  // Button Style
  ButtonStyle get buttonStyle => ButtonStyle(
        backgroundColor: MaterialStateProperty.all(
            _dark ? Colors.grey[600] : Theme.of(this).primaryColor),
      );

  // TextStyle
  TextStyle get titleStyle => Theme.of(this).textTheme.subtitle1;

  TextStyle get subtitleStyle => Theme.of(this)
      .textTheme
      .bodyText2
      .copyWith(color: Theme.of(this).textTheme.caption.color);

  TextStyle get headStyle => Theme.of(this).textTheme.headline4;

  Future<Directory> get getDirectory =>
      Theme.of(this).platform == TargetPlatform.iOS
          ? getApplicationDocumentsDirectory()
          : getExternalStorageDirectory();

  // Get Random SpinKit
  Widget spinKit() {
    final nth = Random(DateTime.now().microsecondsSinceEpoch).nextInt(8);

    switch (nth) {
      case 0:
        return SpinKitWave(color: this.primaryColor);
      case 1:
        return SpinKitThreeBounce(color: this.primaryColor);
      case 2:
        return SpinKitPouringHourGlass(color: this.primaryColor);
      case 3:
        return SpinKitSpinningCircle(color: this.primaryColor);
      case 4:
        return SpinKitDancingSquare(color: this.primaryColor);
      case 5:
        return SpinKitFadingGrid(color: this.primaryColor);
      case 6:
        return SpinKitWanderingCubes(color: this.primaryColor);
      default:
        return SpinKitRotatingPlain(color: this.primaryColor);
    }
  }

  // Dialog with TextField
  Future<void> showTextFieldDialog(
      {@required String title,
      @required String hintText,
      String text,
      bool Function(String) callback}) {
    final TextEditingController controller = TextEditingController(text: text);

    return showDialog(
      context: this,
      builder: (context) {
        return AlertDialog(
          title: Text(title),
          content: TextField(
            controller: controller,
            autofocus: true,
            cursorColor: context.primaryColor,
            decoration: InputDecoration(
              hintText: hintText,
              floatingLabelStyle: MaterialStateTextStyle.resolveWith(
                (states) => states.contains(MaterialState.focused)
                    ? TextStyle(color: context.primaryColor)
                    : null,
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: context.primaryColor, width: 2),
              ),
            ),
            onChanged: (value) {},
          ),
          contentPadding: EdgeInsets.fromLTRB(24, 12, 24, 16),
          actions: <Widget>[
            TextButton(
              child: Text(
                "取消".translate,
                style:
                    TextStyle(color: Theme.of(context).textTheme.caption.color),
              ),
              onPressed: () => Navigator.pop(context),
            ),
            TextButton(
              child: Text(
                "确定".translate,
                style: TextStyle(color: context.primaryColor),
              ),
              onPressed: () {
                if (callback(controller.text)) {
                  Navigator.pop(context);
                }
              },
            ),
          ],
        );
      },
    );
  }

  // Dialog with Action
  Future<void> showActionDialog(
      {@required String title,
      @required String content,
      String cancel = "取消",
      String action = "删除",
      Function() callback}) {
    return showDialog(
      context: this,
      builder: (context) {
        return AlertDialog(
          title: Text(title),
          content: Container(
            child: Text(content),
          ),
          contentPadding: EdgeInsets.fromLTRB(24, 12, 24, 16),
          actions: <Widget>[
            TextButton(
              child: Text(
                cancel.translate,
                style:
                    TextStyle(color: Theme.of(context).textTheme.caption.color),
              ),
              onPressed: () => Navigator.pop(context),
            ),
            TextButton(
              child: Text(
                action.translate,
                style: TextStyle(color: context.dangerColor),
              ),
              onPressed: () {
                Navigator.pop(context);
                callback();
              },
            ),
          ],
          actionsPadding: EdgeInsets.only(top: 8),
        );
      },
    );
  }
}

extension PswAccountFieldExtension on $pb.AccountField {
  bool get isImage => this.type == $pb.FieldType.FieldImage;

  String get plain => utf8.decode(Get.find<UserDataService>()
      .aes
      .encryptSync(Uint8List.fromList(this.bytes)));
}

extension PsPbwFileExtension on $pb.File {
  String get nameExt =>
      this.ext.length > 0 ? "${this.name}.${this.ext}" : this.name;

  Widget getImage({double size = 48}) {
    final color = Get.context.primaryWhiteColor;
    DecorationImage img;
    Widget child;

    if (this.hasThumbnail) {
      img = DecorationImage(image: this.id.thumbnail(), fit: BoxFit.fill);
      if (this.nameExt.isVideoFileName) {
        child = Icon(Icons.play_circle_outline, color: color);
      }
    } else if (this.nameExt.isVectorFileName) {
      child = Icon(Icons.analytics, size: 36, color: color);
    } else if (this.nameExt.isImageFileName) {
      child = Icon(Icons.image, size: 36, color: color);
    } else if (this.nameExt.isAudioFileName) {
      child = Icon(Icons.audiotrack, size: 36, color: color);
    } else if (this.nameExt.isVideoFileName) {
      child = Icon(Icons.video_collection, size: 36, color: color);
    } else if (this.nameExt.isTxtFileName) {
      child = Icon(Icons.text_snippet, size: 36, color: color);
    } else if (this.nameExt.isDocumentFileName) {
      child = Icon(Icons.document_scanner, size: 36, color: color);
    } else if (this.nameExt.isExcelFileName) {
      child = Icon(Icons.grid_on, size: 36, color: color);
    } else if (this.nameExt.isPPTFileName) {
      child = Icon(Icons.videocam, size: 36, color: color);
    } else if (this.nameExt.isAPKFileName) {
      child = Icon(Icons.android, size: 36, color: color);
    } else if (this.nameExt.isPDFFileName) {
      child = Icon(Icons.picture_as_pdf, size: 36, color: color);
    } else if (this.nameExt.isHTMLFileName) {
      child = Icon(Icons.html, size: 36, color: color);
    } else {
      child = Icon(Icons.question_mark, size: 36, color: color);
    }

    return Container(
      width: size,
      height: size,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: Get.context.whiteBlackColor,
        shape: BoxShape.rectangle,
        border: img == null ? Border.all(width: 2, color: color) : null,
        image: img,
      ),
      child: child,
    );
  }
}

extension PswVideoQualityExtension on $pb.VideoQuality {
  VideoQuality get quality => this == $pb.VideoQuality.DefaultQuality
      ? VideoQuality.DefaultQuality
      : this == $pb.VideoQuality.LowQuality
          ? VideoQuality.LowQuality
          : this == $pb.VideoQuality.MediumQuality
              ? VideoQuality.MediumQuality
              : this == $pb.VideoQuality.HighestQuality
                  ? VideoQuality.HighestQuality
                  : this == $pb.VideoQuality.Res640x480Quality
                      ? VideoQuality.Res640x480Quality
                      : this == $pb.VideoQuality.Res960x540Quality
                          ? VideoQuality.Res960x540Quality
                          : this == $pb.VideoQuality.Res1280x720Quality
                              ? VideoQuality.Res1280x720Quality
                              : this == $pb.VideoQuality.Res1920x1080Quality
                                  ? VideoQuality.Res1920x1080Quality
                                  : VideoQuality.DefaultQuality;
}

extension PswFieldTypeExtension on $pb.FieldType {
  String get translate => this == $pb.FieldType.FieldText
      ? "文本".translate
      : this == $pb.FieldType.FieldObscure
          ? "密码".translate
          : this == $pb.FieldType.FieldLink
              ? "网址".translate
              : "图片".translate;

  IconData get icon => this == $pb.FieldType.FieldText
      ? Icons.text_format_outlined
      : this == $pb.FieldType.FieldObscure
          ? Icons.vpn_key_outlined
          : this == $pb.FieldType.FieldLink
              ? Icons.language_outlined
              : Icons.photo_outlined;
}

extension PswMapExtension on Map<String, String> {
  String get translate =>
      this[Get.find<LocalStorageService>().locale.toString()] ??
      (values.length > 0 ? values.first : "");
}

extension PswInt64Extension on $fix.Int64 {
  String get categoryName => Get.find<UserDataService>()
      .categories
      .firstWhere((src) => src.id == this,
          orElse: () => Get.find<UserDataService>()
              .categories
              .firstWhere((dst) => dst.protoId == 0))
      .name
      .translate;

  NetworkImage thumbnail() {
    final userId = Get.find<UserDataService>().userId;
    return NetworkImage(
      [Config().baseUrl, "psw", "thumbnail", userId, this].join("/"),
    );
  }
}

extension PswIntExtension on int {
  bool get isZero => this == 0;

  String get toDateTime10 => DateTime.fromMillisecondsSinceEpoch(this * 1000)
      .toLocal()
      .toString()
      .substring(0, 10);

  String get toDateTime11 => DateTime.fromMillisecondsSinceEpoch(this * 1000)
      .toLocal()
      .toString()
      .substring(5, 16);

  String get toDateTime16 => DateTime.fromMillisecondsSinceEpoch(this * 1000)
      .toLocal()
      .toString()
      .substring(0, 16);

  String get toDateTime19 => DateTime.fromMillisecondsSinceEpoch(this * 1000)
      .toLocal()
      .toString()
      .substring(0, 19);

  $fix.Int64 get toInt64 => $fix.Int64(this);

  String get toFileSize => this >= 1 << 30
      ? "${(this / (1 << 30)).toStringAsFixed(2)} GB"
      : this >= 1 << 20
          ? "${(this / (1 << 20)).toStringAsFixed(2)} MB"
          : this >= 1 << 10
              ? "${(this / (1 << 10)).toStringAsFixed(2)} KB"
              : "$this B";
}

extension PswListExtension on List<dynamic> {
  bool isEqual(List<dynamic> s) {
    if (s != null && this.length == s.length) {
      bool _equal = true;
      for (int i = 0; i < s.length; i++) {
        if (this[i] != s[i]) {
          _equal = false;
          break;
        }
      }

      return _equal;
    }

    return false;
  }
}

extension PswListIntExtension on List<int> {
  List<int> thumbnail({int size = 48}) {
    final img = $image.decodeImage(this);
    final sz = $image.copyResize(img, width: size, height: size);
    return $image.encodePng(sz);
  }
}
