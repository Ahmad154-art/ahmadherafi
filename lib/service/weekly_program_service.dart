//import 'dart:convert';

import 'dart:convert';

import 'package:futurehope/config/server_config.dart';
import 'package:futurehope/model/subject_model.dart';
import 'package:futurehope/model/subject_model.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

import '../model/weekly_program_model.dart';

class WeeklyProgramService {
  Future<List<Datum>> weeklyProgram(var day) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    int? classId = prefs.getInt('class_id');
    var url = Uri.parse(
        serverConfig.domainName + serverConfig.weeklyprogram + '$classId');
    var response = await http.post(url,
        headers: {'Accept': 'application/json'}, body: {"day": "$day"});

    print(response.statusCode);
    print(response.body);
    if (response.statusCode == 200) {
      var data = subjectFromJson(response.body);

     // print('5555555555');

      return data.data;
    } else {
      return [];
    }
  }
}
