//import 'package:flutter/material.dart';
import 'package:futurehope/model/abcense_model.dart';
import 'package:futurehope/model/student_name_model.dart';
import 'package:futurehope/service/absence_index_service.dart';
import 'package:futurehope/service/student_name_service.dart';
import 'package:futurehope/view/teacher/home.dart';
import 'package:get/get.dart';

import '../model/class_model.dart';
import '../service/class_service.dart';

class AbsantController extends GetxController {
  //********** */
  late List<TeacherClass> classtlist;
  List<String> listname = [];
  List<int> listid = [];
  var className;
  var classId;
  //******var for index */
  AbcenseIndexService service = AbcenseIndexService();
  StudentNameService studentNameService = StudentNameService();
  List<Datum> index = [];

  //******** */
  List<Student> getStudent = [];

  var body;

  bool? value;
  bool type = false;
  var word;
  bool val1 = false;
  bool val2 = false;
  bool val3 = false;
  // int count=1;
  List<String> name = [
    'Rama',
    'Shadi',
    'Samer',
    'Ramez',
    'Rama',
    'Shadi',
    'Samer',
    'Ramez',
    'Rama',
    'Shadi',
    'Samer',
    'Ramez',
  ];
  List<bool> check = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
  ];
  List<bool> check2 = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
  ];
  List<bool> check3 = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
  ];
  List<DisplayModel> display = [
    DisplayModel('Rama', 'absant'),
    DisplayModel('Shadi', 'absant'),
    DisplayModel('Samer', 'absant'),
    DisplayModel('Ramez', 'absant'),
    DisplayModel('Rama', 'absant'),
    DisplayModel('Shadi', 'absant'),
    DisplayModel('Samer', 'absant'),
    DisplayModel('Ramez', 'absant'),
    DisplayModel('Rama', 'absant'),
    DisplayModel('Shadi', 'absant'),
    DisplayModel('Samer', 'absant'),
    DisplayModel('Ramez', 'absant'),
  ];

  refrash1(val, i) {
    check[i] = val;
    if (val == true) {
      check2[i] = check3[i] = false;
    }
    update();
  }

  refrash2(val, i) {
    check2[i] = val;
    if (val == true) {
      check[i] = check3[i] = false;
    }
    update();
  }

  refrash3(val, i) {
    check3[i] = val;
    if (val == true) {
      check[i] = check2[i] = false;
    }
    update();
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
}

class DisplayModel {
  String? name;
  String? type;
  DisplayModel(this.name, this.type);
}
