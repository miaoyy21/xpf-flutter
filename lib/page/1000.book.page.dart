import 'package:get/get.dart';

import '../index.dart';
import '1100.book.search.page.dart';
import '1201.book.body.page.dart';

class BookPage extends StatelessWidget {
  final UserDataService userDataService = Get.find();

  @override
  Widget build(BuildContext context) {
    debugPrint("BookPage is Building");

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: ChangeNotifierProvider(
        create: (_) => BookSearchModel().init(),
        child: BookSearchPage(
          body: BookBodyPage(),
          onUpdate: context.watch<BookModel>().onUpdate,
        ),
      ),
    );
  }
}
