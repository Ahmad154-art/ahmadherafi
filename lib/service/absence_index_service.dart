import 'dart:convert';

import 'package:futurehope/config/server_config.dart';
import 'package:futurehope/config/userinformation.dart';
import 'package:futurehope/main.dart';
import 'package:futurehope/model/abcense_model.dart';
import 'package:futurehope/model/student_name_model.dart';

import 'package:futurehope/storage.dart';
import 'package:futurehope/view/student/homestudent.dart';
import 'package:get/get_connect/http/src/request/request.dart';
import 'package:http/http.dart' as http;

class AbcenseIndexService {
  var body;
  Future<List<Datum>> getAbsence(int id) async {
    var url =
        Uri.parse(serverConfig.domainName + serverConfig.absenceIndex + '$id');
    var response = await http.get(
      url,
      headers: {'Accept': 'application/json'},
    );

    print(response.statusCode);
    print(response.body);

    if (response.statusCode == 200) {
      var jsonResponce = jsonDecode(response.body);
     // body = jsonResponce['body'];
      print(jsonResponce);
      print(body);

      var index = dataFromJson(response.body);
      print(index);
      return index.data;
    } else if (response.statusCode == 500) {
      return [];
    } else {
      return [];
    }
  }
}
