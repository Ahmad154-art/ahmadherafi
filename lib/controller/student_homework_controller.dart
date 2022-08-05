import 'package:futurehope/model/details_homework_model.dart';
import 'package:futurehope/service/show_homewrok_service.dart';
import 'package:get/get.dart';

class HomeworkShowController extends GetxController {
  List<DetailsElement> details = [];
  HomeworkShowService service = HomeworkShowService();
  var isLoading = true.obs;
  Future<void> homeworsShow() async {
    details = await service.homeworkshow();
    update();
    isLoading(false);
  }

  List<HomeModel> home = [
    HomeModel('5-5-2022', 'science', 'eleventh', '54',
        'Write these exercises in your notebook '),
    HomeModel(
        '2-8-2022', 'Arabic', 'Tenth', '65', 'This homework just for tomorrow'),
    HomeModel('18-9-2022', 'physics', 'Bacalory', '84',
        'try to solve exercises and draw its table'),
    HomeModel('24-6-2022', 'chemistry', 'Tenth', '50',
        'The exersices 4 & 5 is deleted'),
    HomeModel('12-2-2022', 'English', 'Tenth', '22',
        'Write these exercises in your notebook'),
    HomeModel('28-3-2022', 'chemistry', 'Bacalory', '42',
        'The exersices 5 & 3 is deleted'),
  ];
  @override
  void onInit() async {
    // await service.homeworkshow();
    super.onInit();
  }
}

class HomeModel {
  String? date;
  String? sub;
  String? clas;
  String? pagenum;
  String? desc;
  HomeModel(this.date, this.sub, this.clas, this.pagenum, this.desc);
}
