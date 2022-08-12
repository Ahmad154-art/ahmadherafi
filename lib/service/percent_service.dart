//import 'dart:convert';

import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:futurehope/config/server_config.dart';
import 'package:futurehope/model/class_model.dart';
import 'package:futurehope/model/percent_model.dart';
import 'package:futurehope/model/student_absant_model.dart';
import 'package:futurehope/model/subject_model.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class PercentService {
  Future<bool> percent() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    int? userId = prefs.getInt('id');
    var url =
        Uri.parse(serverConfig.domainName + serverConfig.percent + "$userId");
    var response = await http.get(
      url,
      headers: {'Accept': 'application/json'},
    );

    print(response.statusCode);
    print(response.body);
    if (response.statusCode == 200) {
      print('mmmmmmmmmm');
      var getpercent = jsonDecode(response.body);
      String presence = getpercent["Presence"];
      String absant = getpercent["Absence"];
      prefs.setString("presence", presence);
      prefs.setString("absant", absant);
      
      
      print(presence);
      print(absant);

      print('5555555555');
      // print(teacherSubjects.teacherSubject.toList());
      return true;
    } else {
      return false;
    }
  }
}
