import 'package:fixnum/fixnum.dart' as $fix;
import 'package:get/get.dart';
import 'package:protobuf/protobuf.dart';

import '../index.dart';
import '../pb/psw.pb.dart' as $pb;

class BookCategoryModel extends ChangeNotifier {
  final LocalStorageService localStorageService = Get.find();
  final UserDataService userDataService = Get.find();

  List<$pb.ApplicationCategory> categories;
  $fix.Int64 categoryId;
  final Function($fix.Int64) onChange;

  BookCategoryModel(this.categories, this.categoryId, this.onChange);

  bool closeOnTap = false;

  // CategoryId Update
  void onCategoryChecked($fix.Int64 newCategoryId) {
    if (categoryId == newCategoryId) return;
    categoryId = newCategoryId;
    notifyListeners();
  }

  // Drag Render
  void onDragReorder(int oldIndex, int newIndex) async {
    final xCategories = categories.map((src) => src.deepCopy()).toList();
    final row = xCategories.removeAt(oldIndex);
    xCategories.insert(newIndex, row);

    final req = $pb.SaveApplicationCategoriesSeq()
      ..seqs.assignAll(xCategories.map((src) => src.id).toList());

    final resp = await Http().post($pb.MsgNo.Msg1204, req)
        as $pb.SaveApplicationCategoriesSeqResp;
    if (resp == null) return;

    userDataService.categories =
        xCategories.map((src) => src.deepCopy()).toList();
    categories = xCategories;

    debugPrint("onDragReorder() ${categories.map((src) => src.id).toList()}");

    notifyListeners();
  }

  // Confirm Select Item
  void onCategorySelect() => onChange(categoryId);

  // Insert Category
  void onCategoryInsert(String name) async {
    // Http Create Category
    final req = $pb.CreateApplicationCategory();
    req.categoryName.assignAll({"${localStorageService.locale}": name});

    final resp = await Http().post($pb.MsgNo.Msg1201, req)
        as $pb.CreateApplicationCategoryResp;
    if (resp == null) return;

    userDataService.categories.add(resp.category.deepCopy());
    categories.add(resp.category.deepCopy());

    debugPrint(
        "onCategoryInsert() ${categories.map((src) => src.id).toList()}");

    notifyListeners();
  }

  // Update Category Name
  void onCategoryUpdate($fix.Int64 categoryId, String categoryName) async {
    // Copy Category
    final xCategory = userDataService.categories
        .firstWhere((src) => src.id == categoryId)
        .deepCopy();

    // Set Category Name
    xCategory.name.update(
        "${localStorageService.locale}", (value) => categoryName,
        ifAbsent: () => categoryName);

    // Http Save Category
    final req = $pb.SaveApplicationCategory()
      ..categoryId = xCategory.id
      ..categoryName.assignAll(xCategory.name);

    final resp = await Http().post($pb.MsgNo.Msg1203, req)
        as $pb.SaveApplicationCategoryResp;
    if (resp == null) return;

    userDataService.categories.firstWhere((src) => src.id == categoryId)
      ..name.assignAll(xCategory.name);

    categories.firstWhere((src) => src.id == categoryId)
      ..name.assignAll(xCategory.name);

    notifyListeners();
  }

  // Delete Category
  void onCategoryDelete($fix.Int64 categoryId) async {
    // Http Delete Category
    final req = $pb.DeleteApplicationCategory()..categoryId = categoryId;

    final resp = await Http().post($pb.MsgNo.Msg1202, req)
        as $pb.DeleteApplicationCategoryResp;
    if (resp == null) return;

    userDataService.categories.removeWhere((src) => src.id == categoryId);
    categories.removeWhere((src) => src.id == categoryId);

    // Set Default Category
    final category =
        userDataService.categories.firstWhere((src) => src.protoId == 0);
    userDataService.snapshots
        .where((src) => src.categoryId == categoryId)
        .forEach((src) {
      src.categoryId = category.id;
    });

    notifyListeners();
  }
}
