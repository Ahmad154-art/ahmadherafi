import 'package:futurehope/controller/classcontroller.dart';
import 'package:futurehope/model/exam_type_model.dart';
import 'package:futurehope/model/mark_show_model.dart';
//import 'package:futurehope/model/mark_show_model.dart';
import 'package:futurehope/service/exam_type_service.dart';
import 'package:futurehope/service/mark_show_service.dart';
import 'package:futurehope/service/mark_update_service.dart';
import 'package:get/get.dart';

import '../model/class_model.dart';
import '../model/subject_model.dart';
import '../service/class_service.dart';
import '../service/subject_service.dart';

class ExamTypeController extends GetxController {
  List<String> listname = [];
  List<int> listid = [];
  ClassService classService = ClassService();
  late List<TeacherClass> classtlist;
  //ClassController controller = Get.put(ClassController());
  ExamType service = ExamType();
  MarkShow markShowSerrvice = MarkShow();
  List<ResultElement> examList = [];
  var year = '';
  var isLoading = true.obs;
  var classId;
  var name;
  var select;
  late List<TeacherSubject> subjectlis;
  List<String> listnamesub = [];
  List<int> listidsub = [];
  SubjectService servicesub = SubjectService();
  var subId;
  var subName;
  // var subjectId = '';

  // var examStatus = false;
  var type = '';
  var load = true.obs;
  // mark update
  var markId = 0;
  var updateStatus;
  MarkUpdate markUpdate = MarkUpdate();
  var newMark;
  List<int> markIdList = [];
  //end mark update
  List<ResultElementShow> markShowList = [];
  
  @override
  void onInit() async {
    classtlist = await classService.getClass();
    for (int i = 0; i < classtlist.length; i++) {
      listname.add(classtlist[i].name);
      listid.add(classtlist[i].id);
    }
    subjectlis = await servicesub.getSubject();
    for (int i = 0; i < subjectlis.length; i++) {
      listnamesub.add(subjectlis[i].name);
      listidsub.add(subjectlis[i].id);
    }
    print('ffffffffffffffffffffffffffffffffffffffffffffffffff');
    print(listname);

    // classId = controller.id;
    // controller.selectid();
    // print('#####');
    // print(classId);

    super.onInit();
  }

  @override
  void onReady() async {
    // print('%%%%%%%');
    // print(examList[0].type);
    super.onReady();
  }

  void selectid() {
    int index = listname.indexOf(name);
    classId = listid[index];
    //select = classId;
    // print(select);
    print('%%%%%%%%%%%%%%%%%%%');
    print(classId);
  }

  void selectName() {
    int index = listname.indexOf(name);
    name = listname[index];
    print(name);
  }

  void selectidSub() {
    int index = listnamesub.indexOf(subName);
    subId = listidsub[index];
    print(subId);
  }

  void selectNameSub() {
    int index = listnamesub.indexOf(subName);
    subName = listnamesub[index];
    print(subName);
  }

  Future<void> examType() async {
    examList = await service.examType(year, classId, subId);
    update();
    isLoading(false);
  }

  Future<void> showMark() async {
    markShowList = await markShowSerrvice.markShow(year, classId, subId, type);
    update();
    print('ggg');
    print(markShowList[0].id);
    load(false);
    // for (var i = 0; i < markShowList.length; i++) {
    //   print('qqq');
    //   print(markShowList[i].id);
    //   markShowList[i].id = markId;
    //   print(markId);
    // }
  }

  Future<void> updateMark(int index) async {
    // for (int i = 0; i < markShowList.length; i++) {
    //   markIdList.add(markShowList[i].id);
    //   //markIdList[i] = markId;
    //   markId = markIdList[i];
    //   print(markShowList[1].id);
    //   print('www');
    //   print(markShowList[i].id);
    // }
    print('qwqwqw');

    updateStatus = await markUpdate.markUpdate(markId, newMark);
  }
}
