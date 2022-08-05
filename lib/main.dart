import 'package:flutter/material.dart';
import 'package:futurehope/binding/codebinding.dart';
import 'package:futurehope/binding/emailbinding.dart';
import 'package:futurehope/binding/splashbinding.dart';
import 'package:futurehope/binding/subject_binding.dart';
import 'package:futurehope/storage.dart';
import 'package:futurehope/view/login/code.dart';
import 'package:futurehope/view/login/email.dart';
import 'package:futurehope/view/student/homestudent.dart';
import 'package:futurehope/view/student/markstudent.dart';
import 'package:futurehope/view/student/rate.dart';
import 'package:futurehope/view/student/schoolfee.dart';
import 'package:futurehope/view/student/test.dart';
import 'package:futurehope/view/teacher/absenceteacher.dart';
import 'package:futurehope/view/teacher/home.dart';

import 'package:futurehope/view/splash.dart';
import 'package:futurehope/view/teacher/homeworkteacher.dart';
import 'package:futurehope/view/teacher/markteacher.dart';
import 'package:futurehope/view/teacher/weeklyprogramteacher.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
//import 'package:shared_preferences/shared_preferences.dart';

//SharedPreferences? sharepref;

void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  // sharepref = await SharedPreferences.getInstance();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      //home: Mark(),
      initialRoute: "/splash",
      debugShowCheckedModeBanner: false,
      getPages: [
        GetPage(
            name: "/splash", page: () => Splash(), binding: SplashBinding()),
        GetPage(name: "/weeklyprogram", page: () => StudentHome()),
        GetPage(name: "/email", page: () => Email(), binding: EmailBinding()),
        GetPage(name: "/code", page: () => Code(), binding: CodeBinding()),
        // GetPage(name: "/mark", page: () => Mark(), binding: SubjectBinding() ),
        GetPage(
          name: "/studenthome",
          page: () => StudentHome(),
        ),
        GetPage(
          name: "/home",
          page: () => Home(),
        ),
      ],
      builder: EasyLoading.init(),
    );
  }
}
