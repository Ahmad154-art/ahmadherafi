import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:futurehope/view/teacher/writetaskteacher.dart';
import 'package:get/get.dart';

import '../../controller/homeworkcontroller.dart';

//import '../controller/homeworkcontroller.dart';
// import 'package:programe1/taskcontroller.dart';
// import 'package:programe1/writetask.dart';
   
   class Homework extends StatelessWidget {
     const Homework({Key? key}) : super(key: key);
   
     @override
     Widget build(BuildContext context) {
       return Scaffold(
         body: Container(
           color: Colors.grey[200],
           child: Padding(
             padding: const EdgeInsets.all(20.0),
             child: Column(
               children: [
                 Expanded(
                   flex: 1,
                   // ignore: sized_box_for_whitespace
                   child: Container(
                     height: 250,
                     width: double.infinity,
                     //color: Colors.amber,
                     child: Stack(

                       children: [
                         Stack(
                           // alignment: AlignmentDirectional.bottomEnd,
                           children:[
                     Container(
                     decoration: const BoxDecoration(
                     borderRadius: BorderRadiusDirectional.only(
                     topStart:  Radius.circular(20),
               topEnd: Radius.circular(20),
             ),),
               clipBehavior: Clip.antiAliasWithSaveLayer,
               child: Container(
                   height: 200,
                   width: double.infinity,
                color: const Color(0xFF512DA8),
                    child: const Padding(
                      padding: EdgeInsetsDirectional.only(
                        top: 50,
                        start: 30,
                      ),
                      // ignore: unnecessary_const
                      child: const Text('Task',style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,),),
                    ),
                    /*child:Column(
                      children: [
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.only(
                                  bottom: 25,
                                ),
                                child: Container(
                                  width: 80,
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      hintText: 'day',
                                      focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                    cursorColor:Colors.white,
                                  ),

                                ),
                              ),
                              SizedBox(width: 10,),
                              Text(':',
                                style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(width: 10,),
                              Padding(
                                padding: const EdgeInsetsDirectional.only(
                                  bottom: 25,
                                ),
                                child:Container(
                                  width: 60,
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      hintText: 'month',
                                      focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                    cursorColor: Colors.white,

                                  ),

                                ),),
                              SizedBox(width: 10,),
                              Text(':',
                                style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(width: 10,),
                              Padding(
                                padding: const EdgeInsetsDirectional.only(
                                  bottom: 25,
                                ),
                                child: Container(
                                  width: 60,
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      hintText: 'year',
                                      focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                    cursorColor: Colors.white,

                                  ),

                                ),
                              ),
                            ]
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Subject',style: TextStyle(
                                color: Colors.white,
                              ),),
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
                              SizedBox(width: 30,),
                              Text('Class',style: TextStyle(
                                color: Colors.white,
                              ),),
                              SizedBox(width: 5,),
                              Text(':'),
                              Padding(
                                padding: const EdgeInsetsDirectional.only(
                                  bottom: 25,
                                ),
                                child: Container(
                                    width: 80,
                                    child: TextFormField()),
                              )
                            ]),
                      ],
                    ),*/
                      //width: 100,
                    ),
               ),
           ],
             ),
                             // ignore: sized_box_for_whitespace
                             Container(
                               height: 250,
                               width: double.infinity,
                               child: Stack(
                                 alignment: AlignmentDirectional.bottomEnd,
                                 children:[ Padding(
                                   padding: const EdgeInsetsDirectional.only(
                                    // end: 200,
                                     top: 100,
                                   ),
                                   child: Center(
                                     child: Container(
                                       decoration: const BoxDecoration(
                                         borderRadius:  BorderRadius.all(Radius.circular(20),),

                                       ),
                                       clipBehavior: Clip.antiAliasWithSaveLayer,
                                       child: Container(
                                         width: 400,
                                         height: 120,
                                         color:Colors.white,
                                        child:   Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children:[
                                            const SizedBox(width: 10,),
                                            const Text('Add Tasks for subject',
                                            // ignore: unnecessary_const
                                            style: const TextStyle(
                                              fontSize: 20,
                                            ),
                                            ),
                                            const SizedBox(width: 40,),
                                          GestureDetector(
                                            onTap: (){
                                              Get.to(()=>const WriteTask(),);
                                            },
                                            // ignore: prefer_const_constructors
                                            child: CircleAvatar(
                                     backgroundColor: const Color(0xFF512DA8),
                                     radius:30,
                                              // ignore: prefer_const_constructors
                                              child: Icon(Icons.add,
                                              size: 35,
                                                color: Colors.white,
                                              ),

                                   ),
                                          ),
                                          ],
                                        ),
                                       ),
                                     ),
                                   ),
                                 ),
                                 ],
                               ),
                             ),
                           ],
                         ),
                   ),
                 ),

                 GetBuilder<TaskController>(
                   init: TaskController(),
                   builder: (task) {
                     return Expanded(
                       flex: 1,
                       child: ListView.separated(
                           itemBuilder: (context,index){
                             if(task.page==0){
                               return  Column(
                                   children: [
                                   Row(
                                   mainAxisAlignment: MainAxisAlignment.center,
                                   children: [
                                     Padding(
                                       padding: const EdgeInsetsDirectional.only(
                                         bottom: 25,
                                       ),
                                       child: Container(
                                         width: 50,     // ********change 100**********
                                         child: TextFormField(
                                           decoration: const InputDecoration(
                                             hintText: 'day',
                                             // ignore: unnecessary_const
                                             focusedBorder: const UnderlineInputBorder(
                                               borderSide: BorderSide(
                                                 color:  Color(0xff35007D),
                                               ),
                                             ),
                                           ),
                                           cursorColor: const Color(0xff35007D),
                                         ),

                                       ),
                                     ),
                                     const SizedBox(width: 10,),
                                     const Text(':',
                                       // ignore: unnecessary_const
                                       style: const TextStyle(
                                         fontSize: 30,
                                         fontWeight: FontWeight.w400,
                                       ),
                                     ),
                                     const SizedBox(width: 10,),
                                     Padding(
                                       padding: const EdgeInsetsDirectional.only(
                                         bottom: 25,
                                       ),
                                       child:Container(
                                         width: 100,
                                         child: TextFormField(
                                           decoration: const InputDecoration(
                                             hintText: 'month',
                                             // ignore: unnecessary_const
                                             focusedBorder: const UnderlineInputBorder(
                                               borderSide: BorderSide(
                                                 color: Color(0xff35007D),
                                               ),
                                             ),
                                           ),
                                           cursorColor: const Color(0xff35007D),
                                         ),

                                       ),),
                                     const SizedBox(width: 10,),
                                     const Text(':',
                                       // ignore: unnecessary_const
                                       style: const TextStyle(
                                         fontSize: 30,
                                         fontWeight: FontWeight.w400,
                                       ),
                                     ),
                                     const SizedBox(width: 10,),
                                     Padding(
                                       padding: const EdgeInsetsDirectional.only(
                                         bottom: 25,
                                       ),
                                       child: Container(
                                         width: 100,
                                         child: TextFormField(
                                           decoration: const InputDecoration(
                                             hintText: 'year',
                                             focusedBorder: UnderlineInputBorder(
                                               // ignore: unnecessary_const
                                               borderSide: const BorderSide(
                                                 color: Color(0xff35007D),
                                               ),
                                             ),
                                           ),
                                           cursorColor: const Color(0xff35007D),
                                         ),

                                       ),
                                     ),
                                   ]
                               ),
                             Row(
                             mainAxisAlignment: MainAxisAlignment.center,
                             children: [
                             const Text('Subject'),
                             const SizedBox(width: 5,),
                             const Text(':'),
                             Padding(
                             padding: const EdgeInsetsDirectional.only(
                             bottom: 25,
                             ),
                             child: Container(
                             width: 80,
                             child: TextFormField()),
                             ),
                             const SizedBox(width: 30,),
                             const Text('Class'),
                             const SizedBox(width: 5,),
                             const Text(':'),
                             Padding(
                             padding: const EdgeInsetsDirectional.only(
                             bottom: 25,
                             ),
                             child: Container(
                             width: 80,
                             child: TextFormField()),
                             )
                             ]),
                                     GestureDetector(
                                       onTap: () {
                                         task.increment();
                                         task.len=5;
                                       },
                                       child: Container(
                                         decoration: BoxDecoration(
                                           borderRadius: BorderRadius.circular(40),),
                                         clipBehavior: Clip.antiAliasWithSaveLayer,
                                         child: Container(
                                           height: 30,
                                           width: 300,
                                           child: const Center(
                                             child: Text('show',
                                               style: TextStyle(color: Color(0xFFFFFFFF),),),),
                                           color: const Color(0xff35007D),
                                         ),
                                       ),
                                     ),
                                   ]);
                             }
                             else{
                             return buildShow();}

                           },
                           separatorBuilder:  (context,index){
                             return  const SizedBox(height: 10,);},
                           itemCount:task.len,
                         // mark2.len,
                       ),
                     );
                   }
                 ),

               ],
             ),
           ),
         ),
         /*Container(
           width: double.infinity,
           color: const Color(0xFFEDE7F6),
             child: Padding(
               padding: const EdgeInsetsDirectional.only(
                 top: 20,
               ),
               child: Column(
                 children: [
                   Expanded(
                     flex: 1,
                       child: Column(
                         children: [
                           Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                             children: [
                               Padding(
                                 padding: const EdgeInsetsDirectional.only(
                                   bottom: 25,
                                 ),
                                 child: Container(
                                 width: 100,
                                   child: TextFormField(
                                     decoration: InputDecoration(
                                       hintText: 'day',
                                        focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0xff35007D),
                                          ),
                                        ),
                                     ),
                                     cursorColor: Color(0xff35007D),
                                   ),

                             ),
                               ),
                               SizedBox(width: 10,),
                               Text(':',
                                 style: TextStyle(
                                   fontSize: 30,
                                   fontWeight: FontWeight.w400,
                                 ),
                               ),
                               SizedBox(width: 10,),
         Padding(
                 padding: const EdgeInsetsDirectional.only(
                   bottom: 25,
                 ),
                               child:Container(
                                 width: 100,
                                 child: TextFormField(
                                   decoration: InputDecoration(
                                     hintText: 'month',
                                     focusedBorder: UnderlineInputBorder(
                                       borderSide: BorderSide(
                                         color: Color(0xff35007D),
                                       ),
                                     ),
                                   ),
                                   cursorColor: Color(0xff35007D),
                                 ),

                               ),),
                               SizedBox(width: 10,),
                               Text(':',
                                 style: TextStyle(
                                   fontSize: 30,
                                   fontWeight: FontWeight.w400,
                                 ),
                               ),
                               SizedBox(width: 10,),
                               Padding(
                                 padding: const EdgeInsetsDirectional.only(
                                   bottom: 25,
                                 ),
                                 child: Container(
                                   width: 100,
                                   child: TextFormField(
                                     decoration: InputDecoration(
                                       hintText: 'year',
                                       focusedBorder: UnderlineInputBorder(
                                         borderSide: BorderSide(
                                           color: Color(0xff35007D),
                                         ),
                                       ),
                                     ),
                                     cursorColor: Color(0xff35007D),
                                   ),

                                 ),
                               ),
               ]
                           ),
                           Row(
                             mainAxisAlignment: MainAxisAlignment.center,
                               children: [
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
                                 SizedBox(width: 30,),
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
                                 )
                               ]),
                           SizedBox(height: 10,),
                           GestureDetector(
                             onTap: () {},
                             child: Container(
                               decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(40),),
                               clipBehavior: Clip.antiAliasWithSaveLayer,
                               child: Container(
                                 height: 30,
                                 width: 300,
                                 child: const Center(
                                   child: Text('show',
                                     style: TextStyle(color: Color(0xFFFFFFFF),),),),
                                 color: const Color(0xff35007D),
                               ),
                             ),
                           ),
                         ],
                       ),

                   ),
                 /*  Container(
                     child:Row(
                       children: [
                          Text('Subject'),
                         SizedBox(width: 5,),
                         Text(':'),
                         Padding(
                           padding: const EdgeInsetsDirectional.only(
                             bottom: 25,
                           ),
                           child: Container(
                             width: 100,
                               child: TextFormField()),
                         )
                       ]),
                   ),*/
                   Expanded(
                       child: ListView.separated(
                         itemBuilder: (context,index){
                            return buildShow();
                          /* if(mark2.i==0){
                             mark2.len=1;
                             return Center(
                               child: Text(
                                 'Select choises to show mark',
                                 style: TextStyle(color: Colors.grey[600]),),
                             );
                           }
                           else {
                             // mark2.len=5;
                             return buildShow();}
                           */

                         },
                         separatorBuilder:  (context,index){
                           return  SizedBox(height: 10,);},
                         itemCount:5
                         // mark2.len,
                       ),
                   ),

                  /* Expanded(
                     flex: 1,
                     child: Container(
                       width: double.infinity,
                       decoration: BoxDecoration(
                         borderRadius: BorderRadiusDirectional.only(
                           topStart: Radius.circular(20),
                           topEnd: Radius.circular(20),
                         ),
                         color: Color(0xFFD1C4E9),
                       ),
                         clipBehavior: Clip.antiAliasWithSaveLayer,
                         child: Container(
                           child: Text('mmmmmm'),
                         ),
                     ),
                   ),*/
                 ],
               ),
             ),

         ),*/
       );

     }
     Widget buildShow(){
       return  Container(
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
                   const Text('Exam1'),
                   const SizedBox(height:5),
                   const Text('25/5/2022'),
                 ],
               ),

             ],
           ));
     }
   }
/* Container(
                   width: double.infinity,
                   height: 400,
                  child: Stack(
                   // alignment: AlignmentDirectional.bottomEnd,
                   children:[
                   Container(
                     width: double.infinity,
                     height: double.infinity,
                     decoration: BoxDecoration(
                       borderRadius: BorderRadiusDirectional.only(
                         topStart: Radius.circular(20),
                         topEnd: Radius.circular(20),
                       ),
                       color:  Color(0xff35007D),
                     ),
                   ),
                    /* Container(
                       width:double.infinity,
                       height: 600,
                       child: Stack(
                         alignment:AlignmentDirectional.bottomEnd,
                         children: [*/


                             Container(
                               height: 400,
                               width: double.infinity,
                               child: Stack(
                                 alignment: AlignmentDirectional.bottomEnd,
                                 children:[
                                 Padding(
                                   padding: const EdgeInsetsDirectional.only(
                                     top: 200,
                                   ),
                                   child: Container(
                                     width: 200,
                                     height: 100,
                                     color: Colors.amber,
                                   ),
                                 ),
       ]
                               ),
                             //),
                           ),
                         ],
                       ),
                 ),*/
/* SizedBox(height: 30,),
                 Expanded(
                   child: ListView.separated(
                       itemBuilder: (context,index){
                         return buildShow();
                         /* if(mark2.i==0){
                             mark2.len=1;
                             return Center(
                               child: Text(
                                 'Select choises to show mark',
                                 style: TextStyle(color: Colors.grey[600]),),
                             );
                           }
                           else {
                             // mark2.len=5;
                             return buildShow();}
                           */

                       },
                       separatorBuilder:  (context,index){
                         return  SizedBox(height: 10,);},
                       itemCount:5
                     // mark2.len,
                   ),
                 ),*/