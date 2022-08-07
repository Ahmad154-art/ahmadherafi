import 'package:futurehope/model/student_absant_model.dart';
import 'package:futurehope/service/percent_service.dart';
import 'package:futurehope/service/student_absant_service.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AbsantStuController extends GetxController {
  var presence;
  var percentAbsant;
  var percentStatus = true;
  var load = true.obs;
  PercentService percentService = PercentService();
  List<AbsantElement> absence = [];
  StudentabsantService service = StudentabsantService();
  var isLoading = true.obs;
  Future<void> studentAbsant() async {
    absence = await service.absant();
    isLoading(false);
    update();
  }

  Future<void> percent() async {
    percentStatus = await percentService.percent();
    SharedPreferences prefs = await SharedPreferences.getInstance();
    presence = prefs.getInt("presence");
    percentAbsant = prefs.getInt("absant");
    load(false);
    print(presence);
    print(percentAbsant);

    update();
  }

  List<AbsantModel> absant = [
    AbsantModel('2-8-2022', 'Absant', 'he is sick'),
    AbsantModel('5-5-2022', 'Delay', 'he is sick'),
    AbsantModel('2-8-2022', 'Absant', 'he is sick'),
    AbsantModel('2-8-2022', 'Absant', 'he is sick'),
  ];
}

class AbsantModel {
  String? date;
  String? type;
  String? reason;
  AbsantModel(this.date, this.type, this.reason);
}
