import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:futurehope/storage.dart';
import 'package:futurehope/view/login/logoutcontoller.dart';

import 'package:futurehope/view/teacher/absenceteacher.dart';

import 'package:futurehope/view/teacher/markteacher.dart';

import 'package:futurehope/view/teacher/weeklyprogramteacher.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

//import '../components/background.dart';
import '../../components/background.dart';
import 'homeworkteacher.dart';

class Home extends StatelessWidget {
  LogoutController controller = Get.put(LogoutController());
  // LogoutController controller = Get.find();

  //final  controller = Get.lazyPut(() => LogoutController());

  @override
  Widget build(BuildContext context) {
    // throw UnimplementedError();
    return Scaffold(
      body: Background // Container
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
                const CircleAvatar(
                  backgroundImage: AssetImage('images/ahmad.jpg'),
                  // child: Image(image: AssetImage('images/ahmad.jpg'),fit: BoxFit.fitHeight,),
                  // child: Text('d'),
                  // child: ClipRRect(

                  //   child:Image(image: AssetImage('images/ahmad.jpg'),fit: BoxFit.cover,),
                  // ),
                  maxRadius: 45,
                  backgroundColor: Colors.white54,
                ),
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
                    Get.to(() => WeeklyProgram());
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
            // NavigationBar(
            //   // selectedIndex: 1,

            //   height: 45,
            //   // ignore: prefer_const_literals_to_create_immutables
            //   destinations: [
            //     IconButton(
            //       onPressed: () => print('f'),
            //       icon: const Icon(
            //         Icons.person,
            //         size: 25,
            //         semanticLabel: ("fs"),
            //       ),
            //     ),
            //     IconButton(
            //       onPressed: () => print('f'),
            //       icon: const Icon(
            //         Icons.home,
            //         size: 25,
            //         semanticLabel: ("fs"),
            //       ),
            //     ),
            //     IconButton(
            //       onPressed: () => print('f'),
            //       icon: const Icon(
            //         Icons.my_library_books,
            //         size: 25,
            //         semanticLabel: ("fs"),
            //       ),
            //     ),
            //   ],
            // ),
            //  Container(
            //         height: 60,
            //         decoration: BoxDecoration(
            //           color: Theme.of(context).primaryColor,
            //           borderRadius: const BorderRadius.only(
            //             topLeft: Radius.circular(20),
            //             topRight: Radius.circular(20),
            //           ),
            //         ),
            //         child: Row(
            //           mainAxisAlignment: MainAxisAlignment.spaceAround,
            //           children: [const Icon(Icons.abc)],
            //         ),
            //       ),

            BottomNavigationBar(
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                    icon: Icon(Icons.person), label: 'Profile'),
                BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
                BottomNavigationBarItem(
                  icon: Icon(Icons.menu_book),
                  label: 'library',
                ),

                // BottomNavigationBarItem(
                //   icon: IconButton(onPressed: Navigator.push(''), icon: Icon(Icons.abc)))
              ],
              selectedItemColor: Colors.purple,
              currentIndex: 1,
            ),
            // Container(
            //   width: double.infinity,
            //   height: double.infinity,
            //   child:Column(
            //     children: [
            //       Image(image: AssetImage('images/wallpaper.jpg'))
            //     ],
            //   ) ,
            //   //decoration: BoxDecoration(image: DecorationImage(image: AssetImage('images/wallpaper.jpg'),fit: BoxFit.contain))
            // )
          ],
        ),
      ),

      // appBar: AppBar(
      //   title: const Text('asf'),
      //   // ignore: prefer_const_constructors
      //   shape: RoundedRectangleBorder(
      //     borderRadius: const BorderRadius.vertical(bottom: Radius.circular(200))
      //     ),
      //   ),
      // body: Container(height: 100,
      // decoration: const BoxDecoration(
      //   color: Colors.purple,
      //   boxShadow:[
      //      BoxShadow(blurRadius: 40)
      //   ],
      //   borderRadius: BorderRadius.vertical(
      //     bottom:  Radius.elliptical(4000, 4000)
      //   )

      //   ),

      // ),
      drawer: Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const Text('d'),
            const Text('d'),
            // ignore: prefer_const_constructors
            ListTile(
                leading: const Icon(Icons.logout),
                title: Text('logout'),
                onTap: onTapped),
            // Container(
            //   height: double.infinity,
            //   width: double.infinity,
            //   color: Colors.amber,
            // ),
            //      Container(
            //    // width: 2000,
            // //    height: 2000,
            //       // ignore: prefer_const_constructors
            //       decoration: BoxDecoration(
            //         image: const DecorationImage(image: AssetImage('images/wallpaper.jpg'),fit: BoxFit.contain)
            //       ),

            //   ),
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
    }

    // sharepref!.getString('token');
    //Get.toNamed("/code");

    // print('lll');
    // Get.offAllNamed("/email");
    // storage.delet('token');
    // // sharepref!.getString('token');
    //Get.toNamed("/code");
  }
}

// class Background extends StatelessWidget {
//   final Widget child;
//   const Background({required this.child});
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: const BoxDecoration(
//           image: DecorationImage(
//               image: AssetImage('images/wallpaper.jpg'), fit: BoxFit.cover)),
//               child: child,
//     );
//   }
// }
