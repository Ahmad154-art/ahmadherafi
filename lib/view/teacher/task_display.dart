import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:futurehope/controller/task_index_controller.dart';
import 'package:get/get.dart';

import '../../controller/homework_insert_controller.dart';
import '../../controller/homeworkcontroller.dart';

class DisplayTask extends StatelessWidget {
  var sub;
  var num;
  var pagenum;
  String desc;

  DisplayTask(this.sub, this.num, this.pagenum, this.desc);
  // TaskController task3=Get.find();
  final task4 = Get.lazyPut(() => Task2Controller(), fenix: true);
  TaskIndexController controller = Get.put(TaskIndexController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff35007D),
        title: const Text('Display Task'),
        actions: [
          IconButton(
            icon: Icon(Icons.edit),
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
                          start: 10,
                          end: 10,
                        ),
                        child: Column(
                          children: [
                            Expanded(
                              child: Container(
                                child: GetBuilder<Task2Controller>(
                                    builder: (task4) {
                                  //نغيير ***********************
                                  return DropdownSearch<String>(
                                    mode: Mode.MENU,
                                    showSelectedItems: true,
                                    // ignore: prefer_const_constructors
                                    dropdownSearchDecoration: InputDecoration(
                                      labelText: "Menu mode",
                                      hintText: "Subject in menu mode",
                                    ),
                                    items: controller.subjectNameList,
                                    onChanged: (Value) {
                                      controller.subNameUpdate = Value;
                                      print(controller.subNameUpdate);
                                      controller.selectidSubupdate();
                                      controller.selectNameSubupdate();
                                    },
                                  );
                                }),
                                width: double.infinity,
                                decoration: const BoxDecoration(
                                  // color: Color(0xFF00E5FF),
                                  borderRadius: BorderRadiusDirectional.all(
                                      Radius.circular(10)),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Expanded(
                              child: Container(
                                width: double.infinity,
                                child: GetBuilder<Task2Controller>(
                                    //init:Task2Controller(),
                                    builder: (task4) {
                                  //تغيير
                                  return DropdownSearch<String>(
                                    mode: Mode.MENU,
                                    showSelectedItems: true,
                                    // ignore: prefer_const_constructors
                                    dropdownSearchDecoration: InputDecoration(
                                      labelText: "Menu mode",
                                      hintText: "Class in menu mode",
                                    ),
                                    items: controller.classNameList,
                                    onChanged: (Value) {
                                      controller.classNameUpdate = Value;
                                      print(']]]]]');
                                      print(controller.classNameUpdate);
                                      controller.selectidupdate();
                                      controller.selectNameupdate();
                                    },
                                    // itemAsString: (String ) => controller.subjectList,
                                  );
                                }),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Expanded(
                              child: Container(
                                width: double.infinity,
                                child: GetBuilder<Task2Controller>(
                                    builder: (task4) {
                                  return TextFormField(
                                    keyboardType: TextInputType.number,
                                    onChanged: (value) {
                                      controller.pageNumberUpdate = value;
                                    },
                                    decoration: const InputDecoration(
                                      hintText: 'Pagenumber',
                                      focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0xff35007D),
                                        ),
                                      ),
                                    ),
                                    cursorColor: Color(0xff35007D),
                                    onFieldSubmitted: (pagenum) {
                                      task4.changenumpage = pagenum;
                                      print(task4
                                          .changenumpageditingcontroller.text);
                                    },
                                    controller:
                                        task4.changenumpageditingcontroller,
                                  );
                                }),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Expanded(
                              child: Container(
                                width: double.infinity,
                                child: GetBuilder<Task2Controller>(
                                    builder: (task4) {
                                  return TextFormField(
                                    onChanged: (value) {
                                      controller.descreptionUpdate = value;
                                    },
                                    decoration: const InputDecoration(
                                      hintText: 'Description',
                                      focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0xff35007D),
                                        ),
                                      ),
                                    ),
                                    cursorColor: Color(0xff35007D),
                                    onFieldSubmitted: (desc) {
                                      task4.changedescription = desc;

                                      print(task4
                                          .changedescriptioneditingcontroller
                                          .text);
                                    },
                                    controller: task4
                                        .changedescriptioneditingcontroller,
                                  );
                                }),
                              ),
                            ),
                          ],
                        ),
                      ),
                      actions: [
                        GetBuilder<Task2Controller>(builder: (task4) {
                          return TextButton(
                              onPressed: () {
                                /*منحط هون api للتعديل منبعث القيم اللي قيمتها لا تساوي ال null مشان تتعدل بالداتا بيز وبالتالي بتتعدل عالمصفوفة اللي عبقرا منها رح تتغير قيم الواجهة */
                                // if (task4.chageclass == null) {
                                //   task4.chageclass = num;
                                // }
                                // if (task4.changesub == null) {
                                //   task4.changesub = sub;
                                // }
                                // if (task4.changenumpage == null) {
                                //   task4.changenumpage = pagenum;
                                // }
                                // if (task4.changedescription == null) {
                                //   task4.changedescription = desc;
                                // }
                                // if (sub != task4.changesub) {
                                //   sub = task4.changesub;
                                //   print(sub);
                                // }
                                // if (num != task4.chageclass) {
                                //   num = task4.chageclass;
                                //   print(num);
                                // }
                                // if (pagenum != task4.changenumpage) {
                                //   pagenum = task4.changenumpage;
                                //   print(pagenum);
                                // }
                                // if (desc != task4.changedescription) {
                                //   desc = task4.changedescription;
                                //   print(desc);
                                // }
                                onPressed();
                                Get.back();
                              },
                              child: const Text('ok'));
                        }),
                        TextButton(
                            onPressed: () {
                              Get.back();
                            },
                            child: const Text('cancel')),
                      ],
                    );
                  });
            },
          ),
        ],
      ),
      body: Stack(children: [
        const Image(
          height: double.infinity,
          width: double.infinity,
          image: AssetImage('images/wallpaper.jpg'),
          fit: BoxFit.cover,
        ),
        GetBuilder<TaskController>(
            init: TaskController(),
            builder: (taskdis) {
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
                                  child: Row(
                                    children: [
                                      const Icon(
                                        Icons.book,
                                        color: Color(0xff35007D),
                                      ),
                                      const SizedBox(
                                        width: 8,
                                      ),
                                      const Text(
                                        'Subject',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w300,
                                          fontSize: 15,
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 2,
                                      ),
                                      const Text(
                                        ':',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w300,
                                          fontSize: 15,
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 2,
                                      ),
                                      GetBuilder<TaskIndexController>(
                                          builder: (controller) {
                                        return Text(
                                          '${sub}',
                                          style: const TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w300,
                                            fontSize: 15,
                                          ),
                                        );
                                      })
                                    ],
                                  ),
                                  decoration: const BoxDecoration(
                                    color: Color(0xFF7E57C2),
                                    // Color(0xFF00E5FF),
                                    borderRadius: BorderRadiusDirectional.all(
                                        Radius.circular(10)),
                                  ),
                                  height: 50,
                                ),
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              Expanded(
                                child: Container(
                                  child: Row(
                                    children: [
                                      const Icon(
                                        Icons.home_work_outlined,
                                        color: Color(0xff35007D),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      const Text(
                                        'Class',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w300,
                                          fontSize: 15,
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 2,
                                      ),
                                      const Text(
                                        ':',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w300,
                                          fontSize: 15,
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 2,
                                      ),
                                      Text(
                                        '${num}',
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w300,
                                          fontSize: 15,
                                        ),
                                      ),
                                    ],
                                  ),
                                  decoration: const BoxDecoration(
                                    color: Color(0xFF42A5F5),
                                    //Color(0xFF1E88E5),
                                    borderRadius: BorderRadiusDirectional.all(
                                        Radius.circular(10)),
                                  ),
                                  height: 50,
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
                                  child: Row(
                                    children: [
                                      const Icon(
                                        Icons.menu_book,
                                        color: Color(0xff35007D),
                                      ),
                                      const SizedBox(
                                        width: 15,
                                      ),
                                      const Text(
                                        'Page Number',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w300,
                                          fontSize: 20,
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 2,
                                      ),
                                      const Text(
                                        ':',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w300,
                                          fontSize: 20,
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 2,
                                      ),
                                      Text(
                                        '${pagenum}',
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w300,
                                          fontSize: 20,
                                        ),
                                      ),
                                    ],
                                  ),
                                  decoration: const BoxDecoration(
                                    color: Color(0xFF26C6DA),
                                    //Color(0xFF00ACC1),
                                    //  Color(0xFF1DE9B6),
                                    borderRadius: BorderRadiusDirectional.all(
                                        Radius.circular(10)),
                                  ),
                                  height: 50,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ]),
                      flex: 1,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Container(
                            child: Row(
                              children: [
                                const Icon(
                                  Icons.edit_road_sharp,
                                  color: Color(0xff35007D),
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                const Text(
                                  'Discription',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w300,
                                    fontSize: 20,
                                  ),
                                ),
                                const SizedBox(
                                  width: 2,
                                ),
                                const Text(
                                  ':',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w300,
                                    fontSize: 20,
                                  ),
                                ),
                                const SizedBox(
                                  width: 2,
                                ),
                                Expanded(
                                  child: Text(
                                    '${desc}',
                                    maxLines: 3,
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w300,
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            decoration: const BoxDecoration(
                              color: Color(0xFFFF6D00),
                              //Color(0xFFFFD600),
                              //Color(0xFFB39DDB),
                              borderRadius: BorderRadiusDirectional.all(
                                  Radius.circular(10)),
                            ),
                            height: 100,
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
    await controller.taskUpdate();
    //await controller.taskIndex();
  }
}
