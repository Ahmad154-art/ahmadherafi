import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/student_mark_contoller.dart';

class MarkStudent extends StatelessWidget {
  MarkStudent({Key? key}) : super(key: key);

  //final sub=Get.put(MarkStuController());
  MarkStuController sub = Get.put(MarkStuController());
  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {
        await sub.subjectStudent();
        await sub.getResult();
      },
      child: Scaffold(
        body: Stack(
          children: [
            Image(
              height: double.infinity,
              width: double.infinity,
              image: AssetImage('images/wallpaper.jpg'),
              fit: BoxFit.cover,
            ),
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    height: double.infinity,
                    color: Color(0xFF5E35B1),
                    child: Padding(
                      padding: const EdgeInsetsDirectional.only(
                        top: 10,
                        start: 10,
                        end: 10,
                      ),
                      child: Column(
                        children: [
                          IconButton(
                            onPressed: () {
                              Get.back();
                            },
                            icon: Icon(
                              Icons.home,
                              color: Colors.white,
                              size: 30,
                            ),
                          ),
                          SizedBox(
                            height: 80,
                          ),
                          Expanded(child: GetBuilder<MarkStuController>(
                              builder: (controller) {
                            return Obx(() {
                              if (sub.isLoading.isTrue) {
                                return Center(
                                  child: CircularProgressIndicator(
                                    color: Colors.purple,
                                  ),
                                );
                              }
                              return ListView.separated(
                                  itemBuilder: (context, index) =>
                                      buildSubject(index),
                                  separatorBuilder: (context, index) =>
                                      SizedBox(
                                        height: 15,
                                      ),
                                  itemCount: sub.data.length);
                            });
                          })),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: Container(
                    height: double.infinity,
                    //  color:   Color(0xFFF5F5F5),
                    child: Padding(
                      padding: const EdgeInsetsDirectional.only(
                        top: 10,
                        start: 10,
                        end: 10,
                      ),
                      child: Column(
                        children: [
                          Container(
                            height: 130,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      'M',
                                      style: TextStyle(
                                        color: Color(0xFFFF3D00),
                                        fontSize: 30,
                                        //fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Text(
                                      'y',
                                      style: TextStyle(
                                        color: Color(0xFFFF3D00),
                                        fontSize: 30,
                                        // fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                                // SizedBox(width: 10,),

                                // SizedBox(width: 10,),
                                Text(
                                  'M',
                                  style: TextStyle(
                                    color: Color(0xFF2962FF),
                                    fontSize: 70,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                                Text(
                                  'ar',
                                  style: TextStyle(
                                    color: Color(0xFFFBC02D),
                                    fontSize: 70,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                                Text(
                                  'ks',
                                  style: TextStyle(
                                    color: Color(0xFF00E5FF),
                                    //Color(0xFF1DE9B6),
                                    fontSize: 70,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 2,
                            width: double.infinity,
                            color: Color(0xFF512DA8),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          // SingleChildScrollView(
                          //  child:
                          Expanded(
                            child: Column(
                              children: [
                                Expanded(child: GetBuilder<MarkStuController>(
                                  builder: (controller) {
                                    return Obx(() {
                                      if (sub.load.isTrue) {
                                        return const Center(
                                          child: CircularProgressIndicator(
                                            color: Colors.purple,
                                          ),
                                        );
                                      }
                                      return ListView.separated(
                                          itemBuilder: (context, index) =>
                                              buildItem(
                                                  sub.Exams[index],
                                                  sub.Marks[index],
                                                  sub.color[index],
                                                  index),
                                          separatorBuilder: (context, index) =>
                                              SizedBox(
                                                height: 15,
                                              ),
                                          itemCount: sub.result.length);
                                    });
                                  },
                                )),
                              ],
                            ),
                          ),
                        ],
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

  Widget buildSubject(index) {
    return GestureDetector(
      onTap: () {
        sub.subjectId = sub.data[index].id;
        print(sub.subjectId);
        onpressed();

        //print(sub.data[index].id);
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
        ),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Container(
          height: 40,
          // width: 60,
          child: Center(
            child: Text(
              '${sub.data[index].name}',
              style: TextStyle(
                color: Color(0xFFFFFFFF),
              ),
            ),
          ),
          color: Colors.white.withOpacity(0.5),
        ),
      ),
    );
  }

  Widget buildItem(String type, Type typ, color, index) {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Row(
          // crossAxisAlignment: CrossAxisAlignment.,
          children: [
            Container(
              width: 10,
              height: 80,
              color: color,
            ),
            SizedBox(width: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${type}',
                  style: TextStyle(
                    color: Color(0xff35007D),
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  '${sub.result[index].createdAt}',
                  style: TextStyle(
                    color: Color(0xff35007D),
                  ),
                ),
              ],
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsetsDirectional.only(
                  end: 30,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      '${sub.result[index].mark}',
                      style: TextStyle(
                          color: Color(0xff35007D),
                          fontSize: 20,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }

  Future<void> onpressed() async {
    await sub.getResult();
  }
}
