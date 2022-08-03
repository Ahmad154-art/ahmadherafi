import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/absencecontroller.dart';

//import '../controller/absencecontroller.dart';
//import 'package:programe1/absant%20controller.dart';

class Absence extends StatelessWidget {
  Absence({Key? key}) : super(key: key);

  AbsantController absant = Get.put(AbsantController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: const Color(0xFFFFFFFF),
        // centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const Text(
              'Abs',
              style: TextStyle(
                color: Color(0xFFEF5350),
                fontSize: 40,
                fontWeight: FontWeight.w500,
              ),
            ),
            const Text(
              'ant',
              // ignore: unnecessary_const
              style: const TextStyle(
                color: Color(0xFF42A5F5),
                fontSize: 40,
                fontWeight: FontWeight.w500,
              ),
            ),
            const Padding(
              padding: EdgeInsetsDirectional.only(
                start: 3,
                end: 3,
              ),
              // ignore: unnecessary_const
              child: const Text(
                '&',
                style: TextStyle(
                  color: Color(0xff35007D),
                  fontSize: 40,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const Text(
              'de',
              style: TextStyle(
                color: Color(0xFFFDD835),
                fontSize: 40,
                fontWeight: FontWeight.w500,
              ),
            ),
            const Text(
              'lay',
              // ignore: unnecessary_const
              style: const TextStyle(
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
              /*  Container(
                height: 100,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color:  Color(0xFFFFFFFF),
                ),
                child:*/
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
                    width: 8,
                    height: 100,
                    color: const Color(0xFF7E57C2),
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
                    padding: const EdgeInsetsDirectional.only(
                      bottom: 25,
                    ),
                    child: Container(
                      width: 80,
                      child: TextFormField(
                        decoration: const InputDecoration(
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
                              absant.increment();
                              absant.count = 15;
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
                                  // ignore: prefer_const_literals_to_create_immutables
                                  children: [
                                    const Icon(
                                      Icons.segment,
                                      color: Color(
                                        0xFFFFFFFF,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 3,
                                    ),
                                    const Text(
                                      'Dislay Name ',
                                      style: TextStyle(
                                        color: const Color(0xFFFFFFFF),
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
                        width: 8,
                        // height: 100,
                        color: const Color(0xFFFDD835),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      GetBuilder<AbsantController>(
                          init: AbsantController(),
                          builder: (absant) {
                            return Expanded(
                              child: Column(
                                children: [
                                  Expanded(
                                    child: ListView.separated(
                                        itemBuilder: (context, index) {
                                          if (absant.body == 0) {
                                            return const Center(
                                                child: Padding(
                                              padding:
                                                  EdgeInsetsDirectional.only(
                                                top: 20,
                                              ),
                                              child: Text(
                                                'Student Name \'s',
                                                style: TextStyle(
                                                  color: Colors.grey,
                                                ),
                                              ),
                                            ));
                                          } else if (absant.body == 1) {
                                            if (index == 14) {
                                              print('2');
                                              return Padding(
                                                padding:
                                                    const EdgeInsets.all(5.0),
                                                child: GestureDetector(
                                                  onTap: () {},
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              40),
                                                    ),
                                                    clipBehavior: Clip
                                                        .antiAliasWithSaveLayer,
                                                    child: Container(
                                                      height: 30,
                                                      // width: 60,
                                                      child: const Center(
                                                        child: Text(
                                                          'send',
                                                          style: TextStyle(
                                                            color: Color(
                                                                0xFFFFFFFF),
                                                          ),
                                                        ),
                                                      ),
                                                      color: const Color(
                                                          0xFF9575CD),
                                                    ),
                                                  ),
                                                ),
                                              );
                                            }
                                            return buildItem();
                                          } else
                                            return const Text('f');
                                        },
                                        separatorBuilder: (context, index) =>
                                            Padding(
                                              padding:
                                                  const EdgeInsetsDirectional
                                                      .only(
                                                start: 10,
                                                end: 10,
                                              ),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsetsDirectional
                                                        .only(
                                                  top: 10,
                                                ),
                                                child: Container(
                                                  height: 1,
                                                  color:
                                                      const Color(0xFF9575CD),
                                                ),
                                              ),
                                            ),
                                        itemCount: absant.count),
                                  ),
                                ],
                              ),
                            );
                          }),
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

  Widget buildItem() {
    return Row(
      children: [
        const Text('ahmad'),
        const SizedBox(width: 50),
        /* Container(
            width: 100,
            child: Padding(
              padding: const EdgeInsetsDirectional.only(
                bottom: 5,
              ),
              child:*/

        Obx(() {
          return Checkbox(
            onChanged: (val) {
              absant.checkbox();
              if (absant.check == true) {
                print(absant.absence);
              } else {
                print('a');
              }
            },
            value: absant.check.value,
            checkColor: Colors.white,
            activeColor: const Color(0xff35007D),
          );
        }),
        const SizedBox(
          width: 5,
        ),
        Text(
          '${absant.absence}',
          style: TextStyle(fontSize: 10),
        ),

        const SizedBox(
          width: 5,
        ),
        Obx(() {
          return Checkbox(
            onChanged: (val) {
              absant.checkbox2();
              print(absant.presence);
              if (absant.ischeck == true) {
                print(absant.presence);
              } else {
                print('b');
              }
            },
            value: absant.ischeck.value,
            checkColor: Colors.white,
            activeColor: const Color(0xff35007D),
          );
        }),
        const SizedBox(
          width: 5,
        ),
        Text(
          '${absant.presence}',
          style: TextStyle(fontSize: 10),
        ),

        // ),
        // ),
      ],
    );
  }
}
