import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/student_absant_controller.dart';

class AbsantStu extends StatelessWidget {
  //const AbsantStu({Key? key}) : super(key: key);
  AbsantStuController controller = Get.put(AbsantStuController());
  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {
        await controller.studentAbsant();
      },
      child: Scaffold(
        body: Stack(children: [
          Image(
            height: double.infinity,
            width: double.infinity,
            image: AssetImage('images/wallpaper.jpg'),
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(children: [
              Container(
                height: 90,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadiusDirectional.only(
                    bottomStart: Radius.circular(50),
                    topEnd: Radius.circular(50),
                  ),
                  color: Colors.white,
                ),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Column(children: [
                  Expanded(
                    child: Column(
                      children: [
                        Container(
                          height: 8,
                          color: Color(0xFF26C6DA),
                        ),
                        Expanded(
                          child: Row(
                            children: [
                              Container(
                                width: 8,
                                color: Color(0xFFFF6D00),
                              ),
                              Expanded(
                                child: Center(
                                  child: Text(
                                    'Absant & delay',
                                    style: TextStyle(
                                      fontSize: 40,
                                      color: Color(0xff35007D),
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                width: 8,
                                color: Color(0xFF7E57C2),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 8,
                          color: Color(0xFFFFEA00),
                        ),
                      ],
                    ),
                  ),
                ]),
              ),
              SizedBox(
                height: 10,
              ),
              Column(children: [
                Container(
                  padding: EdgeInsets.only(right: 50),
                  child: PieChart(PieChartData(centerSpaceRadius: 65,
                      // centerSpaceColor: Colors.pink,

                      sections: [
                        PieChartSectionData(
                            value: 80,
                            color: Colors.purple,
                            showTitle: true,
                            titleStyle: TextStyle(fontStyle: FontStyle.italic)),
                        PieChartSectionData(
                            value: 20, color: Colors.orange, showTitle: true),
                      ])),
                  height: 250,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xFFD1C4E9),
                  ),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                ),
              ]),
              SizedBox(
                height: 10,
              ),
              GetBuilder<AbsantStuController>(
                  init: AbsantStuController(),
                  builder: (data) {
                    return Expanded(child: Obx(() {
                      if (controller.isLoading.isTrue) {
                        return const Center(
                          child: CircularProgressIndicator(
                            color: Colors.purple,
                          ),
                        );
                      }
                      return ListView.separated(
                          itemBuilder: (context, index) =>
                              buildShow(data.absant[index], index),
                          separatorBuilder: (context, index) => SizedBox(
                                height: 12,
                              ),
                          itemCount: controller.absence.length);
                    }));
                  }),
            ]),
          ),
        ]),
      ),
    );
  }

  Widget buildShow(AbsantModel mod, index) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 72,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadiusDirectional.only(
            bottomStart: Radius.circular(20),
            bottomEnd: Radius.circular(20),
          ),
          color: Colors.white,
        ),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 18,
              child: Center(
                child: Text(
                  '${controller.absence[index].createdAt}',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              color: Color(0xFF7E57C2),
            ),
            Expanded(
                child: Container(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsetsDirectional.only(
                  start: 15,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(children: [
                      Icon(
                        Icons.account_circle_outlined,
                        color: Color(0xFF1DE9B6),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text('You are ${controller.absence[index].type}')
                    ]),
                    SizedBox(
                      height: 5,
                    ),
                    Row(children: [
                      Icon(
                        Icons.segment,
                        color: Color(0xFFFBC02D),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text('Reason : ${controller.absence[index].reason}')
                    ]),
                  ],
                ),
              ),
            )),
          ],
        ),
      ),
    );
  }
}
