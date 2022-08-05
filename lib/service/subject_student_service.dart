//import 'dart:convert';

import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:futurehope/config/server_config.dart';
import 'package:futurehope/model/subjects_student_model.dart';

import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class subjectStudentService {
  //var List;

  //List post = [];

  Future<List<Subject>> getSubject() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    int? classId = prefs.getInt('class_id');
    var url = Uri.parse(
        serverConfig.domainName + serverConfig.studentSubject + '$classId');
    var response = await http.get(
      url,
      headers: {'Accept': 'application/json'},
    );
    //print('aa');
    print(response.statusCode);
    print(response.body);
    if (response.statusCode == 200) {
      var studentSubjects = subjectsFromJson(response.body);

      print('5555555555');
      print(studentSubjects.subjects[0].name);
      // print(teacherSubjects.teacherSubject.toList());
      return studentSubjects.subjects;
    } else {
      return [];
    }
  }
}
