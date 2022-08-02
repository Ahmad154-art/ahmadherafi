import 'dart:convert';

import 'package:futurehope/config/server_config.dart';

import 'package:http/http.dart' as http;

class TaskDeleteService {
  Future<bool> taskDelete(int id) async {
    var url =
        Uri.parse(serverConfig.domainName + serverConfig.taskDelete + '$id');
    var response = await http.delete(
      url,
      headers: {'Accept': 'application/json'},
    );
    //print('aa');
    print(id);
   
    print(response.statusCode);
    print(response.body);

    if (response.statusCode == 200) {
      return true;
    } else if (response.statusCode == 500) {
      return false;
    } else {
      return false;
    }
  }
}
