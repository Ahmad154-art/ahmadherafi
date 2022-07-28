import 'package:get/get.dart';

import '../model/student_name_model.dart';
import '../service/student_name_service.dart';

class StudentNameController extends GetxController {
  StudentNameService studentNameService = StudentNameService();
  var id = 0;
  List<Student> studentlist = [];
  List<String> studentNameList = [];
  List<int> studentidList = [];
  @override
  void onInit() async {
   

    for (int i = 0; i < studentlist.length; i++) {
      studentNameList.add(studentlist[i].firstName);
      studentidList.add(studentlist[i].id);
    }
    print('rrrrrrrrrrrrrr');
    print(studentNameList);
    super.onInit();
  }

  @override
  void onReady() async {
     //studentlist = await studentNameService.getStudentName(1);
    //studentlist = await studentNameService.getStudentName(id);
    print('hhhhhhhhhhhhhhhhh');
    print(studentlist);
    super.onReady();
  }

  Future<void> sendClass() async {
    print('kkkkkkkkkkkkkkkkkkkkk');
  }
}
