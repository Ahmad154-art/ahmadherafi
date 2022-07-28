import 'package:futurehope/view/login/emailcontroller.dart';
import 'package:futurehope/view/login/login_service.dart';
import 'package:get/get.dart';

class CodeController extends GetxController {
  EmailController controller = Get.find();
  var email = '';
  var code = '';
  int role =0;
  var loginStatus = false;
  // var email2 = '';

  LoginService service = LoginService();
  EmailController email1 = EmailController();
  Future<void> login() async {
    // User user = User(email: email);
    print('aa');
    //print(controller.email);
    email = controller.email;
    print(email);
    //controller.email = email2;
    //email2 = controller.email;
    //print(email2);

    loginStatus = await service.login(email, code);
    print('/////////////////');
    role = service.role1;

    print(role);
  }
}
