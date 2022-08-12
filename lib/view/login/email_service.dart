import 'dart:convert';

import 'package:futurehope/config/server_config.dart';
import 'package:futurehope/config/userinformation.dart';
import 'package:futurehope/main.dart';
import 'package:futurehope/model/user.dart';
import 'package:futurehope/model/user_model.dart';
import 'package:futurehope/storage.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class EmailService {
  //var token = '';
  //int role = 0;
  var url = Uri.parse(serverConfig.domainName + serverConfig.sendVerify);
  Future<List<Id>> send(var email) async {
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
    // SecureStorge storge = SecureStorge();
    if (response.statusCode == 200) {
      var jsonResponce = userFromJson(response.body);
      var json = jsonDecode(response.body);
      var role = json["role"];
      var userId = json["user_id"];
      print('aaaaaaaaaaaaaaaaa');
      print(userId);
      print('yyy');
      print(role);
      SharedPreferences prefs = await SharedPreferences.getInstance();
      prefs.setInt("role", role);
      prefs.setInt("user_id", userId);

      // var jsonResponse = jsonDecode(response.body);
      //token = jsonResponse['token'];
      //role = jsonResponse['role'];
      //UserInformation.user_Token = token;
      //UserInformation.role = role;

      // await storge.save('token', UserInformation.user_Token);
      // await storge.saveRole('role', UserInformation.role);
      //sharepref!.setString('token', token);
      // print(token);
      return jsonResponce.id;
    } else if (response.statusCode == 500) {
      return [];
    } else {
      return [];
    }
  }
}
