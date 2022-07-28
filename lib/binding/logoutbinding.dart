import 'package:futurehope/view/login/emailcontroller.dart';
import 'package:futurehope/view/login/logoutcontoller.dart';
import 'package:get/get.dart';

class EmailBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(LogoutController());
  }
}
