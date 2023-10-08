import 'package:get/get.dart';

import '../index.dart';
import '../pb/psw.pb.dart' as $pb;

class AccountFieldModel extends ChangeNotifier {
  final LocalStorageService localStorageService = Get.find();

  int index;
  Map<String, String> name;
  bool isPrimary;
  $pb.FieldType type;
  List<int> bytes;
  RangeValues rangeValues = const RangeValues(1, 1);

  final Function($pb.AccountField field) onEdit;
  final Function($pb.AccountField field) onDelete;

  AccountFieldModel(this.index, this.onEdit, {this.onDelete})
      : name = {},
        isPrimary = false,
        type = $pb.FieldType.FieldText,
        bytes = [],
        rangeValues = RangeValues(1, 1);

  AccountFieldModel.from(
    $pb.AccountField field,
    Function($pb.AccountField field) onEdit,
    Function($pb.AccountField field) onDelete,
  )   : index = field.index,
        name = field.name,
        isPrimary = field.isPrimary,
        type = field.type,
        bytes = field.bytes,
        rangeValues = RangeValues(
          field.minLines.toDouble(),
          field.maxLines.toDouble(),
        ),
        onEdit = onEdit,
        onDelete = onDelete;

  $pb.AccountField toAccountField() => $pb.AccountField.create()
    ..index = index
    ..name.clear()
    ..name.addAll(name)
    ..isPrimary = isPrimary
    ..type = type
    ..bytes = bytes
    ..minLines = rangeValues.start.toInt()
    ..maxLines = rangeValues.end.toInt();

  // Field Type Update
  void onFieldTypeUpdate($pb.FieldType newType) {
    if (type == newType) return;

    type = newType;

    notifyListeners();
  }

  // Name Update by the User's Locale Language
  void onNameUpdate(String newName) {
    name["${localStorageService.locale}"] = newName;
  }

  // Min Lines && Max Lines
  void onMinMaxLinesUpdate(RangeValues values) {
    rangeValues = values;
    notifyListeners();
  }
}
