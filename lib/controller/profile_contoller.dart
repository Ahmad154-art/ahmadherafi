import 'package:futurehope/model/profile_model.dart';
import 'package:futurehope/service/profile_service.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TeacherProfileController extends GetxController {
  var isLoading = true.obs;
  String? image;
  List<Datum> userdata = [];
  ProfileService service = ProfileService();
  Future<void> profile() async {
    userdata = await service.profile();
    // SharedPreferences prefs = await SharedPreferences.getInstance();
    // prefs.setString("img_url", userdata[0].image);
    // image = prefs.getString("img_url");
    // print('ssssssssss');
    // print(image);
    // isLoading(false);
    update();
  }

  @override
  void onInit() async {
    userdata = await service.profile();
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString("img_url", userdata[0].image);
    image = prefs.getString("img_url");
    print('ssssssssss');
    print(image);
    isLoading(false);
    super.onInit();
  }

  // String FullName = 'Rama Alsobt';
  // String experience = 'Studied at the Faculty of Mathematics';
  // // String FatherName='Akram';
  // String number = '2400';
  // String salary = '100,000';

  // String Email = 'rama1234@gmail.com';
}
