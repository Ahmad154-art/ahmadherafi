import 'package:get/get.dart';

class AbsantController extends GetxController {
  int body = 0;
  int count = 1;
  var check = false.obs;
  var ischeck = false.obs;
  var absence = 'absence';
  var presence = 'presence';
 // List<RxBool> blabla = [];
 

  increment() {
    body++;
    update();
  }

  void checkbox() {
    check(!(check.value));
    ischeck(false);
  }

  void checkbox2() {
    ischeck(!(ischeck.value));
    check(false);
  }
}
