import 'package:flutter/material.dart';
import 'package:futurehope/components/background.dart';
import 'package:futurehope/config/server_config.dart';
import 'package:futurehope/controller/exam_controller.dart';
import 'package:futurehope/controller/installment_controller.dart';
import 'package:futurehope/controller/student_absant_controller.dart';
import 'package:futurehope/controller/student_homework_controller.dart';
import 'package:futurehope/controller/student_mark_contoller.dart';
import 'package:futurehope/studentcontroller/ratecontroller.dart';
import 'package:futurehope/view/student/abcensestudent.dart';
import 'package:futurehope/view/student/exam.dart';
import 'package:futurehope/view/student/homeworkstudent.dart';
import 'package:futurehope/view/student/installment.dart';
import 'package:futurehope/view/student/markstudent.dart';
import 'package:futurehope/view/student/profile.dart';
import 'package:futurehope/view/student/program.dart';
import 'package:futurehope/view/student/rate.dart';

import 'package:futurehope/view/student/weeklyprogramstudent.dart';
import 'package:futurehope/view/teacher/weeklyprogramteacher.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../controller/library_contoller.dart';
import '../../controller/profile_contoller.dart';
import '../../storage.dart';
import '../login/logoutcontoller.dart';
import '../teacher/library.dart';

class StudentHome extends StatefulWidget {
  @override
  State<StudentHome> createState() => StudentState();
}

class StudentState extends State<StudentHome> {
  MarkStuController markStuController = MarkStuController();
  LogoutController controller = Get.put(LogoutController());
  HomeworkShowController homeworkShowController =
      Get.put(HomeworkShowController());
  RateController rateController = Get.put(RateController());
  AbsantStuController absantStuController = Get.put(AbsantStuController());
  InstallmentController installmentController =
      Get.put(InstallmentController());
  TeacherProfileController teacherProfileController =
      Get.put(TeacherProfileController());
  LibralyController libralyController = Get.put(LibralyController());
  ExamController examController = Get.put(ExamController());
  TeacherProfileController profileController =
      Get.put(TeacherProfileController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            // ignore: prefer_const_constructors
            ListTile(
                leading: const Icon(Icons.logout),
                title: Text('logout'),
                onTap: onTapped),
            ListTile(
                leading: const Icon(Icons.person),
                title: Text('profile'),
                onTap: profile),
            ListTile(
                leading: const Icon(Icons.expand_more),
                title: Text('profile'),
                onTap: exam),
          ],
        ),
      ),
      body: Background(
        child: Column(children: [
          Expanded(
            child: ListView(
              children: [
                Stack(
                  children: [
                    AppBar(
                      // shadowColor: Colors.amberAccent,
                      // ignore: prefer_const_literals_to_create_immutables
                      flexibleSpace: Column(children: [
                        const Padding(padding: EdgeInsets.only(top: 150)),
                        //const CircleAvatar(maxRadius: 50),
                      ]),
                      foregroundColor: Colors.black,
                      backgroundColor: Colors.purple[700],
                      toolbarHeight: 150,
                      // leading: Container(),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.vertical(
                          bottom: Radius.elliptical(300, 300),
                        ),
                      ),
                    ),
                    Column(children:

                            // ignore: prefer_const_literals_to_create_immutables
                            [
                      //  Padding(padding: EdgeInsets.all(50)),
                      const Padding(
                          padding: EdgeInsets.only(left: 1000, top: 100)),
                      Obx(() {
                        if (profileController.isLoading.isTrue) {
                          return Center(
                            child:
                                CircularProgressIndicator(color: Colors.purple),
                          );
                        }
                        return CircleAvatar(
                          backgroundImage: NetworkImage(
                              "${serverConfig.domainName}/${profileController.image}"),
                          //AssetImage('images/ahmad.jpg'),
                          // child: Image(image: AssetImage('images/ahmad.jpg'),fit: BoxFit.fitHeight,),
                          // child: Text('d'),
                          // child: ClipRRect(

                          //   child:Image(image: AssetImage('images/ahmad.jpg'),fit: BoxFit.cover,),
                          // ),
                          maxRadius: 45,
                          backgroundColor: Colors.white54,
                        );
                      })
                    ]
                        //   heightFactor: 3.7,
                        ),
                  ],
                ),
                Padding(padding: EdgeInsets.only(top: 25)),
                Row(
                  children: [
                    const Padding(padding: EdgeInsets.only(left: 20)),
                    GestureDetector(
                      onTap: (() {
                        onclick();
                        Get.to(() => Homework());
                      }),
                      child: Container(
                        color: Colors.purple[50],
                        height: 150,
                        width: 150,
                        child: Column(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            const Padding(padding: EdgeInsets.only(top: 25)),
                            const Icon(
                              Icons.menu_book,
                              color: Colors.blueAccent,
                              size: 50,
                            ),
                            const Text('Homework'),
                          ],
                        ),
                      ),
                    ),
                    const Padding(padding: EdgeInsets.only(top: 100, left: 20)),
                    GestureDetector(
                      onTap: (() {
                        Get.to(() => MarkStudent());
                        onpressed();
                      }),
                      child: Container(
                        color: Colors.purple[50],
                        height: 150,
                        width: 150,
                        child: Column(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            const Padding(padding: EdgeInsets.only(top: 25)),
                            const Icon(
                              Icons.mark_as_unread,
                              color: Colors.blueAccent,
                              size: 50,
                            ),
                            const Text('Marks'),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const Padding(padding: EdgeInsets.only(top: 20)),
                Row(
                  children: [
                    const Padding(padding: EdgeInsets.only(left: 20)),
                    GestureDetector(
                      onTap: (() {
                        Get.to(() => AllWeekly());
                        // exam();
                      }),
                      // onTap:() => print('d'),
                      child: Container(
                        color: Colors.purple[50],
                        width: 150,
                        height: 150,
                        child: Column(
                          // ignore: prefer_const_literals_to_create_immutables

                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            const Padding(padding: EdgeInsets.only(top: 25)),
                            const Icon(
                              Icons.calendar_view_week,
                              color: Colors.blueAccent,
                              size: 50,
                            ),
                            const Text('Weeekly program'),
                          ],
                        ),
                      ),
                    ),
                    const Padding(padding: EdgeInsets.only(left: 20)),
                    GestureDetector(
                      onTap: () {
                        onTag();
                        Get.to(AbsantStu());
                      },
                      child: Container(
                        color: Colors.purple[50],
                        // color: const Color(0xffC4DFCB),
                        width: 150,
                        height: 150,
                        child: Column(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            const Padding(padding: EdgeInsets.only(top: 25)),
                            const Icon(
                              Icons.perm_contact_calendar,
                              color: Colors.blueAccent,
                              size: 50,
                            ),
                            const Text('Absence and Delay'),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const Padding(padding: EdgeInsets.only(top: 20)),
                Row(
                  children: [
                    const Padding(padding: EdgeInsets.only(left: 20)),
                    GestureDetector(
                      onTap: (() {
                        payment();
                        Get.to(() => Installment());
                      }),
                      // onTap:() => print('d'),
                      child: Container(
                        color: Colors.purple[50],
                        width: 150,
                        height: 150,
                        child: Column(
                          // ignore: prefer_const_literals_to_create_immutables

                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            const Padding(padding: EdgeInsets.only(top: 25)),
                            const Icon(
                              Icons.money,
                              color: Colors.blueAccent,
                              size: 50,
                            ),
                            const Text("school fee"),
                          ],
                        ),
                      ),
                    ),
                    const Padding(padding: EdgeInsets.only(left: 20)),
                    GestureDetector(
                      onTap: () {
                        Get.to(Rate());
                        rate();
                      },
                      child: Container(
                        color: Colors.purple[50],
                        // color: const Color(0xffC4DFCB),
                        width: 150,
                        height: 150,
                        child: Column(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            const Padding(padding: EdgeInsets.only(top: 25)),
                            const Icon(
                              Icons.stacked_line_chart,
                              color: Colors.blueAccent,
                              size: 50,
                            ),
                            const Text('Rate'),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(padding: EdgeInsets.only(top: 10)),
              ],
            ),
          ),
          BottomNavigationBar(
            backgroundColor: Color(0xFFE3DEF3),
            elevation: 0,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: IconButton(
                  icon: Icon(Icons.person),
                  onPressed: profile,
                ),
                label: 'Profile',
              ),
              BottomNavigationBarItem(
                  icon: IconButton(
                      icon: Icon(Icons.home),
                      onPressed: () => Get.to(StudentHome())),
                  label: 'Home'),
              // BottomNavigationBarItem(icon: IconButton(icon: Icon(Icons.abc),onPressed: (){Get.to(TeacherProfile1());},)),
              BottomNavigationBarItem(
                icon: IconButton(
                  icon: Icon(Icons.library_books),
                  onPressed: library,
                ),
                label: 'library',
              ),

              // BottomNavigationBarItem(
              //   icon: IconButton(onPressed: Navigator.push(''), icon: Icon(Icons.abc)))
            ],
            selectedItemColor: Colors.purple,
            currentIndex: 1,
          ),
        ]),
      ),
    );
  }

  SecureStorge storage = new SecureStorge();
  void onTapped() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    //storage.delet('token');
    await controller.logOut();
    if (controller.logout) {
      print('lll');
      Get.offAllNamed("/email");
      storage.delet('token');
      prefs.remove('id');
      prefs.remove('class_id');
      prefs.remove("role");
      prefs.remove('presence');
      prefs.remove("absant");
      prefs.remove("user_id");
      prefs.remove("img_url");
    }
  }

  Future<void> onpressed() async {
    await markStuController.subjectStudent();
    print('bbb');
    print(markStuController.data[0].name);
  }

  Future<void> onclick() async {
    await homeworkShowController.homeworsShow();
  }

  Future<void> rate() async {
    await rateController.result();
  }

  Future<void> onTag() async {
    await absantStuController.studentAbsant();
    await absantStuController.percent();
  }

  Future<void> payment() async {
    await installmentController.installment();
  }

  Future<void> profile() async {
    await teacherProfileController.profile();
    Get.to(StuProfile1());
  }

  Future<void> library() async {
    await libralyController.getbook();
    Get.to(Libraly());
  }

  Future<void> exam() async {
    await examController.examshow();
    Get.to(ExamStu());
  }
}
