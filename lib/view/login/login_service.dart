import 'dart:convert';

import 'package:futurehope/config/server_config.dart';
import 'package:futurehope/config/userinformation.dart';
import 'package:futurehope/storage.dart';
import 'package:futurehope/view/login/codecontroller.dart';
import 'package:futurehope/view/login/emailcontroller.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class LoginService {
  EmailController controller = Get.find();
  int role1 = 0;
  var message = '';
  var token = '';
  int id = 0;

  var url = Uri.parse(serverConfig.domainName + serverConfig.login);
  Future<bool> login(var email, var code) async {
    // email = controller.email;
    var response = await http.post(url,
        //  headers: {
        //   'Accept': 'application/json'
        // },
        body: {
          'email': email,
          'verify_token': code,
        });
    //print('aa');
    print(response.statusCode);
    print(response.body);
    print(email);

    print('********');
    print(controller.email);

    print(response.body);
    print(code);

    //var jsonresponse = jsonDecode(response.body);
    if (response.statusCode == 200) {
      //  message = jsonresponse['status'];
      var jsonResponse = jsonDecode(response.body);
      print('vvvvvvvvvv');
      print(jsonResponse);
      // message = jsonResponse['status'];
      //print(message);
      message = jsonResponse['status'];
     // id = jsonResponse[["id"]];
     // print(object)
      print(message);
      role1 = jsonResponse['role'];
      token = jsonResponse['token'];
      UserInformation.user_Token = token;
      SecureStorge storge = SecureStorge();
      await storge.save('token', UserInformation.user_Token);
      print(UserInformation.user_Token);
      print(role1);
      print('22');
      return true;
    } else if (response.statusCode == 401) {
      var jsonResponse = jsonDecode(response.body);
      //print(role);
      message = jsonResponse['message'];
      print('mmmmmmmmmmmmm');
      print(message);
      // role = jsonResponse['null'];

      return false;
    } else {
      print(email);
      print('11');
      // print(role1);
      return false;
    }

    // if(response.statusCode == 401){
    //   var jsonResponse = jsonDecode(response.body);
    //   message = jsonResponse['message'];
    //      return false;

    // }
    //  else {
    //   return false;
    // }
  }
}
