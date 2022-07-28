
import 'package:futurehope/controller/subject_controller.dart';
import 'package:get/get.dart';

class SubjectBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<SubjectController>(SubjectController());

    
  }
}
