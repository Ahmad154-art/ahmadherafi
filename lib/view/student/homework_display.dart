import 'package:flutter/material.dart';
import 'package:futurehope/controller/student_homework_controller.dart';
import 'package:get/get.dart';

class Displayhome extends StatelessWidget {
  var sub;
  var clas;
  var pagenum;
  var desc;
  Displayhome(this.sub, this.clas, this.pagenum, this.desc);
 // final task4 = Get.lazyPut(() => HomeworkShowController(), fenix: true);

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {},
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Display',
                style: TextStyle(
                  color: Color(0xFFFF3D00),
                  fontSize: 25,
                  //fontWeight: FontWeight.w300,
                ),
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                'Home',
                style: TextStyle(
                  color: Color(0xFF2962FF),
                  fontSize: 25,
                  // fontWeight: FontWeight.w300,
                ),
              ),
              Text(
                'Work',
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
          Container(
            // color:Color(0xFFE3DEF3) ,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      // CircleAvatar(radius: 40,backgroundColor: Color(0xFFD1C4E9),),
                      Container(
                        height: 90,
                        width: 90,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xFFD1C4E9),
                        ),
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        child: Center(
                          child: Text(
                            'Subject',
                            style: TextStyle(color: Color(0xff35007D)),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.only(
                                  start: 5,
                                  //top: 5,
                                ),
                               // child: Expanded(
                                  child: SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Text('${sub}')),
                               // ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.only(
                                  top: 15,
                                ),
                                child: Container(
                                  width: double.infinity,
                                  height: 2,
                                  color: Color(0xFFD1C4E9),
                                ),
                              ),
                            ]),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      // CircleAvatar(radius: 40,backgroundColor: Color(0xFFD1C4E9),),
                      Container(
                        height: 90,
                        width: 90,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xFFB39DDB),
                        ),
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        child: Center(
                          child: Text(
                            'Class',
                            style: TextStyle(color: Color(0xff35007D)),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.only(
                                  start: 5,
                                  //top: 5,
                                ),
                               // child: Expanded(
                                  child: SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Text('${clas}')),
                               // ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.only(
                                  top: 15,
                                ),
                                child: Container(
                                  width: double.infinity,
                                  height: 2,
                                  color: Color(0xFFB39DDB),
                                ),
                              ),
                            ]),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      // CircleAvatar(radius: 40,backgroundColor: Color(0xFFD1C4E9),),
                      Container(
                        height: 90,
                        width: 90,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xFF9575CD),
                        ),
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        child: Center(
                          child: Text(
                            'pagenumber',
                            style: TextStyle(color: Color(0xff35007D)),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.only(
                                  start: 5,
                                  //top: 5,
                                ),
                               // child: Expanded(
                                  child: SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Text('${pagenum}')),
                              //  ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.only(
                                  top: 15,
                                ),
                                child: Container(
                                  width: double.infinity,
                                  height: 2,
                                  color: Color(0xFF9575CD),
                                ),
                              ),
                            ]),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      // CircleAvatar(radius: 40,backgroundColor: Color(0xFFD1C4E9),),
                      Container(
                        height: 90,
                        width: 90,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xFF7E57C2),
                        ),
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        child: Center(
                          child: Text(
                            'description',
                            style: TextStyle(color: Color(0xff35007D)),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.only(
                                  start: 5,
                                  //top: 5,
                                ),
                                //child: Expanded(
                                  child: SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Text('${desc}')),
                               // ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.only(
                                  top: 15,
                                ),
                                child: Container(
                                  width: double.infinity,
                                  height: 2,
                                  color: Color(0xFF7E57C2),
                                ),
                              ),
                            ]),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
