/*

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:futurehope/controller/homecontroller.dart';
import 'package:futurehope/view/home.dart';
import 'package:get/get.dart';

import '../components/background.dart';

class WeeklyProgram extends StatefulWidget {
  @override
  State<WeeklyProgram> createState() => _WeeklyProgramState();
}

class _WeeklyProgramState extends State<WeeklyProgram> {
  // Color color = Colors.black;

  // void ontapped() {
  //   setState(() {
  //     color = Colors.white;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Background(
        child: Column(children: [
          AppBar(
            backgroundColor: Colors.purple[200],
          ),
          Container(
            width: double.infinity,
            height: 200,
            color: Colors.purple[200],
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  const Padding(padding: EdgeInsets.only(left: 15)),
                  GestureDetector(
                    child: Container(
                      //  color: color,
                      width: 75,
                      height: 105,
                      child: const Center(
                        child: Text('sunday',
                            // ignore: unnecessary_const
                            style: const TextStyle(
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.bold,
                            )),
                      ),
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(15),
                          ),
                          color: Colors.white
                        //  border: Border(left: BorderSide(color: Colors.purple))
                      ),
                    ),
                    onTap: () {
                      // ontapped();
                      showModalBottomSheet(
                          context: context,
                          builder: (BuildContext context) {
                            return Container(
                              height: 400,
                              decoration: const BoxDecoration(
                                color: Colors.amber,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    topRight: Radius.circular(20)),
                              ),
                            );
                          });
                    },
                  ),
                  const Padding(padding: EdgeInsets.only(left: 15)),
                  GestureDetector(
                    child: Container(
                      width: 75,
                      height: 105,
                      child: const Center(
                        child: Text('Monday',
                            // ignore: unnecessary_const
                            style: const TextStyle(
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.bold,
                            )),
                      ),
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(15),
                          ),
                          color: Colors.purple),
                    ),
                    onTap: () {
                      //  ontapped();
                      showModalBottomSheet(
                          context: context,
                          builder: (BuildContext context) {
                            return Container(
                              height: 400,
                              decoration: const BoxDecoration(
                                  color: Colors.amber,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                      topRight: Radius.circular(20))),
                            );
                          });
                    },
                  ),
                  const Padding(padding: EdgeInsets.only(left: 15)),
                  GestureDetector(
                    child: Container(
                      width: 75,
                      height: 105,
                      //color: Colors.amber,
                      //  color: color,
                      child: const Center(
                        child: Text('Tuesday',
                            // ignore: unnecessary_const
                            style: const TextStyle(
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.bold,
                            )),
                      ),
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(15),
                          ),
                          color: Colors.pink),
                    ),
                    onTap: () {
                      //  ontapped();
                      showModalBottomSheet(
                          context: context,
                          builder: (BuildContext context) {
                            return Container(
                              height: 400,
                              decoration: const BoxDecoration(
                                  color: Colors.amber,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                      topRight: Radius.circular(20))),
                            );
                          });
                    },
                  ),
                  const Padding(padding: EdgeInsets.only(left: 15)),
                  GestureDetector(
                    child: Container(
                      width: 75,
                      height: 105,
                      child: const Center(
                        child: Text('Wednesday',
                            // ignore: unnecessary_const
                            style: const TextStyle(
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.bold,
                            )),
                      ),
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(15),
                          ),
                          color: Colors.pink),
                    ),
                    onTap: () {
                      //  ontapped();
                      showModalBottomSheet(
                          context: context,
                          builder: (BuildContext context) {
                            return Container(
                              height: 400,
                              decoration: const BoxDecoration(
                                  color: Colors.amber,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                      topRight: Radius.circular(20))),
                            );
                          });
                    },
                  ),
                  const Padding(padding: EdgeInsets.only(left: 15)),
                  GestureDetector(
                    child: Container(
                      width: 75,
                      height: 105,
                      child: const Center(
                        child: Text('Thursday',
                            // ignore: unnecessary_const
                            style: const TextStyle(
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.bold,
                            )),
                      ),
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(15),
                          ),
                          color: Colors.pink),
                    ),
                    onTap: () {
                      // ontapped();
                      showModalBottomSheet(
                          context: context,
                          builder: (BuildContext context) {
                            return Container(
                              height: 400,
                              decoration: const BoxDecoration(
                                  color: Colors.amber,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                      topRight: Radius.circular(20))),
                            );
                          });
                    },
                  ),
                ],
              ),
            ),
          ),
        ]),
      ),

//       Background(

//           child: Container(
// child:
// SingleChildScrollView(
//   scrollDirection: Axis.horizontal,
//     child: Container(
//       child: Row(
//         children: [Container(width: 25,height: 25,)],

//         ),

//       )

// ),

//           ),

      // child: Container(

      //   child: Column(
      //     children: [
      //       const Padding(padding: EdgeInsets.symmetric(vertical: 45)),
      //       Row(
      //         children: [
      //           const Padding(padding: const EdgeInsets.only(left: 25)),
      //           Container(
      //             width: 75,
      //             height: 75,
      //             child: const Center(
      //               child: Text('sunday',
      //                   // ignore: unnecessary_const
      //                   style: const TextStyle(
      //                     fontStyle: FontStyle.italic,
      //                     fontWeight: FontWeight.bold,
      //                   )),
      //             ),
      //             decoration: const BoxDecoration(
      //                 color: Colors.purple,
      //                 borderRadius: BorderRadius.all(Radius.circular(15))),
      //           ),
      //         ],
      //       ),
      //       const Padding(padding: const EdgeInsets.only(top: 25)),
      //       Row(
      //         children: [
      //           const Padding(padding: EdgeInsets.only(left: 25)),
      //           Container(
      //             width: 75,
      //             height: 75,
      //             child: const Center(
      //               child: Text('Monday',
      //                   style: TextStyle(
      //                     fontStyle: FontStyle.italic,
      //                     fontWeight: FontWeight.bold,
      //                   )),
      //             ),
      //             decoration: const BoxDecoration(
      //                 color: Colors.purple,
      //                 borderRadius: BorderRadius.all(Radius.circular(15))),
      //           ),
      //         ],
      //       ),
      //       const Padding(padding: EdgeInsets.only(top: 25)),
      //       Row(
      //         children: [
      //           const Padding(padding: const EdgeInsets.only(left: 25)),
      //           Container(
      //             width: 75,
      //             height: 75,
      //             // ignore: prefer_const_constructors
      //             child: Center(
      //               child: const Text('Tuesday',
      //                   style: TextStyle(
      //                     fontStyle: FontStyle.italic,
      //                     fontWeight: FontWeight.bold,
      //                   )),
      //             ),

      //             decoration: const BoxDecoration(
      //                 color: Colors.purple,
      //                 borderRadius: BorderRadius.all(Radius.circular(15))),
      //           ),
      //         ],
      //       ),
      //       const Padding(padding: const EdgeInsets.only(top: 25)),
      //       Row(
      //         children: [
      //           const Padding(padding: const EdgeInsets.only(left: 25)),
      //           Container(
      //             width: 75,
      //             height: 75,
      //             child: const Center(
      //               child:
      //                   // ignore: unnecessary_const
      //                   const Text('Wednesday',
      //                       style: TextStyle(
      //                         fontStyle: FontStyle.italic,
      //                         fontWeight: FontWeight.bold,
      //                       )),
      //             ),
      //             decoration: const BoxDecoration(
      //                 color: Colors.purple,
      //                 borderRadius: BorderRadius.all(Radius.circular(15))),
      //           ),
      //         ],
      //       ),
      //       const Padding(padding: EdgeInsets.only(top: 25)),
      //       Row(
      //         children: [
      //           const Padding(padding: EdgeInsets.only(left: 25)),
      //           Container(
      //             width: 75,
      //             height: 75,
      //             // ignore: prefer_const_constructors
      //             child: Center(
      //               child: const Text('Thursday',
      //                   style: TextStyle(
      //                     fontStyle: FontStyle.italic,
      //                     fontWeight: FontWeight.bold,
      //                   )),
      //             ),

      //             decoration: const BoxDecoration(
      //                 color: Colors.purple,
      //                 borderRadius: BorderRadius.all(Radius.circular(15))),
      //           ),
      //         ],
      //       ),
      //     ],
      //   ),
      // ),
      //  ),
    );
  }
}

*/

import 'package:flutter/material.dart';
import 'package:futurehope/view/student/homework_display.dart';
import 'package:get/get.dart';

import '../../controller/student_homework_controller.dart';

class Homework extends StatelessWidget {
  // const Homework({Key? key}) : super(key: key);
  HomeworkShowController controller = Get.put(HomeworkShowController());

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {
        await controller.homeworsShow();
      },
      child: Scaffold(
        body: Stack(
          children: [
            Image(
              height: double.infinity,
              width: double.infinity,
              image: AssetImage('images/wallpaper.jpg'),
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 150,
                      width: double.infinity,
                      // color: Colors.white,
                      child: Column(
                        children: [
                          Container(
                            height: 8,
                            color: Color(0xFF26C6DA),
                          ),
                          Expanded(
                            child: Row(
                              children: [
                                Container(
                                  width: 8,
                                  color: Color(0xFFFF6D00),
                                ),
                                Expanded(
                                  child: Center(
                                    child: Text(
                                      'My Homework',
                                      style: TextStyle(
                                        fontSize: 50,
                                        color: Color(0xff35007D),
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 8,
                                  color: Color(0xFF7E57C2),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 8,
                            color: Color(0xFFFFEA00),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  GetBuilder<HomeworkShowController>(
                      init: HomeworkShowController(),
                      builder: (homework) {
                        return Expanded(
                            flex: 3,
                            child: Obx(() {
                              if (controller.isLoading.isTrue) {
                                return const Center(
                                  child: CircularProgressIndicator(
                                    color: Colors.purple,
                                  ),
                                );
                              }
                              return GetBuilder<HomeworkShowController>(
                                  builder: (controller) {
                                return ListView.separated(
                                    itemBuilder: (context, index) =>
                                        buildShow(homework.home[index], index),
                                    separatorBuilder: (context, index) =>
                                        SizedBox(
                                          height: 12,
                                        ),
                                    itemCount: controller.details.length);
                              });
                            }));
                      }),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildShow(HomeModel data, index) {
    return GestureDetector(
      onTap: () {
        Get.to(Displayhome(
            controller.details[index].subjectname,
            controller.details[index].classname,
            controller.details[index].numberPage,
            controller.details[index].descreption)
            );
      },
      child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          clipBehavior: Clip.antiAliasWithSaveLayer,
          height: 75,
          child: Row(
            // crossAxisAlignment: CrossAxisAlignment.,
            children: [
              Container(
                width: 100,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.date_range_outlined,
                      color: Color(0xFF1DE9B6),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      '${controller.details[index].createdAt}',
                      style: TextStyle(
                        color: Color(0xff35007D),
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 1.8,
                height: 70,
                color: Color(0xFF039BE5),
              ),
              SizedBox(width: 20),
              Row(
                children: [
                  Icon(
                    Icons.book_outlined,
                    color: Color(0xFFFBC02D),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    '${controller.details[index].subjectname}',
                    style: TextStyle(
                      color: Color(0xff35007D),
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
              /*   Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('${sub}' ,
                    style:TextStyle(color:Color(0xFF7E57C2),
                    fontWeight: FontWeight.w200,
                       fontSize: 20,),),
                ],
              ),*/
            ],
          )),
    );
  }
}
