import 'package:flutter/material.dart';
import 'package:futurehope/components/background.dart';
import 'package:futurehope/config/server_config.dart';
import 'package:futurehope/controller/library_contoller.dart';
import 'package:futurehope/service/profile_service.dart';
import 'package:futurehope/view/teacher/home.dart';
import 'package:futurehope/view/teacher/library.dart';
import 'package:get/get.dart';

import '../../controller/profile_contoller.dart';

class TeacherProfile1 extends StatelessWidget {
  TeacherProfileController controller = Get.put(TeacherProfileController());
  LibralyController libralyController = Get.put(LibralyController());

  // const TeacherProfile1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Background(
        // children: [
        // const  Image(
        //     height: double.infinity,
        //     width: double.infinity,
        //     image: AssetImage('images/wallpaper.jpg'),
        //     fit: BoxFit.cover,
        //   ),
        // child:    Padding(
        //       padding: const EdgeInsetsDirectional.only(
        //         top:25,
        //         start: 25,
        //         end: 25,
        //         bottom: 40
        //       ),
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.white.withOpacity(0.8),
          ),
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'M',
                      style: TextStyle(
                        color: Color(0xFFAD1457),
                        fontSize: 40,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      'y',
                      style: TextStyle(
                        color: Color(0xFF2979FF),
                        fontSize: 40,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      'pr',
                      style: TextStyle(
                        color: Color(0xFF5E35B1),
                        fontSize: 40,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      'of',
                      style: TextStyle(
                        color: Color(0xFF26C6DA),
                        fontSize: 40,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      'ile',
                      style: TextStyle(
                        color: Color(0xFFFF6F00),
                        fontSize: 40,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                GetBuilder<TeacherProfileController>(
                    init: TeacherProfileController(),
                    builder: (pro) {
                      return Expanded(
                        child: Container(
                          width: double.infinity,
                          child: ListView(
                            //  crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(children: [
                                const CircleAvatar(
                                  // backgroundImage: NetworkImage(
                                  //     controller.userdata[0].image,
                                  //     scale: 1),
                                  //  backgroundImage: ?FadeInImage.assetNetwork(
                                  //  placeholder: 'images/loading.gif',
                                  // image:
                                  //  'http://${serverConfig.domainName} /profile/${controller.userdata[0].image}' ): Image.asset('wallpaper.jpg');
                                  maxRadius: 45,
                                  backgroundColor: Colors.white,
                                ),
                                const SizedBox(
                                  width: 18,
                                ),
                                Container(
                                  //color: Colors.deepPurple,
                                  // height: 90,
                                  child: Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          '${controller.userdata[0].firstName} ${controller.userdata[0].lastName}',
                                          style: const TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w600,
                                            color: Color(0xff35007D),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          '${controller.userdata[0].experince}',
                                          style: const TextStyle(
                                            //  fontSize: 20,
                                            //fontWeight: FontWeight.w600,
                                            color: Color(0xff35007D),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ]),

                              //****************
                              const SizedBox(
                                height: 20,
                              ),
                              Row(
                                children: const [
                                  Icon(
                                    Icons.clear_all_sharp,
                                    color: Color(0xFF1DE9B6),
                                    size: 23,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    'Number',
                                    style: TextStyle(
                                      //  fontSize: 20,
                                      //fontWeight: FontWeight.w600,
                                      color: Color(0xff35007D),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.only(
                                  start: 27,
                                ),
                                child: Text(
                                  '${controller.userdata[0].number}',
                                  style: const TextStyle(
                                    color: Color(0xff35007D),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Container(
                                height: 2,
                                width: double.infinity,
                                color: const Color(0xFFB39DDB),
                              ),
                              //***************

                              const SizedBox(
                                height: 20,
                              ),
                              Row(
                                children: const [
                                  Icon(
                                    Icons.monetization_on_outlined,
                                    color: Color(0xFF1DE9B6),
                                    size: 23,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    'Salary',
                                    style: TextStyle(
                                      //  fontSize: 20,
                                      //fontWeight: FontWeight.w600,
                                      color: Color(0xff35007D),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.only(
                                  start: 27,
                                ),
                                child: Text(
                                  '${controller.userdata[0].salary}',
                                  style: const TextStyle(
                                    color: Color(0xff35007D),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Container(
                                height: 2,
                                width: double.infinity,
                                color: Color(0xFFB39DDB),
                              ),
                              //*********
                              const SizedBox(
                                height: 20,
                              ),
                              Row(
                                children: const [
                                  Icon(
                                    Icons.email_outlined,
                                    color: Color(0xFF1DE9B6),
                                    size: 23,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    'Email',
                                    style: TextStyle(
                                      //  fontSize: 20,
                                      //fontWeight: FontWeight.w600,
                                      color: Color(0xff35007D),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.only(
                                  start: 27,
                                ),
                                child: Text(
                                  '${controller.userdata[0].email}',
                                  style: const TextStyle(
                                    color: Color(0xff35007D),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Container(
                                height: 2,
                                width: double.infinity,
                                color: const Color(0xFFB39DDB),
                              ),
                              const Padding(padding: EdgeInsets.only(top: 60)),
                              BottomNavigationBar(
                                // elevation: 1,
                                items: <BottomNavigationBarItem>[
                                  BottomNavigationBarItem(
                                    icon: IconButton(
                                      icon: Icon(Icons.person),
                                      onPressed: () {},
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
                                currentIndex: 0,
                              ),
                              //**********
                            ],
                          ),
                        ),
                      );
                    }),
              ],
            ),
          ),
          // child:
        ),
      ),

      // ],
    );
    // );
  }

  Future<void> onpressed() async {
    await libralyController.getbook();
    Get.to(Libraly());
  }

  // Future<void> onClick() async {
  //   await profileController.profile();
  //   Get.to(TeacherProfile1());
  //   print(profileController.userdata[0].image);
  // }
}