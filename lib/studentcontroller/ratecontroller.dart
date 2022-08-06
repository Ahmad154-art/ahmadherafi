import 'package:futurehope/model/student_rate_model.dart';
import 'package:futurehope/service/student_rate_service.dart';
import 'package:get/get.dart';

class RateController extends GetxController {
  var isLoading = true.obs;
  var index;
  int i = 0;
  List<SecusessElement> rate = [];
  RateService service = RateService();
  Future<void> result() async {
    rate = await service.rate();
    isLoading(false);
    for (i = 0; i < rate.length; i++) {
      // index=   index+1;
      // i++;
      // index++;
      // index = index + 1;
      // index = i++ ;
    //  print(i);
      // print(rate[i].markAverage);
    }

    // print(rate[0].markAverage.toDouble());
    // update();
  }

  @override
  void onInit() {
   
    super.onInit();
  }

  var y = 97.0;
  List<double> type = [0, 1, 2, 3, 4, 5];
  List<double> avg = [90, 80, 70, 60, 50, 40];
}
