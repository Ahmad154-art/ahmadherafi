//import 'dart:convert';

import 'dart:convert';

import 'package:futurehope/config/server_config.dart';
import 'package:futurehope/model/teacher_table_model.dart';

import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

import '../model/weekly_program_model.dart';

class WeeklyteacherService {
  Future<List<TheWeak>> weeklyProgram(var classid) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    int? id = prefs.getInt('id');
    var url = Uri.parse(
        serverConfig.domainName + serverConfig.week + '$id' + '/$classid');
    var response = await http.get(
      url,
      headers: {'Accept': 'application/json'},
    );

    print(response.statusCode);
    print(response.body);
    if (response.statusCode == 200) {
      var data = teachertableFromJson(response.body);

      // print('5555555555');

      return data.theWeak;
    } else {
      return [];
    }
  }
}
