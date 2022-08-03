import 'dart:convert';
import 'dart:math';

//import 'package:flutter/foundation.dart';
import 'package:futurehope/config/server_config.dart';
//import 'package:futurehope/model/class_model.dart';
import 'package:futurehope/model/mark_store_model.dart';
//import 'package:futurehope/model/subject_model.dart';
import 'package:http/http.dart' as http;

class MarkStore {
  var url = Uri.parse(serverConfig.domainName + serverConfig.markstore);
  Future<bool> storeMark(List<StudentMarkElement> storeList
      //, var id, var idSubject, var type, var year
      ) async {
    // int i = 0;
    var bode = studentMarkToJson(StudentMark(studentMark: storeList));
    var student_mark = jsonEncode(storeList);
    print(bode);
    print('8888');
   // print(student_mark);

    // print('222222222222222');
    // for (var i = 0; i < storeList.length; i++) {
    //   print(storeList[i].student_id);
    //   print(storeList[i].mark);
    // }
    // print(storeList[1].student_id);
    // print(storeList[1].mark);
    // Map<String , String> data;
    // data = {"student_id":storeList };
    // for (int i = 0; i < storeList.length; i++) {
    //   data.addAll("student_id${[i]}": ${storeList[i].student_id});

    // }

    var responce = await http.post(url,
        headers: {"Content-Type": "application/json"},
        body: bode
        //jsonEncode()
        //student_mark,
        //{"student_mark": student_mark},

        );

    print(responce.statusCode);
   // print(student_mark);
    print(responce.body);
    print(bode);
    if (responce.statusCode == 200) {
      var jsonResponce = jsonDecode(responce.body);
      return true;
    } else {
      return false;
    }
  }
}
