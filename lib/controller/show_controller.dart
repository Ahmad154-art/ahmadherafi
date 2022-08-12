import 'package:flutter/material.dart';
import 'package:futurehope/model/absence_show_model.dart';
import 'package:get/get.dart';

import '../model/class_model.dart';
import '../service/absence_show_service.dart';
import '../service/class_service.dart';
import '../view/teacher/markteacher.dart';

class AbsantController1 extends GetxController {
  var load = true.obs;
  var isLoading = true.obs;
  late List<TeacherClass> classtlist;
  @override
  void onInit() async {
    ClassService classService = ClassService();
    print('kkk');
    // service.body = body;
    //body = service.body;
    print(body);
    classtlist = await classService.getClass();
    load(false);
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

  List<String> listname = [];
  var className;
  List<int> listid = [];
  var classId;

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

  int body = 2;
  bool? value;
  bool type = false;
  String word = 'send';
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
  List<DisplayModel1> display = [
    DisplayModel1('Rama', 'absant'),
    DisplayModel1('Shadi', 'absant'),
    DisplayModel1('Samer', 'absant'),
    DisplayModel1('Ramez', 'absant'),
    DisplayModel1('Rama', 'absant'),
    DisplayModel1('Shadi', 'absant'),
    DisplayModel1('Samer', 'absant'),
    DisplayModel1('Ramez', 'absant'),
    DisplayModel1('Rama', 'absant'),
    DisplayModel1('Shadi', 'absant'),
    DisplayModel1('Samer', 'absant'),
    DisplayModel1('Ramez', 'absant'),
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

  increment() {
    body++;
    update();
  }

  write() {
    if (body == 1) {
      return word = 'home';
    }
    if (body == 2) {
      return word = 'Send';
    }
    if (body == 3) {
      return word = 'Back';
    }
    update();
  }

  action() {
    if (body == 1) {
      Get.to(Mark());
    }
    if (body == 2) {
      return body = 1; //api

    }
    if (body == 3) {
      return body = 1;
    }
    update();
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

  List<Datum> absenceshow = [];
  AbcenseShowService service = AbcenseShowService();
  Future<void> show() async {
    absenceshow = await service.getAbsence(classId);
    isLoading(false);
    update();
  }

  /*
  refrash (val){
    if(val==true){
      type=false;
    }
    if(val==false){
      type=true;
    }
  }*/
  /*  if(mod.type==true){
      mod.type==false;
    }
    else
      mod.type==true;
    update();
  }
    update();*/

}

class DisplayModel1 {
  String? name;
  String? type;
  DisplayModel1(this.name, this.type);
}
/*
class StoreModel extends GetxController{
  String? name;
  bool type=false;
  StoreModel(this.name,this.type);

  refrash(val){
    type=val;
  }
}

*/