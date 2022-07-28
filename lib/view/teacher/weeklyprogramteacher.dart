import 'package:flutter/material.dart';
import 'package:futurehope/components/background.dart';
import 'package:futurehope/studentcontroller/clickcontroller.dart';
import 'package:futurehope/view/student/homestudent.dart';
import 'package:futurehope/view/student/test.dart';
import 'package:get/get.dart';

class WeeklyProgram extends StatelessWidget {
  WeeklyProgram({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Background(
        // ignore: sized_box_for_whitespace
        child: Container(
          height: double.infinity,
          // color: Colors.deepPurpleAccent,
          child: Row(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  height: double.infinity,
                  color: const Color(0xFF5E35B1),
                  child: Padding(
                    padding: const EdgeInsetsDirectional.only(
                      top: 10,
                      start: 10,
                      end: 10,
                    ),
                    child: Column(
                      children: [
                        IconButton(
                          onPressed: (() {
                            Get.back();
                          }),
                          icon: const Icon(
                            Icons.home,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        GetBuilder<ClickController>(
                            init: ClickController(),
                            builder: (click) {
                              return Container(
                                //width: 300,
                                //color: Colors.amber,
                                child: GestureDetector(
                                  onTap: () {
                                    click.incrementState();
                                    click.len = 5;
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                    clipBehavior: Clip.antiAliasWithSaveLayer,
                                    child: Container(
                                      height: 75,
                                      // width: 60,
                                      child: const Center(
                                        child: Text(
                                          'Sunday',
                                          style: TextStyle(
                                            color: Color(0xFFFFFFFF),
                                          ),
                                        ),
                                      ),
                                      color: Colors.white.withOpacity(0.5),
                                    ),
                                  ),
                                ),
                              );
                            
                            }),
                        const SizedBox(
                          height: 30,
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                            ),
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            child: Container(
                              height: 75,
                              // width: 60,
                              child: const Center(
                                child: Text(
                                  'Monday',
                                  style: TextStyle(
                                    color: Color(0xFFFFFFFF),
                                  ),
                                ),
                              ),
                              color: Colors.white.withOpacity(0.5),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                            ),
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            child: Container(
                              height: 75,
                              // width: 60,
                              child: const Center(
                                child: Text(
                                  'Tuesday',
                                  style: TextStyle(
                                    color: Color(0xFFFFFFFF),
                                  ),
                                ),
                              ),
                              color: Colors.white.withOpacity(0.5),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                            ),
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            child: Container(
                              height: 75,
                              // width: 60,
                              child: const Center(
                                child: Text(
                                  'Wednesday',
                                  style: TextStyle(
                                    color: Color(0xFFFFFFFF),
                                  ),
                                ),
                              ),
                              color: Colors.white.withOpacity(0.5),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                            ),
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            child: Container(
                              height: 75,
                              // width: 60,
                              child: const Center(
                                child: Text(
                                  'Thursday',
                                  style: TextStyle(
                                    color: Color(0xFFFFFFFF),
                                  ),
                                ),
                              ),
                              color: Colors.white.withOpacity(0.5),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 4,
                child: Stack(
                  children: [
                    const Image(
                      image: AssetImage('images/wallpaper.jpg'),
                      fit: BoxFit.cover,
                    ),
                    // ignore: sized_box_for_whitespace
                    Container(
                      height: double.infinity,

                      //color:   Color(0xFFF5F5F5),

                      // child: Padding(
                      //   padding: const EdgeInsetsDirectional.only(
                      //     top: 10,
                      //     start: 10,
                      //     end: 10,
                      //   ),
                      // child: Column(
                      //   children: [
                      //     // ignore: sized_box_for_whitespace
                      //     // Container(
                      //     //   height: 150,
                      //     //   child: Row(
                      //     //     mainAxisAlignment: MainAxisAlignment.end,
                      //     //     crossAxisAlignment: CrossAxisAlignment.end,
                      //     //     children: [
                      //     //       Column(
                      //     //         mainAxisAlignment: MainAxisAlignment.end,
                      //     //         mainAxisSize: MainAxisSize.min,
                      //     //         // ignore: prefer_const_literals_to_create_immutables
                      //     //         children: [
                      //     //           const Text(
                      //     //             'M',
                      //     //             style: TextStyle(
                      //     //               color: Color(0xFFFF3D00),
                      //     //               fontSize: 30,
                      //     //               //fontWeight: FontWeight.w500,
                      //     //             ),
                      //     //           ),
                      //     //           const Text(
                      //     //             'y',
                      //     //             style: TextStyle(
                      //     //               color: Color(0xFFFF3D00),
                      //     //               fontSize: 30,
                      //     //               // fontWeight: FontWeight.w500,
                      //     //             ),
                      //     //           ),
                      //     //         ],
                      //     //       ),
                      //     //       // SizedBox(width: 10,),

                      //     //       // SizedBox(width: 10,),
                      //     //       const Text(
                      //     //         'M',
                      //     //         style: TextStyle(
                      //     //           color: Color(0xFF2962FF),
                      //     //           fontSize: 70,
                      //     //           fontWeight: FontWeight.w300,
                      //     //         ),
                      //     //       ),
                      //     //       const Text(
                      //     //         'ar',
                      //     //         style: TextStyle(
                      //     //           color: Color(0xFFFBC02D),
                      //     //           fontSize: 70,
                      //     //           fontWeight: FontWeight.w300,
                      //     //         ),
                      //     //       ),
                      //     //       const Text(
                      //     //         'ks',
                      //     //         style: TextStyle(
                      //     //           color: Color(0xFF00E5FF),
                      //     //           //Color(0xFF1DE9B6),
                      //     //           fontSize: 70,
                      //     //           fontWeight: FontWeight.w300,
                      //     //         ),
                      //     //       ),
                      //     //     ],
                      //     //   ),
                      //     // ),
                      //     // SizedBox(height: 15,),
                      //     Container(
                      //       height: 2,
                      //       width: double.infinity,
                      //       color: const Color(0xFFB39DDB),
                      //     ),
                      //     const SizedBox(
                      //       height: 30,
                      //     ),
                      //     // SingleChildScrollView(
                      //     //  child:
                      //     Column(
                      //       children: [
                      //         Container(
                      //             decoration: BoxDecoration(
                      //               borderRadius: BorderRadius.circular(10),
                      //               color: Colors.white,
                      //             ),
                      //             clipBehavior: Clip.antiAliasWithSaveLayer,
                      //             child: Row(
                      //               // crossAxisAlignment: CrossAxisAlignment.,
                      //               children: [
                      //                 Container(
                      //                   width: 8,
                      //                   height: 80,
                      //                   color: const Color(0xFF00B0FF),
                      //                 ),
                      //                 const SizedBox(width: 20),
                      //                 Column(
                      //                   crossAxisAlignment:
                      //                       CrossAxisAlignment.start,
                      //                   children: const [
                      //                     Text('Exam1'),
                      //                     SizedBox(height: 10),
                      //                     Text('25/5/2022'),
                      //                   ],
                      //                 ),
                      //                 Expanded(
                      //                   child: Padding(
                      //                     padding: const EdgeInsetsDirectional
                      //                         .only(
                      //                       end: 30,
                      //                     ),
                      //                     child: Row(
                      //                       mainAxisAlignment:
                      //                           MainAxisAlignment.end,
                      //                       children: const [
                      //                         Text('77'),
                      //                       ],
                      //                     ),
                      //                   ),
                      //                 ),
                      //               ],
                      //             )),
                      //         const SizedBox(
                      //           height: 15,
                      //         ),
                      //         Container(
                      //             decoration: BoxDecoration(
                      //               borderRadius: BorderRadius.circular(10),
                      //               color: Colors.white,
                      //             ),
                      //             clipBehavior: Clip.antiAliasWithSaveLayer,
                      //             child: Row(
                      //               // crossAxisAlignment: CrossAxisAlignment.,
                      //               children: [
                      //                 Container(
                      //                   width: 8,
                      //                   height: 80,
                      //                   color: const Color(0xFFC6FF00),
                      //                 ),
                      //                 SizedBox(width: 20),
                      //                 Column(
                      //                   crossAxisAlignment:
                      //                       CrossAxisAlignment.start,
                      //                   children: const [
                      //                     Text('Exam2'),
                      //                     SizedBox(height: 10),
                      //                     Text('25/5/2022'),
                      //                   ],
                      //                 ),
                      //                 Expanded(
                      //                   child: Padding(
                      //                     padding: const EdgeInsetsDirectional
                      //                         .only(
                      //                       end: 30,
                      //                     ),
                      //                     child: Row(
                      //                       mainAxisAlignment:
                      //                           MainAxisAlignment.end,
                      //                       children: const [
                      //                         Text('77'),
                      //                       ],
                      //                     ),
                      //                   ),
                      //                 ),
                      //               ],
                      //             )),
                      //         const SizedBox(
                      //           height: 15,
                      //         ),
                      //         Container(
                      //             decoration: BoxDecoration(
                      //               borderRadius: BorderRadius.circular(10),
                      //               color: Colors.white,
                      //             ),
                      //             clipBehavior: Clip.antiAliasWithSaveLayer,
                      //             child: Row(
                      //               // crossAxisAlignment: CrossAxisAlignment.,
                      //               children: [
                      //                 Container(
                      //                   width: 8,
                      //                   height: 80,
                      //                   color: const Color(0xFFFF3D00),
                      //                 ),
                      //                 SizedBox(width: 20),
                      //                 Column(
                      //                   crossAxisAlignment:
                      //                       CrossAxisAlignment.start,
                      //                   children: const [
                      //                     Text('Final'),
                      //                     SizedBox(height: 10),
                      //                     Text('25/5/2022'),
                      //                   ],
                      //                 ),
                      //                 Expanded(
                      //                   child: Padding(
                      //                     padding: const EdgeInsetsDirectional
                      //                         .only(
                      //                       end: 30,
                      //                     ),
                      //                     child: Row(
                      //                       mainAxisAlignment:
                      //                           MainAxisAlignment.end,
                      //                       children: const [
                      //                         Text('77'),
                      //                       ],
                      //                     ),
                      //                   ),
                      //                 ),
                      //               ],
                      //             )),
                      //       ],
                      //     ),
                      //   ],
                      // ),
                    ),
                    //),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildShow() {
    return Container(
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
                const Text('1000'),
                const SizedBox(height: 5),
                const Text('25/5/2022'),
              ],
            ),
          ],
        ));
  }
}
