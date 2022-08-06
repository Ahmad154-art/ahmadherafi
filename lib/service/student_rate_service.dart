//import 'dart:convert';

import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:futurehope/config/server_config.dart';
import 'package:futurehope/model/student_rate_model.dart';
import 'package:futurehope/model/subject_model.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class RateService {
  Future<List<SecusessElement>> rate() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    int? userId = prefs.getInt('id');
    var url =
        Uri.parse(serverConfig.domainName + serverConfig.rate + '$userId');
    var response = await http.get(
      url,
      headers: {'Accept': 'application/json'},
    );
    //print('aa');
    print(response.statusCode);
    print(response.body);
    if (response.statusCode == 200) {
      var rate = secusessFromJson(response.body);
  
      print('5555555555');
      // print(teacherSubjects.teacherSubject.toList());
      return rate.secusess;
    } else {
      return [];
    }
  }
}
