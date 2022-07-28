import 'package:get/get.dart';

class ClickController extends GetxController{
  int state=0;
  int len=0;

  incrementState(){
    state++;
    update();
  }


}