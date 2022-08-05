import 'package:futurehope/model/user.dart';
import 'package:futurehope/storage.dart';
import 'package:futurehope/view/login/email_service.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../model/user_model.dart';

class EmailController extends GetxController {
  var email = '';
  int role = 0;
  var signUpStatus = false;
  List<Id> id = [];

  EmailService service = EmailService();
  int? userId;
  int? classId;
  Future<void> sendEmail() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    // SecureStorge storge = new SecureStorge();
    //  String? test = await storge.read('token');
    //  print(test);
    // User user = User(email: email);
    print('aa');
    id = await service.send(email);
    print('xxxxxxxxxxxx');
    for (var i = 0; i < id.length; i++) {
      print(id[i].id);
      print('llllllllllllllllll');
      print(id[i].classId);
    }
    prefs.setInt('id', id[0].id);
    userId = prefs.getInt('id');
    print('hhhhhh');
    print(userId);
    prefs.setInt('class_id', id[0].classId??0);
    classId = prefs.getInt('class_id');
    print('ddddd');
    print(classId);

    //role = service.role;
    // print(email);
  }
}
