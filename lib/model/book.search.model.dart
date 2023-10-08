import 'package:get/get.dart';

import '../index.dart';
import '../pb/psw.pb.dart' as $pb;

class BookSearchModel extends ChangeNotifier {
  final UserDataService userDataService = Get.find();
  final int count = 30;

  String query = '';
  bool isLoading = false;
  List<$pb.Application> suggestions = [];

  BookSearchModel init() {
    suggestions.clear();
    suggestions = Assets().applications.take(count).toList();

    return this;
  }

  void onQueryChanged(String text) async {
    query = text.toUpperCase();
    isLoading = true;
    notifyListeners();

    if (query.isEmpty) {
      suggestions = Assets().applications.take(count).toList();
    } else {
      suggestions.clear();

      // Applications
      Assets().applications.forEach((app) {
        if (suggestions.length >= count) return;

        if (app.appName.values
            .any((src) => src.toUpperCase().contains(query))) {
          suggestions.add(app);
        }
      });

      // Snapshots
      userDataService.snapshots
          .where((snapshot) =>
              snapshot.appId.isPsw &&
              snapshot.appName.values
                  .any((src) => src.toUpperCase().contains(query)))
          .map((snapshot) => $pb.Application()
            ..appId = snapshot.appId
            ..appName.assignAll(snapshot.appName))
          .toSet()
          .forEach((app) {
        suggestions.add(app);
      });
    }

    isLoading = false;
    notifyListeners();
  }
}
