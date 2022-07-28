import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:futurehope/splashcontroller.dart';
import 'package:futurehope/view/login/codecontroller.dart';
import 'package:futurehope/view/login/email.dart';
import 'package:futurehope/view/login/emailcontroller.dart';
// import 'package:futurehope/view/home.dart';
import 'package:futurehope/view/teacher/home.dart';
import 'package:get/get.dart';
//import 'package:programe1/mark.dart';
import 'package:page_transition/page_transition.dart';

class Splash extends StatelessWidget {
  SplashController controller = Get.find();
 // EmailController controller1 = Get.find();
  //CodeController controller1 = Get.find();
  // const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(EmailController());
    return
        //Container(
        // height: double.infinity,
        // width: double.infinity,
        // child:
        //Stack(
        //children: [
        /* Image.asset('images/backlogo1.png',
        fit: BoxFit.cover,
        height: double.infinity,
        width:double.infinity ,),*/
        AnimatedSplashScreen(
      splash:
          //Column(
          // children:const[
          // Image.asset('images/backlogo1.png'),
          Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(60),
        ),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: const Image(
          image: AssetImage('images/splash.jpg'),
        ),
      ),
      // Image.asset('images/backlogo1.png'),

      // ],),
      /*Container(
          height: double.infinity,
          width: double.infinity,
          child:Stack(
          children: [
             Image.asset('images/backlogo1.png'),
            //),
           /* Column(
            children:[
          Image.asset('images/logo.png'),
            ],),*/
        ]),
    ),*/
      backgroundColor: Color(0xff35007D),
      splashIconSize: 500,
      // splashTransition: SplashTransition.fadeTransition,
      // pageTransitionType: PageTransitionType.leftToRight,
      duration: 5000,
      nextScreen: Email(),
    );
    // ],),
    //);
  }
}
