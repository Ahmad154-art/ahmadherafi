//import 'dart:convert';

import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:futurehope/config/server_config.dart';
import 'package:futurehope/model/class_model.dart';
import 'package:futurehope/model/installment_model.dart';
import 'package:futurehope/model/student_absant_model.dart';
import 'package:futurehope/model/subject_model.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class InstallmentService {
  Future<List<InstallmentElement>> installment() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    int? userId = prefs.getInt('id');
    var url = Uri.parse(
        serverConfig.domainName + serverConfig.installment + "$userId");
    var response = await http.get(
      url,
      headers: {'Accept': 'application/json'},
    );

    print(response.statusCode);
    print(response.body);
    if (response.statusCode == 200) {
      print('mmmmmmmmmm');
      var payment = installmentFromJson(response.body);

      print('5555555555');
      // print(teacherSubjects.teacherSubject.toList());
      return payment.installment;
    } else {
      return [];
    }
  }
}
