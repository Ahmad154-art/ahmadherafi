import 'dart:convert';

import 'package:futurehope/controller/subject_controller.dart';
import 'package:futurehope/model/class_model.dart';
import 'package:futurehope/model/mark_store_model.dart';
import 'package:futurehope/model/student_name_model.dart';
import 'package:futurehope/model/subject_model.dart';
import 'package:futurehope/service/class_service.dart';
import 'package:futurehope/service/mark_store_service.dart';
import 'package:futurehope/service/student_name_service.dart';
import 'package:futurehope/service/subject_service.dart';
import 'package:futurehope/view/teacher/markteacher.dart';
import 'package:get/get.dart';

import 'mark_store_controller.dart';

class ClassController extends GetxController {
  MarkStore storeservice = MarkStore();
  StudentNameService studentNameService = StudentNameService();
  var classTeacherList = [];
  late List<TeacherClass> classtlist;
  List<String> listname = [];
  List<int> listid = [];

  List<Student> studentlist = [];
  List<String> studentNameList = [];
  List<int> studentidList = [];
  // ************ store var
  List<dynamic> mark = [];
  List<String> studentid = [];
  //List<MarkStoreController> markStore = [];
  String? store;
  late Map<String, dynamic> map = {"student_id": "", "mark": ""};
  List<Map<String, dynamic>> map1 = [
    {"student_id": '', "mark": ''},

    //{"mark": ''},
  ];
  List<StudentMarkElement> storeList = [];

  //************ store end */

  ClassService service = ClassService();
  var id = 0;
  var idSubject = 0;
  var nameSubject;
  var name;
  var classStatus = false;
  int? select;
  var isLoading = true.obs;

  List<String> listnameSubject = [];
  List<int> listidSubject = [];
  late List<TeacherSubject> subjectlis;
  SubjectService serviceSubject = SubjectService();

  var subId;
  var subName;
  var year;

  //*********radio */
  var type;
  // var radio = false.obs;
  // void radio1() {
  //   radio(!(radio.value));
  // }

  @override
  void onInit() async {
    classtlist = await service.getClass();

    for (int i = 0; i < classtlist.length; i++) {
      listname.add(classtlist[i].name);
      listid.add(classtlist[i].id);
    }
    print('fffffffffffffffff');
    print(listname);

    subjectlis = await serviceSubject.getSubject();
    for (int i = 0; i < subjectlis.length; i++) {
      listnameSubject.add(subjectlis[i].name);
      listidSubject.add(subjectlis[i].id);
    }
    print(listnameSubject);
    for (int i = 0; i < studentlist.length; i++) {
      studentNameList.add(studentlist[i].firstName);
      //studentNameList.add(studentlist[i].firstName);
      studentidList.add(studentlist[i].id);
    }
    print('0000000000000000000');
    print(studentNameList);
    super.onInit();
  }

  void selectid() {
    int index = listname.indexOf(name);
    id = listid[index];
    select = id;
    print(select);
    print('yyyyyyyyyyyyyyyyyy');
    print(id);
  }

  void selectName() {
    int index = listname.indexOf(name);
    name = listname[index];
    print(name);
  }

  void selectidsub() {
    int index = listnameSubject.indexOf(subName);
    subId = listidSubject[index];
    print(subId);
  }

  void selectNamesub() {
    int index = listnameSubject.indexOf(subName);
    subName = listnameSubject[index];
    print(subName);
  }

  // void selectidSubject() {
  //   int index = listnameSubject.indexOf(nameSubject);
  //   idSubject = listidSubject[index];
  //   // select = idSubject;
  //   //print(select);
  //   print('yyyyyyyyyyyyyyyyyy');
  //   print(idSubject);
  // }

  // void selectNameSubject() {
  //   int index = listnameSubject.indexOf(nameSubject);
  //   nameSubject = listnameSubject[index];
  //   print(nameSubject);
  // }
//
  Future<void> sendClass() async {
    studentlist = await studentNameService.getStudentName(id);
    isLoading(false);
    update();
    print(id);
    print('jjjjjjjjjjjjjjjjjjjj');
    // studentlist = await studentNameService.getStudentName(1);
    print(studentlist);
    //SecureStorge storge = new SecureStorge();
    //  String? test = await storge.read('token');
    //  print(test);
    // User user = User(email: email);
    print('kkkkkkkkkkkkkkkkkkkkk');

    // print(email);
  }

  @override
  void onReady() async {
    print('tttttttttttttttttt');
    print(id);
    super.onReady();
  }

  void storeMark() {
    for (int i = 0; i < studentlist.length; i++) {
      studentidList.add(studentlist[i].id);
      storeList.add(StudentMarkElement(
          student_Id: studentidList[i],
          mark: mark[i],
          subjectId: subId,
          classId: id,
          year: year,
          type: type));
      print('cccccccccc');
      // print(storeList[0].subId);
      print(subId);
      // print(storeList[i].student_id);
      print(storeList[i].mark);

      // storeList.add(studentlist[i].id);
      // storeList.add(mark[i]);

      // storeList.add('mark:');

      // storeList[i].mark = mark;

      // storeList[i].mark ;
      map["student_id"] = studentlist;
      map["mark"] = mark;

      // map.forEach((key, value) {
      //   map1.add(map(key, value));
      // });
      // map1["student_id"]  studentlist[i].id;
    }
    print('9999');
    // print(storeList[0].subId);
    // print(storeList[0].student_id);
    var jsonResponce = jsonEncode(storeList);

    print(jsonResponce);
    // print(studentidList);
    // print(mark);
    //print(',,,,,,,,,,,,,');

    // print(map);
    // print(map1);
  }

  Future<void> markSend() async {
    await storeservice.storeMark(storeList);
  }
}
