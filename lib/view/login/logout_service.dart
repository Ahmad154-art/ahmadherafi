import 'dart:convert';

import 'package:futurehope/config/server_config.dart';
import 'package:futurehope/config/userinformation.dart';
import 'package:futurehope/main.dart';
import 'package:futurehope/storage.dart';
import 'package:http/http.dart' as http;

class LogoutService {
  //var token = '';
  //int role = 0;
  var url = Uri.parse(serverConfig.domainName + serverConfig.logout);
  Future<bool> logout(var token) async {
    var response = await http.post(
      url,
      headers: {
        'Accept': 'application/json',
        'Authorization': 'Bearer $token',
      },
    );
    //print('aa');
    print(response.statusCode);
    print(response.body);
    print(token);
    SecureStorge storge = SecureStorge();
    await storge.read('token');
    UserInformation.user_Token = token;
    if (response.statusCode == 200) {
      var jsonResponse = jsonDecode(response.body);
      //token = jsonResponse['token'];
      //role = jsonResponse['role'];

      // UserInformation.role = role;

      print(token);
      return true;
    } else if (response.statusCode == 401) {
      return false;
    } else {
      return false;
    }
  }
}
