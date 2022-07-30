import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:futurehope/controller/task_index_controller.dart';
import 'package:futurehope/view/teacher/task_display.dart';
import 'package:futurehope/view/teacher/writetaskteacher.dart';
import 'package:get/get.dart';

import '../../controller/homework_insert_controller.dart';
import '../../controller/homeworkcontroller.dart';

class Task extends StatelessWidget {
  Task({Key? key}) : super(key: key);
  TaskController taskController = Get.put(TaskController());
  // final task = Get.lazyPut(() => TaskController(), fenix: true);
  TaskIndexController controller = Get.put(TaskIndexController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const Image(
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
                    height: 250,
                    width: double.infinity,
                    //color: Colors.amber,
                    child: Stack(
                      children: [
                        Stack(
                          // alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            Container(
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadiusDirectional.only(
                                  topStart: Radius.circular(20),
                                  topEnd: Radius.circular(20),
                                ),
                              ),
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              child: Container(
                                height: 200,
                                width: double.infinity,
                                color: Color(0xFF512DA8),
                                child: const Padding(
                                  padding: EdgeInsetsDirectional.only(
                                    top: 50,
                                    start: 30,
                                  ),
                                  child: Text(
                                    'Task',
                                    style: TextStyle(
                                      fontSize: 30,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          height: 250,
                          width: double.infinity,
                          child: Stack(
                            alignment: AlignmentDirectional.bottomEnd,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.only(
                                  // end: 200,
                                  top: 100,
                                ),
                                child: Center(
                                  child: Container(
                                    decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(20),
                                      ),
                                    ),
                                    clipBehavior: Clip.antiAliasWithSaveLayer,
                                    child: Container(
                                      width: 350,
                                      height: 120,
                                      color: Colors.white,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          const Text(
                                            'Add Tasks for subject',
                                            style: TextStyle(
                                              fontSize: 20,
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 40,
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              Get.to(
                                                () => WriteTask(),
                                              );
                                            },
                                            child: const CircleAvatar(
                                              backgroundColor:
                                                  Color(0xFF512DA8),
                                              radius: 30,
                                              child: Icon(
                                                Icons.add,
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
                const SizedBox(
                  height: 5,
                ),
                GetBuilder<TaskIndexController>(
                    init: TaskIndexController(),
                    builder: (controller) {
                      return Column(children: [
                        Row(children: [
                          Padding(padding: EdgeInsets.only(left: 10)),
                          Container(
                            width: 150,
                            child: DropdownSearch<String>(
                              mode: Mode.MENU,
                              showSelectedItems: true,
                              // ignore: prefer_const_constructors
                              dropdownSearchDecoration: const InputDecoration(
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
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: 150,
                            child: DropdownSearch<String>(
                              mode: Mode.MENU,
                              showSelectedItems: true,
                              // ignore: prefer_const_constructors
                              dropdownSearchDecoration: const InputDecoration(
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
                          )
                        ]),
                      ]);
                    }),

                GestureDetector(
                  onTap: () {
                    onTapped();
                    // task.increment();
                    // task.len = 5;
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
                          'show',
                          style: TextStyle(
                            color: Color(0xFFFFFFFF),
                          ),
                        ),
                      ),
                      color: const Color(0xff35007D),
                    ),
                  ),
                ),
                // GetBuilder<TaskController>(
                // init: TaskController(),
                // builder: (task) {
                //return
                Expanded(
                    flex: 1,
                    child: Obx(() {
                      if (controller.isLoading.isTrue) {
                        return const Center(
                          child: CircularProgressIndicator(
                            color: Colors.purple,
                          ),
                        );
                      }
                      return ListView.separated(
                        itemBuilder: (context, index) {
                          if (controller.t == 0) {
                            return Text('data');
                          } else {
                            return buildShow(context, index);
                          }
                        },
                        separatorBuilder: (context, index) {
                          return const SizedBox(
                            height: 10,
                          );
                        },
                        itemCount: controller.info.length,
                        // mark2.len,
                      );
                    }))
                //}),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildShow(/*TaskModel*/ BuildContext context, index) {
    return GestureDetector(
      onTap: () {
        Get.to(() => DisplayTask(
            controller.info[index].subjectname,
            controller.info[index].classname,
            controller.info[index].numberPage,
            controller.info[index].descreption));
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
                color: Color(0xFF5E35B1),
              ),
              const SizedBox(width: 20),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('${controller.info[index].numberPage}'),
                    const SizedBox(height: 5),
                    Text('${controller.info[index].descreption}'),
                  ],
                ),
              ),
              IconButton(
                icon: const Icon(
                  Icons.delete_outline,
                  color: Color(0xFF00E5FF),
                ),
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: const Text(
                            'Delete',
                          ),
                          content: const Padding(
                            padding: EdgeInsetsDirectional.only(
                              top: 10,
                              start: 10,
                              end: 10,
                            ),
                            child: Text('Are you sure to delet task ?'),
                          ),
                          actions: [
                            TextButton(
                                onPressed: () {
                                  Get.back();
                                },
                                child: const Text('Yes')),
                            TextButton(
                                onPressed: () {
                                  Get.back();
                                },
                                child: const Text('No')),
                          ],
                        );
                      });
                },
              ),
            ],
          )),
    );
  }

  Future<void> onTapped() async {
    await controller.taskIndex();
  }
}
