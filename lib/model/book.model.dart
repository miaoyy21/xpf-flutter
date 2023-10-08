import 'package:get/get.dart';

import '../index.dart';

class BookModel extends ChangeNotifier {
  final UserDataService userDataService = Get.find();

  int hash;

  BookModel init() {
    hash = userDataService.hashCode;

    debugPrint("BookModel UserDataService HashCode is $hash");
    return this;
  }

  // Update Book Page ?!
  void onUpdate() {
    final newHash = userDataService.hashCode;
    debugPrint("BookModel UserDataService HashCode :: $hash => $newHash");
    if (hash == newHash) return;

    hash = newHash;
    notifyListeners();
  }
}
