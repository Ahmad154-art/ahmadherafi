//import 'dart:convert';

import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:futurehope/config/server_config.dart';
import 'package:futurehope/model/student_result_model.dart';
import 'package:futurehope/model/subject_model.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class ResultService {
  Future<List<ResultElement>> result(var subjectId) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    int? userId = prefs.getInt('id');
    var url = Uri.parse(serverConfig.domainName + serverConfig.result);
    var response = await http.post(url,
        headers: {'Accept': 'application/json'},
        body: {"subject_id": "$subjectId", "student_id": '$userId'});
    //print('aa');
    print(response.statusCode);
    print(response.body);
    if (response.statusCode == 200) {
      var result = resultFromJson(response.body);

      print('5555555555');
      // print(teacherSubjects.teacherSubject.toList());
      return result.result;
    } else {
      return [];
    }
  }
}
