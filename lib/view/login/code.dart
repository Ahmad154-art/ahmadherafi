import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:futurehope/components/background.dart';
import 'package:futurehope/main.dart';
import 'package:futurehope/view/login/codecontroller.dart';
import 'package:futurehope/view/login/emailcontroller.dart';
import 'package:futurehope/view/student/homestudent.dart';
import 'package:futurehope/view/teacher/home.dart';
import 'package:get/get.dart';

class Code extends StatelessWidget {
  EmailController controller = Get.find();
  CodeController controller1 = Get.find();
  TextEditingController code1 = TextEditingController();
  TextEditingController code2 = TextEditingController();
  TextEditingController code3 = TextEditingController();
  TextEditingController code4 = TextEditingController();
  TextEditingController code5 = TextEditingController();
  TextEditingController code6 = TextEditingController();
  void arr() {
    var array = [code1, code2, code3, code4, code5, code6];
    print(array);
  }
  // void onpress() {
  //   if (code1.text.isNotEmpty &
  //       code2.text.isNotEmpty &
  //       code3.text.isNotEmpty &
  //       code4.text.isNotEmpty &
  //       code5.text.isNotEmpty &
  //       code6.text.isNotEmpty) {
  //     Get.to(Home());
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Background(
          child: Column(
        children: [
          AppBar(
            title: const Text('a'),
          ),
          const Padding(padding: EdgeInsets.only(top: 10)),
          const CircleAvatar(
            backgroundImage: AssetImage('images/code1.jpg'),
            radius: 50,
            backgroundColor: Colors.white12,
            // child: Icon(
            //   Icons.password,
            //   color: Colors.purple,
            //   size: 100,
            // ),
          ),
          Padding(padding: EdgeInsets.only(top: 10)),
          Text('${controller.email}'),

          const Padding(padding: EdgeInsets.only(top: 10)),
          TextFormField(
            keyboardType: TextInputType.number,
            onChanged: (value) {
              controller1.code = value;
            },
            decoration: InputDecoration(hintText: 'Code'),
          ),

          // Form(
          //   child: Row(
          //     children: [
          //       const Padding(padding: EdgeInsets.only(left: 10)),
          //       Container(
          //         child: TextFormField(
          //           controller: code1,
          //           textInputAction: TextInputAction.next,
          //           onEditingComplete: () => FocusScope.of(context).nextFocus(),

          //           //textAlign: TextAlign.right,
          //           style: const TextStyle(fontSize: 25,color: Colors.white),
          //           maxLength: 1, enabled: true,
          //           keyboardType: TextInputType.number,
          //           decoration: const InputDecoration(
          //               contentPadding: EdgeInsets.only(left: 18),
          //               counter: Offstage(),
          //               border: InputBorder.none),
          //         ),
          //         width: 50,
          //         height: 50,
          //         decoration: const BoxDecoration(
          //             color: Colors.purple,
          //             borderRadius: BorderRadius.all(
          //               Radius.circular(15),
          //             )),
          //       ),
          //       const Padding(padding: EdgeInsets.only(left: 10)),
          //       Container(
          //         child: TextFormField(
          //           textInputAction: TextInputAction.next,
          //           onEditingComplete: () => FocusScope.of(context).nextFocus(),
          //           controller: code2,
          //           style: const TextStyle(fontSize: 25,color: Colors.white),
          //           maxLength: 1,
          //           enabled: true,
          //           keyboardType: TextInputType.number,
          //           decoration: const InputDecoration(
          //               contentPadding: EdgeInsets.only(left: 18),
          //               counter: Offstage(),
          //               border: InputBorder.none),
          //         ),
          //         width: 50,
          //         height: 50,
          //         decoration: const BoxDecoration(
          //             color: Colors.purple,
          //             borderRadius: BorderRadius.all(
          //               Radius.circular(15),
          //             )),
          //       ),
          //       const Padding(padding: EdgeInsets.only(left: 10)),
          //       Container(
          //         child: TextFormField(
          //           controller: code3,
          //           textInputAction: TextInputAction.next,
          //           onEditingComplete: () => FocusScope.of(context).nextFocus(),
          //           style: const TextStyle(fontSize: 25,color: Colors.white),
          //           maxLength: 1,
          //           enabled: true,
          //           keyboardType: TextInputType.number,
          //           decoration: const InputDecoration(
          //               contentPadding: EdgeInsets.only(left: 18),
          //               counter: Offstage(),
          //               border: InputBorder.none),
          //         ),
          //         width: 50,
          //         height: 50,
          //         decoration: const BoxDecoration(
          //             color: Colors.purple,
          //             borderRadius: BorderRadius.all(
          //               Radius.circular(15),
          //             )),
          //       ),
          //       const Padding(padding: EdgeInsets.only(left: 10)),
          //       Container(
          //         child: TextFormField(

          //           controller: code4,
          //           textInputAction: TextInputAction.next,
          //           onEditingComplete: () => FocusScope.of(context).nextFocus(),
          //           style: const TextStyle(fontSize: 25,color: Colors.white),
          //           maxLength: 1,
          //           enabled: true,
          //           keyboardType: TextInputType.number,
          //           decoration: const InputDecoration(
          //               contentPadding: EdgeInsets.only(left: 18),
          //               counter: Offstage(),
          //               border: InputBorder.none),
          //         ),
          //         width: 50,
          //         height: 50,
          //         decoration: const BoxDecoration(
          //             color: Colors.purple,
          //             borderRadius: BorderRadius.all(
          //               Radius.circular(15),
          //             )),
          //       ),
          //       const Padding(padding: EdgeInsets.only(left: 10)),
          //       Container(
          //         child: TextFormField(
          //           controller: code5,
          //           textInputAction: TextInputAction.next,
          //           onEditingComplete: () => FocusScope.of(context).nextFocus(),
          //           style: const TextStyle(fontSize: 25,color: Colors.white),
          //           maxLength: 1,
          //           enabled: true,
          //           keyboardType: TextInputType.number,
          //           decoration: const InputDecoration(
          //               contentPadding: EdgeInsets.only(left: 18),
          //               counter: Offstage(),
          //               border: InputBorder.none),
          //         ),
          //         width: 50,
          //         height: 50,
          //         decoration: const BoxDecoration(
          //             color: Colors.purple,
          //             borderRadius: BorderRadius.all(
          //               Radius.circular(15),
          //             )),
          //       ),
          //       const Padding(padding: EdgeInsets.only(left: 10)),
          //       Container(
          //         child: TextFormField(
          //           //  onTap: onpress,
          //           controller: code6,
          //           style: const TextStyle(fontSize: 25,color: Colors.white),
          //           maxLength: 1,
          //           enabled: true,
          //           keyboardType: TextInputType.number,
          //           decoration: const InputDecoration(
          //               contentPadding: EdgeInsets.only(left: 18),
          //               counter: Offstage(),
          //               border: InputBorder.none),
          //         ),
          //         width: 50,
          //         height: 50,
          //         decoration: const BoxDecoration(
          //             color: Colors.purple,
          //             borderRadius: BorderRadius.all(
          //               Radius.circular(15),
          //             )),
          //       ),
          //     ],
          //   ),
          // ),
          const Padding(padding: EdgeInsets.only(top: 25, left: 50)),
          Row(
            children: [
              const Padding(padding: EdgeInsets.only(left: 125)),
              GestureDetector(
                onTap: () {
                  // Get.offAll(StudentHome());
                  onClickCode();
                },
                child: Container(
                  // ignore: prefer_const_constructors
                  decoration: BoxDecoration(
                      color: Colors.purple,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(15),
                      )),
                  width: 125, height: 50,

                  child: const Center(
                    child: Text(
                      'verification',
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      )),
    );
  }

  void onClickCode() async {
    // await controller.sendEmail();
    await controller1.login();
    if (controller1.loginStatus && controller1.role == 2) {
     // sharepref!.setString('token', "token");
      Get.toNamed("/studenthome");
    } else if (controller1.loginStatus && controller1.role == 1) {
      Get.toNamed("/home");
    }
    //  else {
    //   return;
    // }
    // return;
  }

  // if (controller1.role == 2) {

  // }
  //  Get.to(Code());
  // }
}
