import 'package:futurehope/model/profile_model.dart';
import 'package:futurehope/service/profile_service.dart';
import 'package:get/get.dart';

class TeacherProfileController extends GetxController {
  List<Datum> userdata = [];
  ProfileService service = ProfileService();
  Future<void> profile() async {
    userdata = await service.profile();
  }

  // String FullName = 'Rama Alsobt';
  // String experience = 'Studied at the Faculty of Mathematics';
  // // String FatherName='Akram';
  // String number = '2400';
  // String salary = '100,000';

  // String Email = 'rama1234@gmail.com';
}
