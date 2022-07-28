import 'package:get/get.dart';

class MarkStoreController extends GetxController {
  //Map<String, dynamic> data = Map();
  List<String> mark = [];
  List<String> studentid = [];
  List<MarkStoreController> markStore = [];
  String? store;
  
  @override
  void onInit() {
    print(mark);
    print('[[[[[[[[[[[[[[[[[[[[[[[[[');
    // print(data);
    super.onInit();
  }

  @override
  void onReady() {
    print('*************************************');
    print(mark);
    super.onReady();
  }
 

}
