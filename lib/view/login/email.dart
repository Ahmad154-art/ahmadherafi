import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:futurehope/components/background.dart';
import 'package:futurehope/main.dart';
import 'package:futurehope/view/login/code.dart';
import 'package:futurehope/view/login/emailcontroller.dart';
import 'package:get/get.dart';

class Email extends StatelessWidget {
  
  EmailController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Background(
        child: ListView(
          children: [
            // AppBar(
            //   title: const Text('a'),
            // ),
            const Padding(padding: EdgeInsets.only(top: 10)),
            const CircleAvatar(
              //backgroundImage: AssetImage('images/photo.jpg'),
              radius: 75, backgroundColor: Colors.white12,
              child: Icon(
                Icons.email,
                color: Colors.purple,
                size: 100,
              ),
            ),

            const Padding(padding: EdgeInsets.only(top: 10)),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                hintText: 'Email',
              ),
              onChanged: (value) {
                controller.email = value;
              },
            ),
            const Padding(padding: EdgeInsets.only(top: 25, left: 50)),
            Row(
              children: [
                const Padding(padding: EdgeInsets.only(left: 150)),
                GestureDetector(
                  onTap: () {
                    // EasyLoading.show(status: 'Loading...', dismissOnTap: true);
                    onClick();
                    // sharepref!.setString('token', 'token');
                    // Get.toNamed("/code");
                  },
                  child: Container(
                    // ignore: prefer_const_constructors
                    decoration: BoxDecoration(
                        color: Colors.purple,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(15),
                        )),
                    width: 85, height: 50,

                    child: const Center(
                      child: Text(
                        'send',
                        style: TextStyle(fontSize: 25, color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void onClick() async {
    await controller.sendEmail();
    //if (controller.signUpStatus) {
     // sharepref!.getString('token');
      Get.toNamed("/code");
   // }
    //  Get.to(Code());
  }
}
