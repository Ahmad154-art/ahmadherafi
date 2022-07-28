 import 'package:flutter/material.dart';
import 'package:get/get.dart';

  class TaskController extends GetxController{
    int page=0;
    int len=1;
     increment(){
       page++;
       update();
     }
    decrement(){
      page--;
      update();
    }
  }
