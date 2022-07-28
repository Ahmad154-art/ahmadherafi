import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:futurehope/config/server_config.dart';

class MarkUpdate {
//int role = 0;

  Future<bool> markUpdate(int id , var newMark) async {
    var url =
        Uri.parse(serverConfig.domainName + serverConfig.markUpdate + '$id');
    var response =
        await http.post(url, headers: {'Accept': 'application/json'}, 
        body: {
          "mark": "$newMark"
        });
    print(id);
    print(response.statusCode);
    print(response.body);

    if (response.statusCode == 200) {
      
      var jsonResponce = jsonDecode(response.body);
      print(jsonResponce);
      return true;
   
    } else if (response.statusCode == 500) {
      return false;
    } else {
      return false;
    }
  }
}
