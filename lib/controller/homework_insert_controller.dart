import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../view/teacher/task_display.dart';


class Task2Controller extends GetxController{
  var selactedclass;
  var selactedsub;
  var selactedpagenum;
  var selactdescription;
  var desceditingcontroller=TextEditingController();
  var pagenumeditingcontroller=TextEditingController();
  var chageclass;
  var changesub;
  var changenumpageditingcontroller=TextEditingController();
  var changenumpage;
  var changedescriptioneditingcontroller=TextEditingController();
  var changedescription;


/*
  List<TaskModel>tasks=[
    TaskModel('physics', 'Tenth','65','This homework just for tomorrow'),
    TaskModel('science', 'eleventh','54','Write these exercises in your notebook '),
    TaskModel('physics', 'Bacalory','84','try to solve exercises and draw its table'),
    TaskModel('chemistry', 'Tenth','50','The exersices 4 & 5 is deleted'),
    TaskModel('science', 'eleventh','45','This homework just for tomorrow'),
    TaskModel('physics', 'Tenth','22','Write these exercises in your notebook'),
    TaskModel('chemistry', 'Bacalory','42','The exersices 5 & 3 is deleted'),
  ];*/
  //var val;


  selectsub(String val){
    selactedsub=val;
    update();
  }
  selectclass(String val){
    selactedclass=val;
    update();
  }
  selectpagenum(String val){
    selactedpagenum=val;
    update();
  }
  changeSub(String val){
    changesub =val;
    update();
  }
  changeclass(String clas){
    chageclass=clas;
    update();
  }
  changepagenum(String val){
    changenumpage=val;
    update();
  }
  editdialog(String sub,String clas,String pa,String des){
    DisplayTask(sub,clas,pa, des);
    update();
  }

}
class TaskModel{
  String sub;
  String num;
  String pagenum;
  String desc;
  TaskModel(this.sub,this.num,this.pagenum,this.desc);

}