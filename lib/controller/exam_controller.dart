import 'package:futurehope/model/exam_model.dart';
import 'package:futurehope/service/exam_service.dart';
import 'package:get/get.dart';

class ExamController extends GetxController {
  List<FinalExamElement> exam = [];
  ExamService service = ExamService();

  Future<void> examshow() async {
    exam = await service.examshow();
    update();
  }

  List<String> days = [
    'Sunday',
    'Monday',
    'Tuesday',
    'Wensday',
    'Thursday',
  ];

  List<SubModel> model = [
    SubModel('Algebra', '2-8-2020'),
    SubModel('French', '2-8-2020'),
    SubModel('Physics', '2-8-2020'),
    SubModel('Science', '2-8-2020'),
    SubModel('English', '2-8-2020'),
  ];
  List<TimeModel> Time = [
    TimeModel('8.00', '8,45'),
    TimeModel('9,00', '9,45'),
    TimeModel('10.00', '10,45'),
    TimeModel('12,00', '12,45'),
    TimeModel('1.00', '1,45'),
    TimeModel('9,00', '9,45'),
  ];
}

class SubModel {
  String? namesub;
  String? date;
  SubModel(this.namesub, this.date);
}

class TimeModel {
  String? time1;
  String? time2;
  TimeModel(this.time1, this.time2);
}
