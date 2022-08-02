import 'dart:convert';

import 'package:futurehope/config/server_config.dart';
import 'package:futurehope/config/userinformation.dart';
import 'package:futurehope/main.dart';
import 'package:futurehope/model/student_name_model.dart';
import 'package:futurehope/storage.dart';
import 'package:futurehope/view/student/homestudent.dart';
import 'package:get/get_connect/http/src/request/request.dart';
import 'package:http/http.dart' as http;

class TaskUpdateService {
  Future<bool> taskUpdate(
      int id, var subId, var classId, var descreption, var pageNumber) async {
    var url =
        Uri.parse(serverConfig.domainName + serverConfig.taskUpdate + '$id');
    var response = await http.post(url, headers: {
      'Accept': 'application/json'
    }, body: {
      "subject_id": "$subId",
      "class_id": "$classId",
      "number_page": "$pageNumber",
      "descreption": "$descreption"
    });
    //print('aa');
    print(id);
    print(subId);
    print(classId);
    print(pageNumber);
    print(descreption);
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
