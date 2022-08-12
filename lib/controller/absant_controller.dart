import 'package:flutter/material.dart';
import 'dart:convert';

import 'package:futurehope/model/abcense_model.dart';
import 'package:futurehope/model/absence_store_model.dart';
import 'package:futurehope/model/student_name_model.dart';
import 'package:futurehope/service/absant_store_service.dart';
import 'package:futurehope/service/absence_index_service.dart';
import 'package:futurehope/service/student_name_service.dart';
import 'package:futurehope/view/teacher/home.dart';
import 'package:get/get.dart';

import '../model/class_model.dart';
import '../service/class_service.dart';

enum Status { present, absent, delay }

class AbsantController extends GetxController {
  //******checkbox */
  var checkbox = false.obs;
  bool? pp;
  bool? aa;
  bool? dd;
//******get student name */
  // List<Student> student = [];
  // StudentNameService studentNameService = StudentNameService();

  ///******update */
  var presence = 'presence';
  var absant = 'absant';
  var delay = 'delay';
  //********** */
  late List<TeacherClass> classtlist;
  List<String> listname = [];
  List<int> listid = [];
  var className;
  var classId;
  //******var for index */
  AbcenseIndexService service = AbcenseIndexService();
  StudentNameService studentNameService = StudentNameService();
  var isLoading = true.obs;
  List<Datum> index = [];

  //******** */
  List<Student> getStudent = [];
  Future<void> student() async {
    getStudent = await studentNameService.getStudentName(classId);
    isLoading(false);
    update();
  }

  var body;

  bool? value;
  bool type = false;
  var word;
  bool val1 = false;
  bool val2 = false;
  bool val3 = false;
  // int count=1;

  void refrash1(int id, Status status) {
    studentStatus[id] = status;

    checkbox(true);
    update();
  }

  void removeStatus(int id) {
    studentStatus.remove(id);
    checkbox(false);
    update();
  }

  List<String> tafakod = [];

  // Map<String , String>

  var reason = "";

  Map<int, Status> studentStatus = {};

  void gg(index) {
    print(studentStatus);
  }

  // increment() {
  //   body++;
  //   update();
  // }

  write() {
    // service.body = body;
    // body = service.body;
    print('ppp');
    print(body);
    if (body == 1) {
      return word = 'home';
    } else if (body == 2) {
      return word = 'Send';
    } else {
      return word = 'Back';
    }
    // update();
  }

  edit1(val) {
    val1 = val;
    if (val == true) {
      val2 = val3 = false;
    }
    update();
  }

  edit2(val) {
    val2 = val;
    if (val == true) {
      val1 = val3 = false;
    }
    update();
  }

  edit3(val) {
    val3 = val;
    if (val == true) {
      val1 = val2 = false;
    }
    update();
  }

  ClassService classService = ClassService();
  @override
  void onInit() async {
    print('kkk');
    // service.body = body;
    //body = service.body;
    print(body);
    classtlist = await classService.getClass();
    for (int i = 0; i < classtlist.length; i++) {
      listname.add(classtlist[i].name);
      listid.add(classtlist[i].id);
    }
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  void selectid() {
    int index = listname.indexOf(className);
    classId = listid[index];
    //select = classId;
    // print(select);
    print('%%%%%%%%%%%%%%%%%%%');
    print(classId);
  }

  void selectName() {
    int index = listname.indexOf(className);
    className = listname[index];
    print(className);
  }

  Future<void> action() async {
    service.body = body;
    print('ll');
    print(body);
    print(service.body);
    if (body == 1) {
      Get.to(Home());
    } else if (body == 2) {
      index = await service.getAbsence(classId);
      //return body = 1; //api

    } else {
      //return body = 1;
      index = await service.getAbsence(classId);
    }
    update();
  }

  List<StudentAbsence> absencestore = [];
  void store() {
    for (var i = 0; i < getStudent.length; i++) {
      absencestore.add(StudentAbsence(
        studentId: getStudent[i].id,
        classId: classId,
        type: studentStatus[getStudent[i].id] ?? Status.present,
        reason: reason,
      ));
    }
    var json = jsonEncode(absencestore);
    print(json);
  }

  AbsantStoreService absantStoreService = AbsantStoreService();
  Future<void> storeabsant() async {
    store();
    print(json);
    // print(absencestore[0].type);
    await absantStoreService.storeabsant(absencestore);
  }
}

class DisplayModel {
  String? name;
  String? type;
  DisplayModel(this.name, this.type);
}
