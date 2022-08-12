import 'dart:convert';

import 'package:futurehope/config/server_config.dart';

import 'package:futurehope/model/profile_model.dart';
import 'package:futurehope/storage.dart';
import 'package:http/http.dart' as http;

class ProfileService {
  //var token = '';
  //int role = 0;
  var token;
  var url = Uri.parse(serverConfig.domainName + serverConfig.profile);
  Future<List<Datum>> profile() async {
    SecureStorge storge = SecureStorge();
    token = await storge.read('token');
    var response = await http.get(
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

    //await storge.read('token');
    //UserInformation.user_Token = token;
    if (response.statusCode == 200) {
      var jsonResponse = profileFromJson(response.body);
      //token = jsonResponse['token'];
      //role = jsonResponse['role'];

      // UserInformation.role = role;

      print(token);
      return jsonResponse.data;
    } else if (response.statusCode == 401) {
      return [];
    } else {
      return [];
    }
  }
}
