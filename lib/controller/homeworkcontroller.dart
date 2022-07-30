 import 'package:flutter/material.dart';
import 'package:get/get.dart';


  class TaskController extends GetxController{
    int page=0;
    int len=1;
   var selactedclass;
    var selactedsub;
   var selactedpagenum;
    var selactdescription;
    var taskeditingcontroller=TextEditingController();
    var chageclass;
    var changesub;
    var changenumpageditingcontroller=TextEditingController();
    var changenumpage;
    var changedescriptioneditingcontroller=TextEditingController();
    var changedescription;
    var taskclass;
    var tasksub;


   List<TaskModel>tasks=[
     TaskModel('physics', 'Tenth','65','This homework just for tomorrow'),
     TaskModel('science', 'eleventh','54','Write these exercises in your notebook '),
     TaskModel('physics', 'Bacalory','84','try to solve exercises and draw its table'),
     TaskModel('chemistry', 'Tenth','50','The exersices 4 & 5 is deleted'),
     TaskModel('science', 'eleventh','45','This homework just for tomorrow'),
     TaskModel('physics', 'Tenth','22','Write these exercises in your notebook'),
     TaskModel('chemistry', 'Bacalory','42','The exersices 5 & 3 is deleted'),
   ];


     increment(){
       page++;
       update();
     }
    decrement(){
      page--;
      update();
    }

  
    taskSub(String val){
      tasksub=val;
      update();
    }
    taskClass(String val){
      taskclass=val;
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