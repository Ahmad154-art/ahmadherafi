import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/exam_controller.dart';

class ExamStu extends StatelessWidget {
  ExamStu({Key? key}) : super(key: key);

  // final exam = Get.put(ExamController());
  ExamController controller = Get.put(ExamController());

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {
        await controller.examshow();
      },
      child: Scaffold(
        body: Stack(children: [
          const Image(
            height: double.infinity,
            width: double.infinity,
            image: AssetImage('images/wallpaper.jpg'),
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: GetBuilder<ExamController>(builder: (exam1) {
              if (controller.exam.length == 0) {
                return const Center(
                  child: Text(
                    'Exam Programme Not Found Yet',
                    style: TextStyle(
                      color: Color(0xff35007D),
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                );
              } else if (controller.exam.length != 0) {
                return Column(
                  children: [
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
                            'Good Luck Every One',
                            style: TextStyle(
                              color: Color(0xFF5E35B1),
                              fontWeight: FontWeight.w600,
                              fontSize: 22,
                              // fontStyle: FontStyle.italic,
                            ),
                          ),
                        ]),
                    const SizedBox(
                      height: 27,
                    ),
                    Expanded(
                      child: ListView.separated(
                          itemBuilder: (context, index) => buildShow(
                              controller.days[index],
                              controller.model[index],
                              controller.Time[index],
                              index),
                          separatorBuilder: (context, index) => const SizedBox(
                                height: 12,
                              ),
                          itemCount: controller.exam.length),
                    ),
                  ],
                );
              } else
                return Text('data');
            }),
          ),
        ]),
      ),
    );
  }

  Widget buildShow(String day, SubModel mod, TimeModel time, index) {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.white,
        ),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        height: 80,
        child: Row(
          children: [
            const SizedBox(
              width: 8,
            ),
            const Icon(
              Icons.date_range_outlined,
              color: Color(0xFF1DE9B6),
            ),
            Container(
              width: 100,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '${controller.exam[index].day}',
                    style: const TextStyle(
                      color: Color(0xff35007D),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  // Text(
                  //   '${controller.exam[index].createdAt}',
                  //   style:const TextStyle(
                  //     color: Color(0xff35007D),
                  //     fontWeight: FontWeight.w600,
                  //     fontSize: 18,
                  //   ),
                  // ),
                ],
              ),
            ),
            Container(
              width: 1.5,
              height: 70,
              color: const Color(0xFFAD1457),
            ),
            const SizedBox(width: 20),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(children: [
                  const Icon(
                    Icons.book_outlined,
                    color: Color(0xFFFBC02D),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    '${controller.exam[index].subject}',
                    style: const TextStyle(
                      color: Color(0xff35007D),
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                  ),
                ]),
                const SizedBox(
                  height: 9,
                ),
                Row(children: [
                  const Icon(
                    Icons.access_time,
                    color: Color(0xFF42A5F5),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    '${controller.exam[index].time}',
                    style: const TextStyle(
                      color: Color(0xff35007D),
                      //fontWeight: FontWeight.w600,
                      //fontSize: 20,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  // Text(
                  //   '${time.time2}',
                  //   style: const TextStyle(
                  //     color: Color(0xff35007D),
                  //     //fontWeight: FontWeight.w600,
                  //     //  fontSize: 20,
                  //   ),
                  // ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    'AM',
                    style: TextStyle(
                      color: Color(0xff35007D),
                    ),
                  ),
                ]),
              ],
            ),
          ],
        ));
  }
}
