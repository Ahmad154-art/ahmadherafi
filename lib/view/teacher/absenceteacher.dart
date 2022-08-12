import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:futurehope/controller/classcontroller.dart';
import 'package:futurehope/view/teacher/abant_show.dart';
import 'package:get/get.dart';

import '../../controller/absant_controller.dart';

class Absant extends StatelessWidget {
  Absant({Key? key}) : super(key: key);

  AbsantController absant = Get.put(AbsantController());
  ClassController class_contoller = Get.put(ClassController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: const Color(0xFFFFFFFF),
        // centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              'Abs',
              style: TextStyle(
                color: Color(0xFFEF5350),
                fontSize: 40,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              'ant',
              style: TextStyle(
                color: Color(0xFF42A5F5),
                fontSize: 40,
                fontWeight: FontWeight.w500,
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.only(
                start: 3,
                end: 3,
              ),
              child: Text(
                '&',
                style: TextStyle(
                  color: Color(0xff35007D),
                  fontSize: 40,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Text(
              'de',
              style: TextStyle(
                color: Color(0xFFFDD835),
                fontSize: 40,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              'lay',
              style: TextStyle(
                color: Color(0xff35007D),
                fontSize: 40,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
      body: Container(
        color: const Color(0xFFEDE7F6),
        child: Padding(
          padding: const EdgeInsetsDirectional.only(
            top: 10,
            start: 10,
            end: 10,
          ),
          child: Column(
            children: [
              Container(
                height: 100,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color(0xFFFFFFFF),
                ),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Row(children: [
                  Container(
                    width: 10,
                    height: 100,
                    color: Color(0xFF7E57C2),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  const Text('Class'),
                  const SizedBox(
                    width: 5,
                  ),
                  const Text(':'),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.only(bottom: 5, start: 10),
                    child: Container(
                      width: 100,
                      //  height: 25,
                      child: Container(
                        width: 100,
                        child: DropdownSearch<String>(
                          mode: Mode.MENU,
                          showSelectedItems: true,
                          // ignore: prefer_const_constructors
                          dropdownSearchDecoration: InputDecoration(
                            //labelText: "Menu mode",
                            hintText: "class in menu mode",
                          ),
                          items: absant.listname,
                          onChanged: (Value) {
                            absant.className = Value;
                            print(absant.className);
                            absant.selectid();
                            absant.selectName();
                          },
                          // itemAsString: (String ) => controller.subjectList,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsetsDirectional.only(
                        end: 10,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          GestureDetector(
                            onTap: () {
                              onTapped();
                              // absant.increment();
                              //absant.count=15;
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                              ),
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              child: Container(
                                height: 50,
                                width: 130,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Icon(
                                      Icons.segment,
                                      color: Color(
                                        0xFFFFFFFF,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 3,
                                    ),
                                    Text(
                                      'Dislay Name ',
                                      style: TextStyle(
                                        color: Color(0xFFFFFFFF),
                                      ),
                                    ),
                                  ],
                                ),
                                color: const Color(0xff35007D),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ]),
              ),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color(0xFFFFFFFF),
                  ),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: Row(
                    //  mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        width: 10,
                        // height: 100,
                        color: const Color(0xFFFDD835),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      GetBuilder<AbsantController>(
                          init: AbsantController(),
                          builder: (absant) {
                            // if (absant.body == 1) {
                            //   return Expanded(
                            //       child: Container(
                            //     width: double.infinity,
                            //     child: Column(
                            //       mainAxisAlignment: MainAxisAlignment.center,
                            //       children: const [
                            //         Text(
                            //           'Select Class To Display Name',
                            //           style: TextStyle(
                            //             fontWeight: FontWeight.w400,
                            //             fontSize: 20,
                            //             color: Color(0xff35007D),
                            //           ),
                            //         ),
                            //       ],
                            //     ),
                            //   ));
                            // }
                            //  else if (absant.body == 2) {
                            return Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Expanded(
                                      child: Obx(() {
                                        if (absant.isLoading.isTrue) {
                                          return const Center(
                                            child: CircularProgressIndicator(
                                              color: Colors.purple,
                                            ),
                                          );
                                        }
                                        return ListView.separated(
                                            itemBuilder: (context, index) {
                                              int id =
                                                  absant.getStudent[index].id;
                                              bool isStudentAbsent =
                                                  absant.studentStatus[id] ==
                                                      Status.absent;

                                              bool isStudentPresent =
                                                  absant.studentStatus[id] ==
                                                      Status.present;

                                              bool isStudentDelay =
                                                  absant.studentStatus[id] ==
                                                      Status.delay;

                                              return buildStore(
                                                isStudentPresent,
                                                isStudentAbsent,
                                                isStudentDelay,
                                                context,
                                                index,
                                              );
                                            },
                                            separatorBuilder:
                                                (context, index) => Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .only(
                                                        start: 10,
                                                        end: 10,
                                                        top: 5,
                                                        bottom: 5,
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .only(
                                                          top: 10,
                                                        ),
                                                        child: Container(
                                                          height: 1,
                                                          color: const Color(
                                                              0xFF9575CD),
                                                        ),
                                                      ),
                                                    ),
                                            itemCount:
                                                absant.getStudent.length);
                                      }),
                                    ),
                                  ],
                                ),
                              ),
                            );
                            //  }
                            //  else {
                            //   return Expanded(
                            //     child: Padding(
                            //       padding: const EdgeInsets.all(8.0),
                            //       child: Column(
                            //         children: [
                            //           Expanded(
                            //             child: ListView.separated(
                            //                 itemBuilder: (context, index) {
                            //                   return buildDisplay(
                            //                       absant.display[index],
                            //                       context,
                            //                       index);
                            //                 },
                            //                 separatorBuilder:
                            //                     (context, index) => Padding(
                            //                           padding:
                            //                               const EdgeInsetsDirectional
                            //                                   .only(
                            //                             start: 10,
                            //                             end: 10,
                            //                             top: 5,
                            //                             bottom: 5,
                            //                           ),
                            //                           child: Padding(
                            //                             padding:
                            //                                 const EdgeInsetsDirectional
                            //                                     .only(
                            //                               top: 10,
                            //                             ),
                            //                             child: Container(
                            //                               height: 1,
                            //                               color: const Color(
                            //                                   0xFF9575CD),
                            //                             ),
                            //                           ),
                            //                         ),
                            //                 itemCount: absant.index.length),
                            //           ),
                            //         ],
                            //       ),
                            //     ),
                            //   );
                            // }
                            // return  Text('f');
                          }),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsetsDirectional.only(
                  bottom: 5,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color(0xFFFFFFFF),
                  ),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: Row(
                    //  mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 10,
                        height: 50,
                        color: const Color(0xFF42A5F5),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.to(DisplayAbsant());
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                          ),
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          child: Container(
                            height: 40,
                            width: 100,
                            child: const Center(
                              child: Text(
                                'show ',
                                style: TextStyle(
                                  color: Color(0xFFFFFFFF),
                                ),
                              ),
                            ),
                            color: const Color(0xff35007D),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 100,
                      ),
                      GestureDetector(
                        onTap: () {
                          onpressed();
                          // absant.action();
                          //absant.count=15;
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                          ),
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          child: Container(
                            height: 40,
                            width: 100,
                            child: const Center(
                              child: Text(
                                'send ',
                                style: const TextStyle(
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
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildStore(bool check1, bool check2, bool check3, context, int index) {
    return Row(
      children: [
        Container(
            width: 100,
            child: Text(
                '${absant.getStudent[index].firstName} ${absant.getStudent[index].lastName} ')),
        GetBuilder<AbsantController>(builder: (abs) {
          return Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                //color: Colors.purpleAccent,
                child: Row(children: [
                  const Text(
                    "Present",
                    style: TextStyle(
                      fontSize: 12,
                      color: Color(0xff35007D),
                    ),
                  ),
                  Checkbox(
                    onChanged: (value) {
                      int id = absant.getStudent[index].id;
                      if (value!) {
                        abs.refrash1(id, Status.present);
                        absant.gg(index);
                      } else {
                        abs.removeStatus(id);
                      }
                    },
                    value: check1,
                    checkColor: Colors.white,
                    activeColor: const Color(0xFFFF3D00),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  const Text(
                    "Absant",
                    style: TextStyle(
                      fontSize: 12,
                      color: Color(0xff35007D),
                    ),
                  ),
                  Checkbox(
                    onChanged: (value) {
                      int id = absant.getStudent[index].id;
                      if (value!) {
                        abs.refrash1(id, Status.absent);
                        absant.gg(index);
                      } else {
                        abs.removeStatus(id);
                      }
                    },
                    value: check2,
                    checkColor: Colors.white,
                    activeColor: const Color(0xFF42A5F5),
                  ),
                  // IconButton(
                  //     onPressed: () {
                  //       showDialog(
                  //         context: context,
                  //         builder: (context) {
                  //           return AlertDialog(
                  //             title: const Text(
                  //               'Reason',
                  //             ),
                  //             content: Padding(
                  //               padding: const EdgeInsetsDirectional.only(
                  //                 top: 10,
                  //                 start: 10,
                  //                 end: 10,
                  //               ),
                  //               child: TextFormField(
                  //                 decoration: const InputDecoration(
                  //                   hintText: 'Write Reason',
                  //                   focusedBorder: UnderlineInputBorder(
                  //                     borderSide: BorderSide(
                  //                       color: Color(0xff35007D),
                  //                     ),
                  //                   ),
                  //                 ),
                  //                 cursorColor: const Color(0xff35007D),
                  //                 onFieldSubmitted: (desc) {},
                  //               ),
                  //             ),
                  //             actions: [
                  //               TextButton(
                  //                   onPressed: () {
                  //                     Get.back();
                  //                   },
                  //                   child: const Text('ok')),
                  //               TextButton(
                  //                   onPressed: () {
                  //                     Get.back();
                  //                   },
                  //                   child: const Text('cancel')),
                  //             ],
                  //           );
                  //         },
                  //       );
                  //     },
                  //     icon: const Icon(
                  //       Icons.edit_road,
                  //       color: Color(0xff35007D),
                  //     )),
                  const SizedBox(
                    width: 15,
                  ),
                  const Text(
                    "Delay",
                    style: TextStyle(
                      fontSize: 12,
                      color: Color(0xff35007D),
                    ),
                  ),
                  Checkbox(
                    onChanged: (value) {
                      int id = absant.getStudent[index].id;
                      if (value!) {
                        abs.refrash1(id, Status.delay);
                        absant.gg(index);
                      } else {
                        abs.removeStatus(id);
                      }
                    },
                    value: check3,
                    checkColor: Colors.white,
                    activeColor: const Color(0xFF5E35B1),
                  ),
                  Container(
                    width: 75,
                    child: TextField(
                      onChanged: (value) {
                        absant.reason = value;
                      },
                      decoration: const InputDecoration(hintText: 'reason'),
                    ),
                  )
                  // IconButton(
                  //     onPressed: () {
                  //       showDialog(
                  //         context: context,
                  //         builder: (context) {
                  //           return AlertDialog(
                  //             title: const Text(
                  //               'Reason',
                  //             ),
                  //             content: Padding(
                  //               padding: const EdgeInsetsDirectional.only(
                  //                 top: 10,
                  //                 start: 10,
                  //                 end: 10,
                  //               ),
                  //               child: TextFormField(
                  //                 decoration: const InputDecoration(
                  //                   hintText: 'Write Reason',
                  //                   focusedBorder: UnderlineInputBorder(
                  //                     borderSide: BorderSide(
                  //                       color: Color(0xff35007D),
                  //                     ),
                  //                   ),
                  //                 ),
                  //                 cursorColor: Color(0xff35007D),
                  //                 onFieldSubmitted: (desc) {},
                  //               ),
                  //             ),
                  //             actions: [
                  //               TextButton(
                  //                   onPressed: () {
                  //                     Get.back();
                  //                   },
                  //                   child: const Text('ok')),
                  //               TextButton(
                  //                   onPressed: () {
                  //                     Get.back();
                  //                   },
                  //                   child: const Text('cancel')),
                  //             ],
                  //           );
                  //         },
                  //       );
                  //     },
                  //     icon: const Icon(
                  //       Icons.edit_road,
                  //       color: Color(0xff35007D),
                  //     )),
                ]),
              ),
            ),
          );
        }),
      ],
    );
  }

  Widget buildDisplay(DisplayModel dis, context, index) {
    return Row(
      children: [
        Container(
            width: 100,
            child: Text(
                '${absant.index[index].firstName} ${absant.index[index].lastName}')),
        const SizedBox(width: 20),
        /* Container(
            width: 100,
            child: Padding(
              padding: const EdgeInsetsDirectional.only(
                bottom: 5,
              ),
              child:*/
        Row(children: [
          Text('${absant.index[index].type} '),
          const SizedBox(
            width: 15,
          ),
          Text('${absant.index[index].reason} '),
          const SizedBox(
            width: 15,
          ),
          IconButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: const Text(
                        'Edit',
                      ),
                      content: Padding(
                        padding: const EdgeInsetsDirectional.only(
                          top: 10,
                          //  start: 10,
                          //  end: 10,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            GetBuilder<AbsantController>(builder: (edit) {
                              return Row(
                                children: [
                                  const Text(
                                    "Present",
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: Color(0xff35007D),
                                    ),
                                  ),
                                  Checkbox(
                                    onChanged: (val) {
                                      print(absant.presence);
                                      edit.edit1(val);
                                    },
                                    value: edit.val1,
                                    checkColor: Colors.white,
                                    activeColor: const Color(0xff35007D),
                                  ),
                                  const SizedBox(
                                    width: 8,
                                  ),
                                  const Text(
                                    "Absant",
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: Color(0xff35007D),
                                    ),
                                  ),
                                  Checkbox(
                                    onChanged: (val) {
                                      print(absant.absant);
                                      edit.edit2(val);
                                    },
                                    value: edit.val2,
                                    checkColor: Colors.white,
                                    activeColor: const Color(0xff35007D),
                                  ),
                                  const SizedBox(
                                    width: 8,
                                  ),
                                  const Text(
                                    "Delay",
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: Color(0xff35007D),
                                    ),
                                  ),
                                  Checkbox(
                                    onChanged: (val) {
                                      print(absant.delay);
                                      edit.edit3(val);
                                    },
                                    value: edit.val3,
                                    checkColor: Colors.white,
                                    activeColor: const Color(0xff35007D),
                                  ),
                                ],
                              );
                            }),
                            const SizedBox(
                              height: 20,
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(
                                top: 10,
                                start: 10,
                                end: 10,
                              ),
                              child: TextFormField(
                                decoration: const InputDecoration(
                                  hintText: 'Write Reason',
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xff35007D),
                                    ),
                                  ),
                                ),
                                cursorColor: Color(0xff35007D),
                                onFieldSubmitted: (desc) {},
                              ),
                            ),
                          ],
                        ),
                      ),
                      actions: [
                        TextButton(
                            onPressed: () {
                              Get.back();
                            },
                            child: const Text('ok')),
                        TextButton(
                            onPressed: () {
                              Get.back();
                            },
                            child: const Text('cancel')),
                      ],
                    );
                  });
            },
            icon: const Icon(Icons.edit),
            color: const Color(0xFF2979FF),
          ),
        ]),

        // ),
        // ),
      ],
    );
  }

  Future<void> onTapped() async {
    await absant.student();
    // await class_contoller.sendClass();
  }

  Future<void> onpressed() async {
    await absant.storeabsant();
  }
}
