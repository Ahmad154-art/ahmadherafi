import 'package:futurehope/model/library_model.dart';
import 'package:futurehope/service/library_service.dart';
import 'package:get/get.dart';

class LibralyController extends GetxController {
  List<Datum> book = [];
  LibraryService service = LibraryService();
  Future<void> getbook() async {
    book = await service.library();
    update();
  }

  List<BookModel> books = [
    BookModel('The Old Man And The Sea ', 'abuot man who love animal'),
    BookModel('Harry Poter ', 'abuot man who love animal'),
    BookModel('The Giver ', 'abuot man who loves animal'),
  ];
}

class BookModel {
  String? name;
  String? desc;
  BookModel(this.name, this.desc);
}
