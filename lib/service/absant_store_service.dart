import 'dart:convert';
import 'dart:math';

//import 'package:flutter/foundation.dart';
import 'package:futurehope/config/server_config.dart';
import 'package:futurehope/model/absence_store_model.dart';
//import 'package:futurehope/model/class_model.dart';
import 'package:futurehope/model/mark_store_model.dart';
//import 'package:futurehope/model/subject_model.dart';
import 'package:http/http.dart' as http;

class AbsantStoreService {
  var url = Uri.parse(serverConfig.domainName + serverConfig.absantstore);
  Future<bool> storeabsant(List<StudentAbsence> storeList) async {
    var body = studentabcenceToJson(Studentabcence(studentAbsence: storeList));
    // var bode = studentMarkToJson(StudentMark(studentMark: storeList));
    // var student_mark = jsonEncode(storeList);
    // print(bode);
    print('8888');
    print(body);

    var responce = await http.post(url,
        headers: {"Content-Type": "application/json"}, body: body);

    print(responce.statusCode);
    // print(student_mark);
    print(responce.body);
    print(body);
    if (responce.statusCode == 200) {
      var jsonResponce = jsonDecode(responce.body);
      return true;
    } else {
      return false;
    }
  }
}
