//import 'dart:convert';

import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:futurehope/config/server_config.dart';
import 'package:futurehope/model/class_model.dart';
import 'package:futurehope/model/subject_model.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class ClassService {
  var message;
  var subject;
  //var List;

  //List post = [];

  Future<List<TeacherClass>> getClass() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
   int? userId = prefs.getInt('id');
    var url = Uri.parse(serverConfig.domainName + serverConfig.Class + "$userId");
    var response = await http.get(
      url,
      headers: {'Accept': 'application/json'},
    );
    //print('aa');
    print(response.statusCode);
    print(response.body);
    if (response.statusCode == 200) {
      print('mmmmmmmmmm');
      var teacherClass = TeacherClasses.fromJson(jsonDecode(response.body));

      print('5555555555');
      // print(teacherSubjects.teacherSubject.toList());
      return teacherClass.teacherClass;
    } else {
      return [];
    }
    // if (response.statusCode == 200) {
    //   // var subject = jsonDecode(response.body);
    //   // List = subject['name'];
    //   print('55555555');
    //    var subject = teacherSubjectsFromJson(response.body);
    //   print(subject);
    //   // post.addAll(subject);
    //   // print(post);
    //   return true;
    // } else {
    //   return false;
    // }
  }
}
