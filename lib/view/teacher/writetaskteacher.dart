import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:futurehope/controller/task_index_controller.dart';
import 'package:futurehope/controller/task_write_contoller.dart';
import 'package:get/get.dart';

import '../../controller/homework_insert_controller.dart';

class WriteTask extends StatelessWidget {
  WriteTask({Key? key}) : super(key: key);
  final task3 = Get.lazyPut(() => Task2Controller());
  TaskWriteController controller = Get.put(TaskWriteController());
  TaskIndexController taskIndexController = Get.put(TaskIndexController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff35007D),
        title: const Text(
          'Add Task',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Stack(children: [
        const Image(
          height: double.infinity,
          width: double.infinity,
          image: AssetImage('images/wallpaper.jpg'),
          fit: BoxFit.cover,
        ),
        GetBuilder<Task2Controller>(
            //init: TaskController(),
            builder: (task2) {
          return Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Expanded(
                  child: Column(children: [
                    Expanded(
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              child: DropdownSearch<String>(
                                mode: Mode.MENU,
                                showSelectedItems: true,
                                // ignore: prefer_const_constructors
                                dropdownSearchDecoration: InputDecoration(
                                  labelText: "Menu mode",
                                  hintText: "Subject in menu mode",
                                ),
                                items: controller.subjectNameList,
                                onChanged: (Value) {
                                  controller.subjectName = Value;
                                  print(controller.subjectName);
                                  controller.selectidSub();
                                  controller.selectNameSub();
                                },
                              ),
                              width: 80,
                              decoration: const BoxDecoration(
                                color: Color(0xFF00E5FF),
                                borderRadius: BorderRadiusDirectional.all(
                                    Radius.circular(10)),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Container(
                              child: DropdownSearch<String>(
                                mode: Mode.MENU,
                                showSelectedItems: true,
                                // ignore: prefer_const_constructors
                                dropdownSearchDecoration: InputDecoration(
                                  labelText: "Menu mode",
                                  hintText: "Class in menu mode",
                                ),
                                items: controller.classNameList,
                                onChanged: (Value) {
                                  controller.className = Value;
                                  print(']]]]]');
                                  print(controller.className);
                                  controller.selectid();
                                  controller.selectName();
                                },
                                // itemAsString: (String ) => controller.subjectList,
                              ),
                              width: 80,
                              decoration: const BoxDecoration(
                                color: Color(0xFF2962FF),
                                borderRadius: BorderRadiusDirectional.all(
                                    Radius.circular(10)),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              child: TextFormField(
                                onChanged: (value) {
                                  controller.pageNumber = value;
                                },
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        color: Color(0xFF00E676), width: 1.0),
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  labelText: 'PageNumber',
                                  labelStyle: TextStyle(color: Colors.black),
                                ),
                                cursorColor: Color(0xff35007D),
                                maxLines: 1,
                                onFieldSubmitted: (val) {
                                  task2.selectpagenum(val);
                                  print(task2.pagenumeditingcontroller.text);
                                },
                                controller: task2.pagenumeditingcontroller,
                              ),
                              decoration: const BoxDecoration(
                                color: Color(0xFF00E676),
                                //Color(0xFFFF3D00),
                                //Color(0xFF42A5F5),
                                borderRadius: BorderRadiusDirectional.all(
                                    Radius.circular(10)),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ]),
                  flex: 1,
                ),
                Expanded(
                  child: Column(
                    children: [
                      TextFormField(
                        onChanged: (value) {
                          controller.description = value;
                        },
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Color(0xff35007D), width: 1.0),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          labelText: 'Description',
                          labelStyle: const TextStyle(color: Color(0xff35007D)),
                        ),
                        cursorColor: const Color(0xff35007D),
                        maxLines: 2,
                        onFieldSubmitted: (value) {
                          task2.selactdescription = value;
                          print(task2.desceditingcontroller.text);
                        },
                        controller: task2.desceditingcontroller,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      GestureDetector(
                        onTap: () {
                          onPressed();
                          print(task2.desceditingcontroller.text);
                          Get.back();
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                          ),
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          child: Container(
                            height: 30,
                            width: 300,
                            child: const Center(
                              child: Text(
                                'Done',
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
                  flex: 2,
                ),
              ],
            ),
          );
        }),
      ]),
    );
  }

  Future<void> onPressed() async {
    await controller.taskStore();
    await taskIndexController.taskIndex();
  }
}
