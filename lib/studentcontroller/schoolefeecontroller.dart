import 'package:flutter/material.dart';
import 'package:get/get.dart';



class SchoolFeeController extends GetxController{
 int id =0;
 var schoolfeecontroller=TextEditingController();
 bool check=true;
 int i =0;
 int len=1;
 int table=0;
String? edit;
var formkey=GlobalKey<FormState>() ;

List<String>markName=[];

 increment (){
   id++;
   update();
 }

 decrement (){
 //  id--;
   id=0;
   update();
 }

 radio (bool value){
   check=value;
   update();
 }

 incrementI (){
   i++;
   update();
 }

}
