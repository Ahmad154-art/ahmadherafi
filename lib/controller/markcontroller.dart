import 'package:flutter/material.dart';
import 'package:futurehope/service/subject_service.dart';
import 'package:get/get.dart';

class MarkController extends GetxController {
  // SubjectService service = SubjectService();
  // @override
  // void onInit() {
  //   super.onInit();
  // }

  // @override
  // void onReady() async {
  //   await service.getSubject();
  //   super.onReady();
  // }

  int id = 0;
  var markeditingcontroller = TextEditingController();
  var check = true;
  int i = 0;
  int len = 1;
  int table = 0;
  String? edit;
  var formkey = GlobalKey<FormState>();

  List<String> markName = [];

  increment() {
    id++;
    update();
  }

  decrement() {
    //  id--;
    id = 0;
    update();
  }

  radio(bool value) {
    check = value;
    update();
  }

  incrementI() {
    i++;
    update();
  }
}
