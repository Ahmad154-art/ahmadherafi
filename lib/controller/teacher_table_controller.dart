import 'package:flutter/material.dart';
import 'package:futurehope/model/teacher_table_model.dart';
import 'package:get/get.dart';

import '../service/teacher_table_service.dart';

class WeeklyTeaController extends GetxController {
  var classid;
  var isLoading = true.obs;

  List<String> clas = [
    'Tenth',
    'Eleventh',
    'Bacalory',
  ];
  List<WeeklyModel> data = [
    WeeklyModel('Physics', '11:00', 'Sunday'),
    WeeklyModel('Physics', '8:00', 'Monday'),
    WeeklyModel('Chemistry', '10:45', 'Tuesday'),
  ];
  List color = [
    Color(0xFF00B0FF),
    Color(0xFFFFEA00),
    Color(0xFFFF3D00),
    Color(0xFF1DE9B6),
    Color(0xFF2962FF),
    Color(0xFF00E5FF),
  ];
  List<TheWeak> program = [];
  WeeklyteacherService service = WeeklyteacherService();
  Future<void> week() async {
    program = await service.weeklyProgram(classid);
    isLoading(false);
  }
}

class WeeklyModel {
  String? sub;
  String? time;
  String? day;
  WeeklyModel(this.sub, this.time, this.day);
}
