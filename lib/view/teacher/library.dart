import 'package:flutter/material.dart';
import 'package:futurehope/controller/profile_contoller.dart';
import 'package:futurehope/view/student/homestudent.dart';
import 'package:futurehope/view/student/profile.dart';
import 'package:futurehope/view/teacher/home.dart';
import 'package:futurehope/view/teacher/profile.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../controller/library_contoller.dart';

class Libraly extends StatelessWidget {
  // const Libraly({Key? key}) : super(key: key);
  LibralyController controller = Get.put(LibralyController());
  TeacherProfileController profileController =
      Get.put(TeacherProfileController());
  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {
        await controller.getbook();
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          toolbarHeight: 70,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children:const [
              Text(
                'Li',
                style: TextStyle(
                  color: Color(0xFFFF3D00),
                  fontSize: 25,
                  //fontWeight: FontWeight.w300,
                ),
              ),
              //SizedBox(width: 8,),
              Text(
                'bra',
                style: TextStyle(
                  color: Color(0xFF2962FF),
                  fontSize: 25,
                  // fontWeight: FontWeight.w300,
                ),
              ),
              Text(
                'ry',
                style: TextStyle(
                  color: Color(0xFF00E5FF),
                  //Color(0xFF1DE9B6),
                  fontSize: 25,
                  // fontWeight: FontWeight.w300,
                ),
              ),
            ],
          ),
        ),
        body: Stack(children: [
          const Image(
            height: double.infinity,
            width: double.infinity,
            image: AssetImage('images/wallpaper.jpg'),
            fit: BoxFit.cover,
          ),
          GetBuilder<LibralyController>(
              init: LibralyController(),
              builder: (data) {
                return Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(
                            Icons.school,
                            color: Color(0xFF9575CD),
                            size: 35,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Today A Reader Tomorrow A Leader',
                            style: TextStyle(
                              color: Color(0xFF5E35B1),
                              fontWeight: FontWeight.w600,
                              fontSize: 17,
                              // fontStyle: FontStyle.italic,
                            ),
                          ),
                        ]),
                    const SizedBox(
                      height: 27,
                    ),
                    Expanded(
                      child: ListView.separated(
                          itemBuilder: (context, index) =>
                              buildItem(data.books[index], index),
                          separatorBuilder: (context, index) => const SizedBox(
                                height: 10,
                              ),
                          itemCount: controller.book.length),
                    ),
                   
                  ]),
                );
              }),
               Column(mainAxisAlignment: MainAxisAlignment.end,
                 children:[ Container(
                        height: 78,
                        width: double.infinity,
                        child: BottomNavigationBar(
                          backgroundColor: Color(0xFFE3DEF3),
                          elevation: 0,
                          items: <BottomNavigationBarItem>[
                            BottomNavigationBarItem(
                              icon: IconButton(
                                icon: const Icon(Icons.person),
                                onPressed: onClick,
                              ),
                              label: 'Profile',
                            ),
                            BottomNavigationBarItem(
                              backgroundColor: Color(0xFFE3DEF3),
                                icon: IconButton(
                                    icon: const Icon(Icons.home),
                                    onPressed: rule),
                                label: 'Home'),
                            // BottomNavigationBarItem(icon: IconButton(icon: Icon(Icons.abc),onPressed: (){Get.to(TeacherProfile1());},)),
                            BottomNavigationBarItem(
                              icon: IconButton(
                                icon: const Icon(Icons.library_books),
                                onPressed: () {},
                              ),
                              label: 'library',
                            ),
               
                            // BottomNavigationBarItem(
                            //   icon: IconButton(onPressed: Navigator.push(''), icon: Icon(Icons.abc)))
                          ],
                          selectedItemColor: Colors.purple,
                          currentIndex: 2,
                        ),
                      ),
         ] ),
        ]),
      ),
    );
  }

  Widget buildItem(BookModel mod, index) {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        height: 68,
        child: Row(
          // crossAxisAlignment: CrossAxisAlignment.,
          children: [
            Container(
              width: 50,
              child: Center(
                child: Text(
                  '${index + 1}.',
                  style: const TextStyle(
                    color: Color(0xFF039BE5),
                    fontWeight: FontWeight.w600,
                    fontSize: 25,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
            ),
            Container(
              width: 1.8,
              height: 68,
              color: const Color(0xFFFFD600),
            ),
            const SizedBox(width: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    // Icon(Icons.book_outlined,color: Color(0xFF1DE9B6),),
                    // SizedBox(width: 12,),
                    Text(
                      '${controller.book[index].name}',
                      style: const TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF5E35B1),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(children: [
                  //  Icon(Icons.edit_road_sharp,color:  Color(0xFFFBC02D),),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Description : ${controller.book[index].descreption}',
                    style: const TextStyle(
                      fontSize: 12,
                      color: Color(0xff35007D),
                    ),
                  ),
                ]),
              ],
            ),
          ],
        ));
  }

  Future<void> onClick() async {
    await profileController.profile();
    SharedPreferences prefs = await SharedPreferences.getInstance();
    int? role = prefs.getInt('role');
    if (role == 1) {
      Get.to(TeacherProfile1());
    } else {
      Get.to(StuProfile1());
    }
   // Get.to(TeacherProfile1());
   // print(profileController.userdata[0].image);
  }

  void rule() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    int? role = prefs.getInt('role');
    if (role == 1) {
      Get.to(Home());
    } else {
      Get.to(StudentHome());
    }
  }
}
