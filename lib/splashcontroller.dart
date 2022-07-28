import 'dart:developer';

import 'package:futurehope/storage.dart';
import 'package:futurehope/view/login/email_service.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  late SecureStorge storage;
  @override
  void onInit() async {
    storage = SecureStorge();
    await checkToken();

    // print(token);
    super.onInit();
  }

  //EmailService service = EmailService();
  Future<void> checkToken() async {
    String? token = await storage.read('token');
    //int role =  storage.read(role);

    if (token != null ) {
      
      Get.offAllNamed("/home");
     // storage.delet('token');
    }
    // else if(token != null ){
    //    Get.offAllNamed("/studenthome");
    // }
    //  else if (token != null ) {
    //     Get.offAllNamed("/home");
    //   }
    else {
      Get.offNamed("/email");
    }
  }
}
