//import 'dart:convert';

import 'dart:convert';

import 'package:futurehope/config/server_config.dart';
import 'package:futurehope/model/details_homework_model.dart';
import 'package:futurehope/model/exam_model.dart';

import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class ExamService {
  Future<List<FinalExamElement>> examshow() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    int? classId = prefs.getInt('class_id');
    var url =
        Uri.parse(serverConfig.domainName + serverConfig.exam + '$classId');
    var response = await http.get(
      url,
      headers: {'Accept': 'application/json'},
    );
    //print('aa');
    print(response.statusCode);
    print(response.body);
    if (response.statusCode == 200) {
      var show = finalExamFromJson(response.body);

      return show.finalExam;
    } else {
      return [];
    }
  }
}
