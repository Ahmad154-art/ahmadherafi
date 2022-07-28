import 'package:futurehope/model/subject_model.dart';
import 'package:futurehope/service/subject_service.dart';
import 'package:get/get.dart';

class SubjectController extends GetxController {
  var subjectTeacherList = [];
  late List<TeacherSubject> subjectlis;
  List<String> listname = [];
  List<int> listid = [];
  SubjectService service = SubjectService();
  var id;
  var name;

  @override
  void onInit() async {
    subjectlis = await service.getSubject();
    for (int i = 0; i < subjectlis.length; i++) {
      listname.add(subjectlis[i].name);
      listid.add(subjectlis[i].id);
    }
    super.onInit();
  }

  void selectid() {
    int index = listname.indexOf(name);
    id = listid[index];
    print(id);
    
  }

  void selectName() {
    int index = listname.indexOf(name);
    name = listname[index];
    print(name);
  }

  @override
  void onReady() async {
    super.onReady();
  }

  // SubjectService service = SubjectService();
  // List<TeacherSubject>? subjectList;

  // List<String> subject = [];
  // var aa = false;
  // Future<void> getSubject() async {
  //   await service.getSubject();
  // }
  // @override
  // void onInit()async {
  //   await service.getSubject();
  //   print(service.subject);
  //   subjectList = service.subject;
  //   print('44444444444');
  //   print(subjectList);

  //   super.onInit();
  // }

  // @override
  // void onReady() async {

  //   subjectList = service.subject;
  //   print('//////////////');
  //   print(subjectList);
  // for (int i = 0; i < subjectList.length; i++) {
  //   subjectList[i].name = subject[i];
  // }
  // print('0000000');
  // print(subject);
  // print('*******');
  // print(subjectList);
  // print(subjectList);
  //   super.onReady();
  // }

}
