import 'dart:convert';

import 'package:futurehope/config/server_config.dart';
import 'package:futurehope/config/userinformation.dart';
import 'package:futurehope/main.dart';
import 'package:futurehope/model/student_name_model.dart';
import 'package:futurehope/storage.dart';
import 'package:futurehope/view/student/homestudent.dart';
import 'package:get/get_connect/http/src/request/request.dart';
import 'package:http/http.dart' as http;

class StudentNameService {
   int id = 0;
  var token = '';
//int role = 0;

  Future<List<Student>> getStudentName(int id) async {
    var url =
        Uri.parse(serverConfig.domainName + serverConfig.studentName + '$id');
    var response = await http.get(
      url,
      headers: {'Accept': 'application/json'},
    );
    //print('aa');
    print(response.statusCode);
    print(response.body);
    SecureStorge storge = SecureStorge();
    if (response.statusCode == 200) {
      // var studentName = json.decode(response.body);
      // List<dynamic> data = studentName["students"];
      // print(studentName);
      // print('bbbbbbbbbbbbbbbbbbb');

      // var jsonResponse = jsonDecode(response.body);
      // print(jsonResponse);
      var students = studentsFromJson(response.body);
      print(students);
      return students.students;
      // var teacherClass = studentNameFromJson(response.body);
      // print(name);
      //var studentName = studentNameFromJson(response.body);
      // token = jsonResponse['token'];
      //role = jsonResponse['role'];
      // UserInformation.user_Token = token;
      // UserInformation.role = role;

      // await storge.save('token', UserInformation.user_Token);
      // await storge.saveRole('role', UserInformation.role);
      //sharepref!.setString('token', token);
      // print(token);

    } else if (response.statusCode == 500) {
      return [];
    } else {
      return [];
    }
  }
}
