import 'package:futurehope/model/user.dart';
import 'package:futurehope/storage.dart';
import 'package:futurehope/view/login/email_service.dart';
import 'package:get/get.dart';

class EmailController extends GetxController {
  var email = '';
  int role = 0;
  var signUpStatus = false;

  EmailService service = EmailService();

  Future<void> sendEmail() async {
    SecureStorge storge = new SecureStorge();
    //  String? test = await storge.read('token');
    //  print(test);
    // User user = User(email: email);
    print('aa');
    signUpStatus = await service.send(email);
    role = service.role;
    // print(email);
  }
}
