import 'dart:convert';

import 'package:futurehope/config/server_config.dart';
import 'package:futurehope/config/userinformation.dart';
import 'package:futurehope/main.dart';
import 'package:futurehope/storage.dart';
import 'package:http/http.dart' as http;

class EmailService {
  var token = '';
int role = 0;
  var url = Uri.parse(serverConfig.domainName + serverConfig.sendVerify);
  Future<bool> send(var email) async {
    var response = await http.post(url,
        //  headers: {
        //   'Accept': 'application/json'
        // },
        body: {
          'email': email,
        });
    //print('aa');
    print(response.statusCode);
    print(response.body);
    SecureStorge storge = SecureStorge();
    if (response.statusCode == 200) {
      var jsonResponse = jsonDecode(response.body);
      token = jsonResponse['token'];
      role = jsonResponse['role'];
      UserInformation.user_Token = token;
      UserInformation.role = role;

      await storge.save('token', UserInformation.user_Token);
     // await storge.saveRole('role', UserInformation.role);
      //sharepref!.setString('token', token);
      print(token);
      return true;
    } else if (response.statusCode == 500) {
      return false;
    } else {
      return false;
    }
  }
}
