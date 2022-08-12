import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/show_controller.dart';
import '../../controller/teacher_table_controller.dart';

class WeeklyTeacher extends StatelessWidget {
//  WeeklyTeacher({Key? key}) : super(key: key);

  // final weekly = Get.put(WeeklyTeaController());
  WeeklyTeaController weekly = Get.put(WeeklyTeaController());
  AbsantController1 controller1 = Get.put(AbsantController1());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const Image(
            height: double.infinity,
            width: double.infinity,
            image: AssetImage('images/wallpaper.jpg'),
            fit: BoxFit.cover,
          ),
          Container(
            height: double.infinity,
            child: Row(
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
                            onPressed: () {},
                            icon: const Icon(
                              Icons.home,
                              color: Colors.white,
                              size: 30,
                            ),
                          ),
                          const SizedBox(
                            height: 80,
                          ),
                          Expanded(
                              flex: 1,
                              child: Obx(() {
                                if (controller1.load.isTrue) {
                                  return Center(
                                    child: CircularProgressIndicator(
                                      color: Colors.purple,
                                    ),
                                  );
                                }
                                return ListView.separated(
                                    itemBuilder: (context, index) {
                                      int i = index;
                                      return buildSub(
                                          weekly.clas[index], i, index);
                                    },
                                    separatorBuilder: (context, index) =>
                                        const SizedBox(
                                          height: 15,
                                        ),
                                    itemCount: controller1.classtlist.length);
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
                    //color: Color(0xFFF5F5F5),
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
                              //  crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                GetBuilder<WeeklyTeaController>(
                                    builder: (context) {
                                  return Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    mainAxisSize: MainAxisSize.min,
                                    children: const [
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
                                  );
                                }),
                                const Text(
                                  'Pro',
                                  style: TextStyle(
                                    color: Color(0xFF2962FF),
                                    fontSize: 40,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                                const Text(
                                  'gr',
                                  style: TextStyle(
                                    color: Color(0xFFFBC02D),
                                    fontSize: 40,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                                const Text(
                                  'am',
                                  style: TextStyle(
                                    color: Color(0xFF00E5FF),
                                    //Color(0xFF1DE9B6),
                                    fontSize: 40,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 2,
                            width: double.infinity,
                            color: Color(0xFFB39DDB),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Expanded(child: Obx(() {
                            if (weekly.isLoading.isTrue) {
                              return const Center(
                                child: CircularProgressIndicator(
                                  color: Colors.purple,
                                ),
                              );
                            }
                            return ListView.separated(
                                itemBuilder: (context, index) => buildItem(
                                    //  weekly.data[index],
                                    weekly.color[index],
                                    index),
                                separatorBuilder: (context, index) =>
                                    const SizedBox(
                                      height: 15,
                                    ),
                                itemCount: weekly.program.length);
                          })),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildSub(String clas, int i, index) {
    return GestureDetector(
      onTap: () {
        weekly.classid = controller1.classtlist[index].id;
        print(weekly.classid);
        ontapped();
        //  print(i);
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
        ),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Container(
          height: 70,
          // width: 60,
          child: Center(
            child: Text(
              '${controller1.classtlist[index].name}',
              style: const TextStyle(
                color: Color(0xFFFFFFFF),
                fontSize: 17,
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
          color: Colors.white.withOpacity(0.5),
        ),
      ),
    );
  }

  Widget buildItem(color, index) {
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
            const SizedBox(width: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${weekly.program[index].day}',
                  style: const TextStyle(
                    color: Color(0xff35007D),
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  '${weekly.program[index].name}',
                  style: const TextStyle(
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
                    // Icon(Icons.access_time,color: Color(0xFF1DE9B6),),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      '${weekly.program[index].time}',
                      style: const TextStyle(
                          color: Color(0xff35007D),
                          fontSize: 15,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }

  Future<void> ontapped() async {
    await weekly.week();
  }
}
