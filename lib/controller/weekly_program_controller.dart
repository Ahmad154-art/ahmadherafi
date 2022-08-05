import 'package:futurehope/model/weekly_program_model.dart';
import 'package:futurehope/service/weekly_program_service.dart';
import 'package:get/get.dart';

class WeeklyStuController extends GetxController {
  WeeklyProgramService service = WeeklyProgramService();
  List<Datum> data = [];
  var day;
  var isLoading = true.obs;
  List<String> days = [
    'Sunday',
    'Monday',
    'Tuesday',
    'Wensday',
    'Thursday',
  ];

  List<String> sub = ['Algebra', 'French', 'Physics'];
  List<TimeModel> Time = [
    TimeModel('8.00', '8,45'),
    TimeModel('9,00', '9,45'),
    TimeModel('10.00', '10,45'),
    // TimeModel('12,00','12,45'),
    //  TimeModel('1.00','1,45'),
    // TimeModel('9,00','9,45'),
  ];
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  Future<void> weeklyProgram() async {
    data = await service.weeklyProgram(day);
    isLoading(false);
    update();
  }
}

class SubModel {
  //String? time1;
  // String? time2;
  String? namesub;
}

class TimeModel {
  String? time1;
  String? time2;
  TimeModel(this.time1, this.time2);
  //String? namesub;

}
