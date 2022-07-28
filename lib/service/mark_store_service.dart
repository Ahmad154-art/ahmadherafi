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
  Future<bool> storeMark(List<MarkStoreModel> storeList
      //, var id, var idSubject, var type, var year
      ) async {
    int i = 0;

    var json = jsonEncode(storeList);
    print(json);
    print('222222222222222');
    for (var i = 0; i < storeList.length; i++) {
      print(storeList[i].student_id);
      print(storeList[i].mark);
    }
    print(storeList[1].student_id);
    print(storeList[1].mark);
    // Map<String , String> data;
    // data = {"student_id":storeList };
    // for (int i = 0; i < storeList.length; i++) {
    //   data.addAll("student_id${[i]}": ${storeList[i].student_id});

    // }
    
    var responce = await http.post(
      url,
     headers: {
      "Accept": "application/json"
    }, body: {
      "student_id[0]": "${storeList[0].student_id}",
      "mark[0]": "${storeList[0].mark}",
      "student_id[1]": "${storeList[1].student_id}",
      "mark[1]": "${storeList[1].mark}",
      "class_id": "1",
      "subject_id": "1",
      "type": "exam1",
      "year": "2022"
    }
    );
    print(responce.statusCode);
    print(responce.body);
    if (responce.statusCode == 200) {
      var jsonResponce = jsonDecode(responce.body);
      return true;
    } else {
      return false;
    }
  }
}
