import 'package:futurehope/view/login/codecontroller.dart';
import 'package:get/get.dart';

class CodeBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<CodeController>(CodeController());

    
  }
}
