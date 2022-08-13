import 'dart:ffi';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:futurehope/config/server_config.dart';
import 'package:futurehope/storage.dart';
import 'package:futurehope/view/login/logoutcontoller.dart';

import 'package:futurehope/view/teacher/absenceteacher.dart';
import 'package:futurehope/view/teacher/library.dart';

import 'package:futurehope/view/teacher/markteacher.dart';
import 'package:futurehope/view/teacher/navigationbar.dart';
import 'package:futurehope/view/teacher/profile.dart';
import 'package:futurehope/view/teacher/teacher_table.dart';

import 'package:futurehope/view/teacher/weeklyprogramteacher.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

//import '../components/background.dart';
import '../../components/background.dart';
import '../../controller/library_contoller.dart';
import '../../controller/profile_contoller.dart';
import 'homeworkteacher.dart';

class Home extends StatelessWidget {
  String? index;
  // var image;
  // Future<void> shared() async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   image = prefs.getString("img_url");
  // }

  LogoutController controller = Get.put(LogoutController());
  LibralyController libralyController = Get.put(LibralyController());
  TeacherProfileController profileController =
      Get.put(TeacherProfileController());

  // LogoutController controller = Get.find();

  //final  controller = Get.lazyPut(() => LogoutController());

  @override
  Widget build(BuildContext context) {
    // throw UnimplementedError();
    return Scaffold(
      body: SafeArea(
        child: Background // Container
            (
          // ignore: prefer_const_constructors
          // decoration: BoxDecoration(
          //     image: const DecorationImage(
          //         image: AssetImage('images/wallpaper.jpg'), fit: BoxFit.cover)),
          child: ListView(
            children: [
              // Container(
              //   width: double.infinity,
              //   height: double.infinity,
              //     // ignore: prefer_const_constructors
              //     decoration: BoxDecoration(
              //       image: const DecorationImage(image: AssetImage('images/wallpaper.jpg'),fit: BoxFit.contain)
              //     ),

              // ),
              // Container(
              // width: double.infinity,
              // height: double.infinity,
              // child: Image(image: AssetImage('images/wallpaper.jpg')),
              //  ),
              Stack(children: [
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
                // const (padding: EdgeInsets.only(top: 100)),

                Column(children:

                        // ignore: prefer_const_literals_to_create_immutables
                        [
                  //  Padding(padding: EdgeInsets.all(50)),
                  const Padding(padding: EdgeInsets.only(left: 1000, top: 125)),
                  Obx(() {
                    if (profileController.isLoading.isTrue) {
                      return Center(
                        child: CircularProgressIndicator(color: Colors.purple),
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
              ]),

              // Center(
              //   child: Container(
              //     color: Colors.amber,
              //     height: 25,
              //     width: 25,
              //    // width: double.infinity,
              //    // height: 2,
              //   ),
              // ),
              Padding(padding: EdgeInsets.only(top: 25)),
              // const Padding(padding: EdgeInsets.only(top: 10)),
              Row(
                children: [
                  const Padding(padding: EdgeInsets.only(left: 20)),
                  GestureDetector(
                    onTap: (() {
                      Get.to(() => Task());
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
                      Get.to(() => Mark());
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
                      Get.to(() => WeeklyTeacher());
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
                          // IconButton(
                          //     onPressed: (() {
                          //       Get.toNamed("/weeklyprogram");
                          //     }),
                          //     icon: Icon(Icons.calendar_view_week)),
                          const Text('Weeekly program'),
                        ],
                      ),
                    ),
                  ),
                  const Padding(padding: EdgeInsets.only(left: 20)),
                  // Container(color: Colors.purple[50],width: 150,height: 150, child: Column(
                  //           // ignore: prefer_const_literals_to_create_immutables
                  //           children: [
                  //             const Padding(padding: EdgeInsets.only(top: 25)),
                  //             const Icon(
                  //               Icons.mark_chat_read_sharp,color: Colors.blueAccent,
                  //               size: 50,
                  //               ),
                  //           ],
                  //         ),
                  //         ),
                  GestureDetector(
                    onTap: () {
                      Get.to(Absant());
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
              // SizedBox(
              //   width: double.infinity,
              //   height: 10,
              // ),
              Padding(padding: EdgeInsets.only(top: 10)),

              BottomNavigationBar(
                elevation: 1,
                items: <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                    icon: IconButton(
                      icon: Icon(Icons.person),
                      onPressed: onClick,
                    ),
                    label: 'Profile',
                  ),
                  BottomNavigationBarItem(
                      icon: IconButton(
                          icon: Icon(Icons.home),
                          onPressed: () => Get.to(Home())),
                      label: 'Home'),
                  // BottomNavigationBarItem(icon: IconButton(icon: Icon(Icons.abc),onPressed: (){Get.to(TeacherProfile1());},)),
                  BottomNavigationBarItem(
                    icon: IconButton(
                      icon: Icon(Icons.library_books),
                      onPressed: onpressed,
                    ),
                    label: 'library',
                  ),

                  // BottomNavigationBarItem(
                  //   icon: IconButton(onPressed: Navigator.push(''), icon: Icon(Icons.abc)))
                ],
                selectedItemColor: Colors.purple,
                currentIndex: 1,
              ),
              // Navi2()
            ],
          ),
        ),
      ),
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
                leading: const Icon(Icons.book),
                title: Text('library'),
                onTap: onpressed
                //()=>Get.to(Libraly())
                ),
            ListTile(
                leading: const Icon(Icons.person),
                title: Text('profile'),
                onTap: onClick
                //()=> Get.to(TeacherProfile1())
                //()=>Get.to(Libraly())
                ),
          ],
        ),
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
    await libralyController.getbook();
    Get.to(Libraly());
  }

  Future<void> onClick() async {
    await profileController.profile();
    Get.to(TeacherProfile1());
    print(profileController.userdata[0].image);
  }
}
