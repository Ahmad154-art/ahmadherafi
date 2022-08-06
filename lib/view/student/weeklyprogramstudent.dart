import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/weekly_program_controller.dart';

class WeeklyStu extends StatelessWidget {
  WeeklyStu({Key? key}) : super(key: key);

  //final weekly=Get.put(WeeklyStuController());
  WeeklyStuController weekly = Get.put(WeeklyStuController());

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {
        await weekly.weeklyProgram();
      },
      child: Scaffold(
        body: Stack(
          children: [
            //  const Image(
            //     height: double.infinity,
            //     width: double.infinity,
            //     image: AssetImage('wallpaper.jpg'),
            //     fit: BoxFit.cover,
            //   ),
            Container(
              height: double.infinity,
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
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
                              child: ListView.separated(
                                  itemBuilder: (context, index) {
                                    int i = index;
                                    return buildDay(weekly.days[index], i);
                                  },
                                  separatorBuilder: (context, index) =>
                                      const SizedBox(
                                        height: 15,
                                      ),
                                  itemCount: weekly.days.length),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 3,
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
                                  GetBuilder<WeeklyStuController>(
                                      init: WeeklyStuController(),
                                      builder: (context) {
                                        return Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
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
                                    'mme',
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
                            Expanded(
                              child: Obx(() {
                                if (weekly.isLoading.isTrue) {
                                  return const Center(
                                    child: CircularProgressIndicator(
                                      color: Colors.purple,
                                    ),
                                  );
                                }
                                return GetBuilder<WeeklyStuController>(
                                    builder: (controller) {
                                  return ListView.separated(
                                      itemBuilder: (context, index) =>
                                          buildShow(
                                              weekly.Time[index],
                                              /*weekly.sub[index] */ weekly
                                                  .data[index].subject,
                                              index),
                                      separatorBuilder: (context, index) =>
                                          const SizedBox(
                                            height: 15,
                                          ),
                                      itemCount: weekly.data.length);
                                });
                              }),
                            ),
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
      ),
    );
  }

  Widget buildDay(String day, int i) {
    return GestureDetector(
      onTap: () {
        weekly.day = day;
        print(weekly.day);
        print(day);
        print(i);
        onTapped();
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
              '${day}',
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

  Widget buildShow(TimeModel time, String sub, index) {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.white,
        ),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        height: 80,
        child: Row(
          // crossAxisAlignment: CrossAxisAlignment.,
          children: [
            Container(
              width: 70,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '${time.time1}',
                    style: const TextStyle(
                      color: Color(0xff35007D),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    '${time.time2}',
                    style: const TextStyle(
                      color: Color(0xff35007D),
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 1.5,
              height: 70,
              color: Color(0xFFFF6D00),
            ),
            SizedBox(width: 20),
            Text(
              '${weekly.data[index].subject}',
              style: const TextStyle(
                color: Color(0xff35007D),
                fontWeight: FontWeight.w600,
                fontSize: 20,
              ),
            ),
          ],
        ));
  }

  Future<void> onTapped() async {
    await weekly.weeklyProgram();
  }
}
