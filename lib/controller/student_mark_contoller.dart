import 'package:flutter/material.dart';
import 'package:futurehope/model/student_result_model.dart';
import 'package:futurehope/model/subjects_student_model.dart';
import 'package:futurehope/service/student_result_model.dart';
import 'package:futurehope/service/subject_student_service.dart';
import 'package:get/get.dart';

class MarkStuController extends GetxController {
  var isLoading = true.obs;
  List<Subject> data = [];
  subjectStudentService service = subjectStudentService();
  List<ResultElement> result = [];
  int? subjectId;
  ResultService resultService = ResultService();
  var load = true.obs;
  Future<void> subjectStudent() async {
    data = await service.getSubject();
    isLoading(false);
    update();
    print('hhh');
    print(data[0].name);
  }

  Future<void> getResult() async {
    result = await resultService.result(subjectId);
    load(false);
    update();
  }

  List<String> subject = [
    'Algebra',
    'French',
    'Physics',
    'Chemistry',
    'Math',
    'English',
    'patriotism',
    'Science',
    'Arabic',
    'religion',
  ];
  List<String> Exams = [
    'Exam1',
    'Exam2',
    'Final1',
    'Exam3',
    'Exam4',
    'Final2',
  ];

  List<Type> Marks = [
    Type('90', '25/10/2022'),
    Type('88', '17/2/2022'),
    Type('80', '24/3/2022'),
    Type('80', '24/3/2022'),
    Type('75', '22/5/2022'),
    Type(
      '77',
      '12/4/2022',
    ),
  ];
  List color = [
    Color(0xFF00B0FF),
    Color(0xFFFFEA00),
    Color(0xFF2962FF),
    Color(0xFF1DE9B6),
    Color(0xFFFF3D00),
    Color(0xFF00E5FF),
  ];
  @override
  void onInit() async {
    data = await service.getSubject();
    update();
    isLoading(false);
    super.onInit();
  }
}

class Type {
  String? mark;
  String? date;
  Type(this.mark, this.date);
}
