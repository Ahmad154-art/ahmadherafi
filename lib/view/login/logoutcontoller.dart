import 'package:futurehope/model/user.dart';
import 'package:futurehope/storage.dart';
import 'package:futurehope/view/login/email_service.dart';
import 'package:futurehope/view/login/logout_service.dart';
import 'package:get/get.dart';

class LogoutController extends GetxController {
  LogoutService service = LogoutService();
  // @override
  // void onInit() {
  //   super.onInit();
  // }

  // @override
  // void onReady() {

    // logOut();
  //   super.onReady();
  // }

  var token = "";
  var logout = false;

  Future<void> logOut() async {
    SecureStorge storge = new SecureStorge();
    String? token = await storge.read('token');
    print(token);
    // User user = User(email: email);
    print('aa');
    logout = await service.logout(token);

    //if (logout) {
    //   print('lll');
    //   Get.offAllNamed("/email");
    //   storge.delet('token');
    //   // sharepref!.getString('token');
    //   //Get.toNamed("/code");
    // }
    // return true;
    //role = service.role;
    // print(email);
  }
}
