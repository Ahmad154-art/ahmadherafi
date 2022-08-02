import 'dart:ffi';

import 'package:futurehope/model/subject_model.dart';
import 'package:futurehope/model/task_index_model.dart';
import 'package:futurehope/service/class_service.dart';
import 'package:futurehope/service/subject_service.dart';
import 'package:futurehope/service/task_delete_service.dart';
import 'package:futurehope/service/task_index_service.dart';
import 'package:futurehope/service/task_store_service.dart';
import 'package:futurehope/service/task_update_service.dart';
import 'package:get/get.dart';

import '../model/class_model.dart';

class TaskIndexController extends GetxController {
  //class
  ClassService classService = ClassService();
  List<int> classIdList = [];
  List<String> classNameList = [];
  late List<TeacherClass> classtlist;
  var className;
  var classId;
//sub
  SubjectService servicesub = SubjectService();
  List<int> subjectIdList = [];
  List<String> subjectNameList = [];
  late List<TeacherSubject> subjectlist;
  var subjectName;
  var subjectId;
  //other
  var pageNumber;
  var description;
  TaskStoreService service = TaskStoreService();
  var taskStatus = true;

  List<TheDataIs> info = [];
  TaskIndexService taskIndexService = TaskIndexService();
  var t;
  var isLoading = true.obs;

  //************** task update var */
  var classIdUpdate;
  var classNameUpdate;
  var subIdUpdate;
  var subNameUpdate;
  var pageNumberUpdate;
  var descreptionUpdate;
  var taskId;
  var load = true.obs;

//*****task delete */
  var taskIdDelete;

  @override
  void onInit() async {
    classtlist = await classService.getClass();
    for (int i = 0; i < classtlist.length; i++) {
      classNameList.add(classtlist[i].name);
      classIdList.add(classtlist[i].id);
    }
    subjectlist = await servicesub.getSubject();
    for (int i = 0; i < subjectlist.length; i++) {
      subjectNameList.add(subjectlist[i].name);
      subjectIdList.add(subjectlist[i].id);
    }
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  void selectid() {
    int index = classNameList.indexOf(className);
    classId = classIdList[index];
    
    //select = classId;
    // print(select);
    print('%%%%%%%%%%%%%%%%%%%');
    print(classId);
  }

  void selectName() {
    int index = classNameList.indexOf(className);
    className = classNameList[index];
    
    print(className);
  }

  void selectidSub() {
    int index = subjectNameList.indexOf(subjectName);
    subjectId = subjectIdList[index];
    
    print(subjectId);
  }

  void selectNameSub() {
    int index = subjectNameList.indexOf(subjectName);
    subjectName = subjectNameList[index];
    

    print(subjectName);
  }

  Future<void> taskIndex() async {
    info = await taskIndexService.taskIndex(classId, subjectId);
    isLoading(false);
  }

//*******************task update */
  void selectidupdate() {
    int index = classNameList.indexOf(classNameUpdate);
    classIdUpdate = classIdList[index];
    //select = classId;
    // print(select);
    print('%%%%%%%%%%%%%%%%%%%');
    print(classIdUpdate);
  }

  void selectNameupdate() {
    int index = classNameList.indexOf(classNameUpdate);
    classNameUpdate = classNameList[index];
    print(classNameUpdate);
  }

  void selectidSubupdate() {
    int index = subjectNameList.indexOf(subNameUpdate);
    subIdUpdate = subjectIdList[index];
    print(subIdUpdate);
  }

  void selectNameSubupdate() {
    int index = subjectNameList.indexOf(subNameUpdate);
    subNameUpdate = subjectNameList[index];
    print(subNameUpdate);
  }

  TaskUpdateService updateService = TaskUpdateService();

  Future<void> taskUpdate() async {
    await updateService.taskUpdate(taskId, subIdUpdate, classIdUpdate,
        descreptionUpdate, pageNumberUpdate);
    load(false);
  }

  TaskDeleteService deleteService = TaskDeleteService();
  Future<void> taskDelete() async {
    await deleteService.taskDelete(taskIdDelete);
  }
}
