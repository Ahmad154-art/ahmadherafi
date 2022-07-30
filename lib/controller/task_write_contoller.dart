import 'package:futurehope/model/subject_model.dart';
import 'package:futurehope/service/class_service.dart';
import 'package:futurehope/service/subject_service.dart';
import 'package:futurehope/service/task_store_service.dart';
import 'package:get/get.dart';

import '../model/class_model.dart';

class TaskWriteController extends GetxController {
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

  Future<void> taskStore() async {
   
   taskStatus= await service.taskStore(classId, subjectId, pageNumber, description);
  }
}
