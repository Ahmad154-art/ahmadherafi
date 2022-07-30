//import 'package:flutter/cupertino.dart';

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:futurehope/controller/classcontroller.dart';
import 'package:futurehope/controller/exam_type_controller.dart';
import 'package:futurehope/controller/mark_store_controller.dart';
import 'package:futurehope/controller/student_name_controller.dart';
import 'package:futurehope/controller/subject_controller.dart';
import 'package:futurehope/service/exam_type_service.dart';
import 'package:futurehope/view/teacher/mark_show.dart';
import 'package:get/get.dart';

import '../../controller/markcontroller.dart';
import 'package:dropdown_search/dropdown_search.dart';

//import '../controller/markcontroller.dart';
//import 'package:programe1/markcontroller.dart';
//import 'package:programe1/splash.dart';

class Mark extends StatelessWidget {
  int? dropdownValue;

  MarkController mark = Get.put(MarkController());
  SubjectController controller = Get.put(SubjectController());
  ClassController class_contoller = Get.put(ClassController());
  StudentNameController student_controller = Get.put(StudentNameController());
  MarkStoreController storeController = Get.put(MarkStoreController());
  ExamTypeController examTypeController = Get.put(ExamTypeController());
  //SubjectController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 20,
          backgroundColor: const Color(0xFFFFFFFF),
          bottom: const TabBar(
            indicatorColor: Color(0xff35007D),
            tabs: [
              Text(
                'add mark',
                style: TextStyle(
                  color: Color(0xff35007D),
                  fontWeight: FontWeight.w800,
                ),
              ),
              Text(
                'show mark',
                style: TextStyle(
                  color: Color(0xff35007D),
                  fontWeight: FontWeight.w800,
                ),
              ),
            ],
          ),
        ),
        body: Form(
          key: mark.formkey,
          child: TabBarView(
            children: [
              GetBuilder<MarkController>(
                  init: MarkController(),
                  builder: (mark) {
                    if (mark.id == 0) {
                      return Container(
                        color: const Color(0xFFEDE7F6),
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            children: [
                              /*Image(image: AssetImage('images/background.png'),
                fit: BoxFit.cover,
                height: double.infinity,
                width: double.infinity,),*/
                              /*Container(
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            child: const Image(image: NetworkImage(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSdcjNWXYruUEIcPu4EHggUd6-YHCAiUSIP8w&usqp=CAU'),
                              fit: BoxFit.cover,
                              height: 200,
                              width: 200,),
                          ),*/
                              /* Icon(Icons.file_copy_rounded,color: Colors.grey,size: 150,),
                          const SizedBox(height: 60),*/
                              Row(
                                children: [
                                  // Expanded(
                                  // ignore: prefer_const_literals_to_create_immutables
                                  Container(
                                    width: 100,
                                    child: DropdownSearch<String>(
                                      mode: Mode.MENU,
                                      showSelectedItems: true,
                                      // ignore: prefer_const_constructors
                                      dropdownSearchDecoration: InputDecoration(
                                        labelText: "Menu mode",
                                        hintText: "country in menu mode",
                                      ),
                                      items: controller.listname,
                                      onChanged: (Value) {
                                        controller.name = Value;
                                        print(controller.name);
                                        controller.selectid();
                                        controller.selectName();
                                      },
                                      // itemAsString: (String ) => controller.subjectList,
                                    ),
                                  ),
                                  Padding(padding: EdgeInsets.only(left: 10)),
                                  Container(
                                    width: 100,
                                    child: DropdownSearch<String>(
                                      mode: Mode.MENU,
                                      showSelectedItems: true,
                                      // ignore: prefer_const_constructors
                                      dropdownSearchDecoration: InputDecoration(
                                        labelText: "Menu mode",
                                        hintText: "country in menu mode",
                                      ),
                                      items: class_contoller.listname,
                                      onChanged: (Value) {
                                        class_contoller.name = Value;
                                        print(class_contoller.name);
                                        class_contoller.selectid();
                                        class_contoller.selectName();
                                      },
                                      // itemAsString: (String ) => controller.subjectList,
                                    ),
                                  ),
                                  Padding(padding: EdgeInsets.only(left: 10)),
                                  Container(
                                    margin: EdgeInsets.only(top: 11),
                                    width: 100,
                                    child: const TextField(
                                      keyboardType: TextInputType.datetime,
                                    ),
                                  ),

                                  // DropdownButton(
                                  //   items: const [
                                  //     DropdownMenuItem(
                                  //       child: Text("Dietetics"),
                                  //       value: 1,
                                  //     ),
                                  //     DropdownMenuItem(
                                  //       child: Text("Drinks"),
                                  //       value: 2,
                                  //     ),
                                  //     DropdownMenuItem(
                                  //       child: Text("Detergents"),
                                  //       value: 3,
                                  //     ),
                                  //   ],
                                  //   onChanged: (value) {
                                  //     setState(() {
                                  //       dropdownValue = value;
                                  //     });
                                  //   },
                                  // ),
                                  // const Text('Subject'),
                                  // const SizedBox(width: 5,),
                                  // const Text(':'),
                                  // Padding(
                                  //   padding:
                                  //       const EdgeInsetsDirectional.only(
                                  //     bottom: 25,
                                  //   ),
                                  //   child: Container(
                                  //       width: 80, child: TextFormField()
                                  //       ),
                                  // ),

                                  //  ),
                                  // Expanded(
                                  //   child: Row(children: [
                                  //     const Text('Class'),
                                  //     const SizedBox(
                                  //       width: 5,
                                  //     ),
                                  //     const Text(':'),
                                  //     Padding(
                                  //       padding:
                                  //           const EdgeInsetsDirectional.only(
                                  //         bottom: 25,
                                  //       ),
                                  //       child: Container(
                                  //           width: 80, child: TextFormField()),
                                  //     ),
                                  //   ]),
                                  // ),
                                ],
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Row(children: [
                                      const Text('Exame 1'),
                                      Radio<bool>(
                                          // focusColor:const Color(0xff35007D),
                                          //hoverColor:const Color(0xff35007D) ,
                                          activeColor: const Color(0xff35007D),
                                          value: false,
                                          groupValue: mark.check,
                                          onChanged: (val) {
                                            // mark.radio(val!);
                                            // print(mark.check);
                                            mark.increment();
                                            print(mark.id);
                                          }),
                                    ]),
                                  ),
                                  Expanded(
                                    child: Row(children: [
                                      const Text('Exame 2'),
                                      Radio(
                                          activeColor: const Color(0xff35007D),
                                          value: false,
                                          groupValue: true,
                                          onChanged: (va) {
                                            mark.increment();
                                            print(mark.id);
                                          }),
                                    ]),
                                  ),
                                  Expanded(
                                    child: Row(children: [
                                      const Text('Final 1'),
                                      Radio(
                                          activeColor: const Color(0xff35007D),
                                          value: true,
                                          groupValue: true,
                                          onChanged: (va) {
                                            mark.increment();
                                            print(mark.id);
                                          }),
                                    ]),
                                  ),
                                ],
                              ),
                              // const SizedBox(height: 5,),
                              Row(
                                children: [
                                  Expanded(
                                    child: Row(children: [
                                      const Text('Exame 3'),
                                      Radio<bool>(
                                          // focusColor:const Color(0xff35007D),
                                          //hoverColor:const Color(0xff35007D) ,
                                          activeColor: const Color(0xff35007D),
                                          value: false,
                                          groupValue: mark.check,
                                          onChanged: (val) {
                                            // mark.radio(val!);
                                            // print(mark.check);
                                            mark.increment();
                                            print(mark.id);
                                          }),
                                    ]),
                                  ),
                                  Expanded(
                                    child: Row(children: [
                                      const Text('Exame 4'),
                                      Radio(
                                          activeColor: const Color(0xff35007D),
                                          value: false,
                                          groupValue: true,
                                          onChanged: (va) {
                                            mark.increment();
                                            print(mark.id);
                                          }),
                                    ]),
                                  ),
                                  Expanded(
                                    child: Row(children: [
                                      const Text('Final 2'),
                                      Radio(
                                          activeColor: const Color(0xff35007D),
                                          value: true,
                                          groupValue: true,
                                          onChanged: (va) {
                                            mark.increment();
                                            print(mark.id);
                                          }),
                                    ]),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              GestureDetector(
                                onTap: () {
                                  onTapped();
                                  mark.increment();
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(40),
                                  ),
                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                  child: Container(
                                    height: 30,
                                    width: 250,
                                    child: const Center(
                                      child: Text(
                                        'add table',
                                        style: TextStyle(
                                          color: Color(0xFFFFFFFF),
                                        ),
                                      ),
                                    ),
                                    color: const Color(0xff35007D),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: const Icon(
                                  Icons.file_copy_outlined,
                                  color: Color(0xff35007D),
                                  size: 150,
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    }
                    /* mark table */

                    else {
                      return Container(
                        color: const Color(0xFFEDE7F6),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.only(
                            start: 10,
                            end: 10,
                            top: 10,
                          ),
                          child: Column(
                            children: [
                              /*  Row(
                              children: [
                                     Expanded(
                                       child: Row(
                      children:[
                                        Text('Subject'),
                                    SizedBox(width: 5,),
                                    Text(':'),
                                    Padding(
                                        padding: const EdgeInsetsDirectional.only(
                                          bottom: 25,
                                        ),
                                        child: Container(
                                            width: 80,
                                            child: TextFormField()),
                                    ),
                                          ]),
                                     ),
                                      Expanded(
                                          child: Row(
                                        children:[
                                        Text('Class'),
                                        SizedBox(width: 5,),
                                        Text(':'),
                                        Padding(
                                          padding: const EdgeInsetsDirectional.only(
                                            bottom: 25,
                                          ),
                                          child: Container(
                                              width: 80,
                                              child: TextFormField()),
                                        ),
                                              ]),
                                        ),

                              ],
                            ),
                           Row(
                             children: [
                               Expanded(
                                 child: Row(
                                     children: [
                                     Text('Exame 1'),
                                 Radio<bool>(
                                  // focusColor:const Color(0xff35007D),
                                   //hoverColor:const Color(0xff35007D) ,
                                   activeColor: const Color(0xff35007D),
                                     value: false ,
                                     groupValue: mark.check,
                                     onChanged: (val){
                                    // mark.radio(val!);
                                  // print(mark.check);
                                       mark.increment();
                                       print(mark.id);
                                   }),
                                     ]),
                               ),
                               Expanded(
                                 child: Row(
                                     children: [
                                       Text('Exame 2'),
                                       Radio(
                                           activeColor: const Color(0xff35007D),
                                           value: true,
                                           groupValue: true,
                                           onChanged: (va){
                                             mark.increment();
                                             print(mark.id);
                                           }),
                                     ]),
                               ),
                               Expanded(
                                 child: Row(
                                     children: [
                                       Text('Final'),
                                       Radio(
                                           activeColor: const Color(0xff35007D),
                                           value: true,
                                           groupValue: true,
                                           onChanged: (va){
                                             mark.increment();
                                           print(mark.id);
                                           }),
                                     ]),
                               ),
                             ],
                           ) ,
                           SizedBox(height: 13,),*/
                              /*  Row (
                             mainAxisAlignment: MainAxisAlignment.end,
                             children: [
                               GestureDetector(
                                 onTap: () {
                                   //print(mark.markeditingcontroller);
                                   //print(mark.markeditingcontroller.text);
                                   if(mark.formkey.currentState!.validate()){
                                     print(mark.markName);
                                   }
                                   // print(mark.markName);
                                  //  if(id==)
                                   mark.decrement();
                                   //mark.id=0;


                                 },
                                 child: Container(
                                   decoration: BoxDecoration(
                                     borderRadius: BorderRadius.circular(40),),
                                   clipBehavior: Clip.antiAliasWithSaveLayer,
                                   child: Container(
                                     height: 30,
                                     width: 100,
                                     child: const Center(
                                       child: Text('Expert',
                                         style: TextStyle(color: Color(0xFFFFFFFF),),),),
                                     color: const Color(0xff35007D),
                                   ),
                                 ),
                               ),
                             ],),*/
                              Expanded(
                                child: Obx(() {
                                  if (class_contoller.isLoading.isTrue) {
                                    return const Center(
                                      child: CircularProgressIndicator(
                                        color: Colors.purple,
                                      ),
                                    );
                                  }
                                  return ListView.separated(
                                      itemBuilder: (context, index) {
                                        /*  if(mark.table==0){
                                       return  ;
                                     }*/
                                        return buildItem(index);
                                      },
                                      separatorBuilder: (context, index) =>
                                          Padding(
                                            padding: const EdgeInsetsDirectional
                                                .only(
                                              start: 10,
                                              end: 10,
                                            ),
                                            child: Container(
                                              height: 1,
                                              color: const Color(0xff35007D),
                                            ),
                                          ),
                                      itemCount:
                                          class_contoller.studentlist.length);
                                }),
                                flex: 8,
                              ),
                              Expanded(
                                flex: 1,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        class_contoller.storeMark();
                                        onPressed();
                                        //print(mark.markeditingcontroller);
                                        //print(mark.markeditingcontroller.text);
                                        if (mark.formkey.currentState!
                                            .validate()) {
                                          print(mark.markName);
                                        }
                                        // print(mark.markName);
                                        //  if(id==)
                                        mark.decrement();
                                        //mark.id=0;
                                      },
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(40),
                                        ),
                                        clipBehavior:
                                            Clip.antiAliasWithSaveLayer,
                                        child: Container(
                                          height: 30,
                                          width: 100,
                                          child: const Center(
                                            child: Text(
                                              'send',
                                              style: TextStyle(
                                                color: Color(0xFFFFFFFF),
                                              ),
                                            ),
                                          ),
                                          color: const Color(0xff35007D),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    }
                  }),
              /*  if(id==0){
                 // print ('name');
              return Text('data');},*/
              //return Text('data');

              /* else {
                 // print('nf');
               Text('data');}*/
              /* show mark */
              GetBuilder<MarkController>(
                  init: MarkController(),
                  builder: (mark2) {
                    return Container(
                      width: double.infinity,
                      color: const Color(0xFFEDE7F6),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  width: 100,
                                  child: DropdownSearch<String>(
                                    mode: Mode.MENU,
                                    showSelectedItems: true,
                                    // ignore: prefer_const_constructors
                                    dropdownSearchDecoration: InputDecoration(
                                      labelText: "Menu mode",
                                      hintText: "Subject in menu mode",
                                    ),
                                    items: examTypeController.listnamesub,
                                    onChanged: (Value) {
                                      examTypeController.subName = Value;
                                      print(examTypeController.subName);
                                      examTypeController.selectidSub();
                                      examTypeController.selectNameSub();
                                    },
                                    // itemAsString: (String ) => controller.subjectList,
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(left: 10)),
                                Container(
                                  width: 100,
                                  child: DropdownSearch<String>(
                                    mode: Mode.MENU,
                                    showSelectedItems: true,
                                    // ignore: prefer_const_constructors
                                    dropdownSearchDecoration: InputDecoration(
                                      labelText: "Menu mode",
                                      hintText: "Class in menu mode",
                                    ),
                                    items: examTypeController.listname,
                                    onChanged: (Value) {
                                      examTypeController.name = Value;
                                      print(']]]]]');
                                      print(examTypeController.name);
                                      examTypeController.selectid();
                                      examTypeController.selectName();
                                    },
                                    // itemAsString: (String ) => controller.subjectList,
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(left: 10)),
                                Container(
                                  margin: EdgeInsets.only(top: 11),
                                  width: 100,
                                  child: TextField(
                                    keyboardType: TextInputType.datetime,
                                    decoration: const InputDecoration(
                                      hintText: 'Year',
                                    ),
                                    onChanged: (value) {
                                      examTypeController.year = value;
                                      // print(examTypeController.year);
                                    },
                                  ),
                                ),
                                // const Text('Class'),
                                // Expanded(
                                //   child: Radio(
                                //     value: false,
                                //     groupValue: false,
                                //     onChanged: (val) {},
                                //   ),
                                // ),
                                // Expanded(
                                //   child: Radio(
                                //     value: false,
                                //     groupValue: false,
                                //     onChanged: (val) {},
                                //   ),
                                // ),
                                // Expanded(
                                //   child: Radio(
                                //     value: false,
                                //     groupValue: false,
                                //     onChanged: (val) {},
                                //   ),
                                // ),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            // Row(
                            //   children: [
                            //     const Text('Years'),
                            //     Expanded(
                            //       child: Radio(
                            //         value: false,
                            //         groupValue: false,
                            //         onChanged: (val) {},
                            //       ),
                            //     ),
                            //     Expanded(
                            //       child: Radio(
                            //         value: false,
                            //         groupValue: false,
                            //         onChanged: (val) {},
                            //       ),
                            //     ),
                            //     Expanded(
                            //       child: Radio(
                            //         value: false,
                            //         groupValue: false,
                            //         onChanged: (val) {},
                            //       ),
                            //     ),
                            //   ],
                            // ),
                            const SizedBox(
                              height: 20,
                            ),
                            GestureDetector(
                              onTap: () {
                                examTypeFunc();
                                // mark.increment();
                                mark2.len = 5;
                                mark2.incrementI();
                                print(mark2.i);
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(40),
                                ),
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                child: Container(
                                  height: 30,
                                  width: 250,
                                  child: const Center(
                                    child: Text(
                                      'Show ',
                                      style: TextStyle(
                                        color: Color(0xFFFFFFFF),
                                      ),
                                    ),
                                  ),
                                  color: const Color(0xff35007D),
                                ),
                              ),
                            ),
                            const SizedBox(height: 30),
                            Expanded(
                              child: Obx(() {
                                if (examTypeController.isLoading.isTrue) {
                                  return const Center(
                                    child: CircularProgressIndicator(
                                      color: Colors.purple,
                                    ),
                                  );
                                }
                                return ListView.separated(
                                  itemBuilder: (context, index) {
                                    if (mark2.i == 0) {
                                      mark2.len = 1;
                                      return Center(
                                        child: Text(
                                          'Select choises to show mark',
                                          style: TextStyle(
                                              color: Colors.grey[600]),
                                        ),
                                      );
                                    } else {
                                      // mark2.len=5;
                                      return buildShow(index);
                                    }
                                  },
                                  separatorBuilder: (context, index) {
                                    return const SizedBox(
                                      height: 10,
                                    );
                                  },
                                  itemCount: examTypeController.examList.length,
                                );
                              }),
                            ),

                            /*
                     Container(
                       //width: double.infinity,
                     //  height: 60,
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(10),
                           color: Colors.white,
                         ),
                         clipBehavior: Clip.antiAliasWithSaveLayer,
                         child: Row(
                          // crossAxisAlignment: CrossAxisAlignment.,
                           children: [
                             Container(
                              width: 8,
                               height: 60,
                               color: Color(0xFF7E57C2),
                             ),
                             SizedBox(width: 20),
                             Column(
                               crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                 Text('Exam1'),
                                 SizedBox(height:5),
                                 Text('25/5/2022'),
                               ],
                             ),

                           ],
                         )),
                            SizedBox(height: 10,),
                            Container(
                              //width: double.infinity,
                              //  height: 60,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white,
                                ),
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                child: Row(
                                  // crossAxisAlignment: CrossAxisAlignment.,
                                  children: [
                                    Container(
                                      width: 8,
                                      height: 60,
                                      color: Color(0xFFFFEE58),
                                    ),
                                    SizedBox(width: 20),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text('Exam2'),
                                        SizedBox(height:5),
                                        Text('18/6/2022'),
                                      ],
                                    ),

                                  ],
                                )),
                            */
                          ],
                        ),
                      ),
                    );
                  }),

              /* const Image(image: AssetImage('images/background.png'),
             fit: BoxFit.cover,
             height: double.infinity,
            width: double.infinity,),*/
            ],
          ),
        ),
        /* Stack(
            children: [
              const Image(
              image: AssetImage('images/background.png'),
              fit: BoxFit.cover,),*/
        /*  Container(
              width: 100,
              height: 100,
              child: Stack(
                children:[
                  Container(
                    color: Color(0xff35007D),
                  ),
      Container(
        decoration: const  BoxDecoration(
           borderRadius: BorderRadiusDirectional.only(
                      topStart:  Radius.circular(40),
                      topEnd:  Radius.circular(40),
                    ),
         // color: Color(0xff35007D),
        ),
        child:const Image(image: AssetImage('images/background.png'),
       // fit: BoxFit.cover,
          width: 50,
          height: 50,
        ),),
               /* Container(
                  decoration: const  BoxDecoration(
                    borderRadius: BorderRadiusDirectional.only(
                      topStart:  Radius.circular(40),
                      topEnd:  Radius.circular(40),
                    ),
                    //color: Color(0xff35007D),
                  ),
                  child:
          TabBarView(
                    children: [
                      //*****first child*****//
                  /*Stack(
                    children:[
                       Image(image: AssetImage('images/background.png'),
                       fit: BoxFit.cover,),*/
                      Container(
                        decoration: const  BoxDecoration(
                          borderRadius: BorderRadiusDirectional.only(
                            topStart:  Radius.circular(40),
                            topEnd:  Radius.circular(40),
                          ),
                         // color: Colors.grey,

                        ),
                        width:100 ,
                        child: Column(
                          children: const[
                        Image(image: AssetImage('images/table.png'),
                        ),
                          ],
                        ),



                    ),
                  // ],
                 // ),

                      //*****Second child*****//
                      Stack(
                        children:[ Image(image: AssetImage('images/background.png'),
                          fit: BoxFit.cover,),],
                      ),

                      //const Text('show mark'),
                    ],
                  ),

        ),*/
    ],
              ),
            ),*/
      ),
    );
    /* Scaffold(
      appBar: AppBar(

       /* leading: IconButton(
          onPressed: (){
            Drawer();},
          icon: Icon(Icons.menu,),
        ),*/
        title:
      const Text('Mark',),

      bottom: ,
      ),
    );*/
  }
  //List<>lista

  Widget buildItem(id) {
    return Row(
      children: [
        // ignore: unnecessary_string_interpolations
        Container(
          width: 150,
          child: Text(
              ' ${class_contoller.studentlist[id].firstName} ${class_contoller.studentlist[id].lastName}'),
        ),
        // Container(width: 25,),
        // const SizedBox(width: 75),
        Padding(padding: EdgeInsets.only(left: 50)),
        Container(
          width: 100,
          child: Padding(
            padding: const EdgeInsetsDirectional.only(
              bottom: 5,
            ),
            child: TextFormField(
              textInputAction: TextInputAction.next,
              // onEditingComplete: () => FocusScope.of(context).nextFocus(),
              //             onSaved: (dynamic value){
              // storeController.store = value;
              //               print(storeController.store);
              //               storeController.mark.add(value);
              //               print(storeController.mark);

              //             },
              // onChanged: (value) {
              //   storeController.store = value;
              //   print(storeController.store);
              //   storeController.mark.add(value);
              //   print(storeController.mark);
              // },
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: const Color(0xff35007D),
                  ),
                ),
                /*border: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xff35007D),)
                ),*/
                // bor
                /* fillColor:Color(0xff35007D),
                hoverColor: Color(0xff35007D),
                focusColor: Color(0xff35007D),*/
              ),
              // controller:mark.markeditingcontroller,
              cursorColor: const Color(0xff35007D),
              //  onChanged: (value){print(mark.markeditingcontroller);},
              /* onSaved: (va){
                //mark.markeditingcontroller=va;
                print(mark.markeditingcontroller);},*/
              onFieldSubmitted: (val) {
                // mark.markeditingcontroller=val;
                //print(mark.markeditingcontroller!.text);
                // class_contoller.store = val;
                // print(class_contoller.store);
                class_contoller.mark.add(val);
                print(class_contoller.mark);
              },
              validator: (value) {
                if (value!.isEmpty) {
                  return "input mark";
                } else {
                  return null;
                }
              },
            ),
          ),
        ),
        // Padding(padding: EdgeInsets.only(right: 50)),
      ],
    );
  }

  Widget buildShow(index) {
    return GestureDetector(
      onTap: () {
        examTypeController.type = examTypeController.examList[index].type;
        markShowFunc();
        
        print('qqqqttttt');
        print(examTypeController.type);
        Get.to(DisplayMark1());
      },
      child: Container(
          //width: double.infinity,
          //  height: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Row(
            // crossAxisAlignment: CrossAxisAlignment.,
            children: [
              Container(
                width: 8,
                height: 60,
                color: const Color(0xFF7E57C2),
              ),
              const SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Text(examTypeController.examList[index].type),
                  const SizedBox(height: 5),
                  // const Text('25/5/2022'),
                ],
              ),
            ],
          )),
    );
  }

  Future<bool> onTapped() async {
    await class_contoller.sendClass();
    if (class_contoller.classStatus) {
      return true;
      // sharepref!.getString('token');
      //Get.toNamed("/code");
    } else {
      return false;
    }
    //  Get.to(Code());
  }

  void onPressed() async {
    await class_contoller.markSend();
  }

  Future<void> examTypeFunc() async {
    await examTypeController.examType();
  }

  Future<void> markShowFunc() async {
    await examTypeController.showMark();
  }
}
/*Icon(
                      Icons.circle,
                      color: id== 0? Colors.blue :Colors.white  ,
                      size:6,
                    ),*/
 /*
 Widget buildItem(){
   return Row(
     children: [

       Text('rama'),
       SizedBox(width: 20),
       TextFormField(
         controller:,
         cursorColor: Color(0xff35007D) ,

       ),
     ],
   );
 }*/