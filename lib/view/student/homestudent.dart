import 'package:flutter/material.dart';
import 'package:futurehope/components/background.dart';
import 'package:futurehope/view/student/markstudent.dart';
import 'package:futurehope/view/student/rate.dart';
import 'package:get/get.dart';

class StudentHome extends StatefulWidget {
  @override
  State<StudentHome> createState() => StudentState();
}

class StudentState extends State<StudentHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Background(
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
                const Padding(padding: EdgeInsets.only(left: 1000, top: 100)),
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
              ],
            ),
               Padding(padding: EdgeInsets.only(top: 25)),
               Row(
              children: [
                const Padding(padding: EdgeInsets.only(left: 20)),
                GestureDetector(
                  // onTap: (() {
                  //   Get.to(() => Homework());
                  // }),
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
                  // onTap: (() {
                  //   Get.to(() => WeeklyProgram());
                  // }),
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
                  // onTap: () {
                  //   Get.to(Absence());
                  // },
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
                  // onTap: (() {
                  //   Get.to(() => WeeklyProgram());
                  // }),
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
          ],
        ),
      ),
    );
   
  }
}
