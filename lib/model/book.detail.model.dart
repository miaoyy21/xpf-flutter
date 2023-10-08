import 'dart:convert';

import 'package:fixnum/fixnum.dart' as $fix;
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';

import '../index.dart';
import '../pb/psw.pb.dart' as $pb;

enum BookDetailAction { create, view, edit, save }

extension BookDetailActionExtension on BookDetailAction {
  IconData get icon => this == BookDetailAction.edit ? Icons.edit : Icons.save;

  // ReadOnly?
  bool get readOnly => this != BookDetailAction.save;

  // Action Switch
  BookDetailAction get nextAction => this == BookDetailAction.create
      ? BookDetailAction.save
      : this == BookDetailAction.view
          ? BookDetailAction.edit
          : this == BookDetailAction.edit
              ? BookDetailAction.save
              : BookDetailAction.edit;
}

class BookDetailModel extends ChangeNotifier {
  final LocalStorageService localStorageService = Get.find();
  final UserDataService userDataService = Get.find();

  BookDetailAction action;
  $fix.Int64 id;
  String accountId;
  $fix.Int64 categoryId;
  String appId;
  Map<String, String> appName;
  int createAt;
  List<$pb.AccountField> fields;

  BookDetailModel(this.action, this.id, this.accountId, this.categoryId,
      this.appId, this.appName, this.createAt, this.fields);

  BookDetailModel.from($pb.ApplicationAccount account)
      : action = BookDetailAction.edit,
        id = account.id.toInt64(),
        accountId = account.accountId,
        categoryId = account.categoryId,
        appId = account.appId,
        appName = account.appName,
        createAt = account.createAt,
        fields = account.fields;

  $pb.AccountSnapshot toSnapshot() {
    return $pb.AccountSnapshot.create()
      ..id = id
      ..accountId = accountId
      ..categoryId = categoryId
      ..appId = appId
      ..appName.assignAll(appName)
      ..createAt = createAt;
  }

  // Set Next Action
  void toNextAction() {
    action = action.nextAction;
    notifyListeners();
  }

  // AppName Update
  void onAppNameUpdate(String newAppName) {
    appName["${localStorageService.locale}"] = newAppName;
  }

  // Category Update
  void onCategoryIdUpdate($fix.Int64 newCategoryId) {
    categoryId = newCategoryId;
    notifyListeners();
  }

  // Field Value Update
  void onFieldValueUpdate($pb.AccountField field, String value,
      {bool notify = false}) async {
    if (field.plain == value) return;

    field.bytes = userDataService.aes.encryptSync(utf8.encode(value));

    if (notify) {
      notifyListeners();
    }
  }

  // Update Field
  void onFieldUpdate($pb.AccountField field) {
    final index = fields.indexWhere((src) => src.index == field.index);
    fields[index] = field;
    notifyListeners();
  }

  // Insert Field
  void onFieldInsert($pb.AccountField field) {
    fields.add(field);
    notifyListeners();
  }

  // Delete Field
  void onFieldDelete($pb.AccountField field) {
    fields.removeWhere((src) => src.index == field.index);
    notifyListeners();
  }

  // Delete Application Account
  void onDelete() async {
    final req = $pb.DeleteApplicationAccount()..id = id;

    final resp = await Http().post($pb.MsgNo.Msg1303, req)
        as $pb.DeleteApplicationAccountResp;
    if (resp == null) return;

    // UserDataService
    userDataService.snapshots.removeWhere((src) => src.id == resp.id);

    Navigator.of(Get.context).pop();
  }

  // Save Application Account
  void onSave() async {
    String newAccountId = fields.firstWhere((src) => src.isPrimary).plain;
    if (newAccountId == null || newAccountId.isEmpty) {
      newAccountId = "#$id";

      fields.forEach((src) async {
        if (src.isPrimary) {
          src.bytes =
              userDataService.aes.encryptSync(utf8.encode(newAccountId));
        }
      });
    }
    accountId = newAccountId;

    // 获取所有存储ID
    List<$fix.Int64> fileIds = [];
    fields.forEach((src) async {
      if (src.type == $pb.FieldType.FieldImage) {
        src.plain.split(",").forEach((dst) {
          if (dst.isNotEmpty) {
            fileIds.add($fix.Int64.parseInt(dst));
          }
        });
      }
    });

    final req = $pb.SaveApplicationAccount()
      ..id = id
      ..accountId = newAccountId
      ..categoryId = categoryId
      ..appId = appId
      ..appName.assignAll(appName)
      ..fields.assignAll(fields)
      ..fileIds.assignAll(fileIds);

    final resp = await Http().post($pb.MsgNo.Msg1304, req)
        as $pb.SaveApplicationAccountResp;
    if (resp == null) return;

    // UserDataService
    final newSnapshot = resp.snapshot;
    userDataService.snapshots.removeWhere((src) => newSnapshot.id == src.id);
    userDataService.snapshots.add(newSnapshot);
    EasyLoading.showSuccess("保存成功".translate);

    toNextAction();
  }
}
