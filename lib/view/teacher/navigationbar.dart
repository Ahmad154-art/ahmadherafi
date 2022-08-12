
import 'package:custom_top_navigator/custom_navigation.dart';

import 'package:flutter/material.dart';
import 'package:futurehope/view/teacher/home.dart';
import 'package:futurehope/view/teacher/library.dart';
import 'package:futurehope/view/teacher/profile.dart';


class Navi2 extends StatelessWidget {
  const Navi2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
        scaffold: Scaffold(
          
        bottomNavigationBar: BottomNavigationBar(
          elevation: 0,
          backgroundColor: Color(0xFFE3DEF3),
          selectedLabelStyle:const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w600,

          ),
          unselectedItemColor: Color(0xFF7E57C2),
          selectedItemColor: Color(0xff35007D),
          items:const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'home',
              
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.library_books_outlined),
              label: 'Library',
            ),
          ],
        ),
    ),

        children: [
          Home(),
          TeacherProfile1(),
          Libraly(),
        ],
      );
  }
}
