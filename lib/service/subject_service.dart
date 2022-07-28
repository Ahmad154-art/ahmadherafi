//import 'dart:convert';

import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:futurehope/config/server_config.dart';
import 'package:futurehope/model/subject_model.dart';
import 'package:http/http.dart' as http;

class SubjectService {
  var message;
  var subject;
  //var List;

  //List post = [];
  var url = Uri.parse(serverConfig.domainName + serverConfig.subject);

  Future<List<TeacherSubject>> getSubject() async {
    var response = await http.get(
      url,
      headers: {'Accept': 'application/json'},
    );
    //print('aa');
    print(response.statusCode);
    print(response.body);
    if (response.statusCode == 200) {
      var teacherSubjects = TeacherSubjects.fromJson(jsonDecode(response.body));

      print('5555555555');
     // print(teacherSubjects.teacherSubject.toList());
      return teacherSubjects.teacherSubject;
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
