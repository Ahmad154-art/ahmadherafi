import 'package:flutter/material.dart';
import 'package:futurehope/studentcontroller/ratecontroller.dart';
import 'package:get/get.dart';
import 'dart:math';
import 'package:fl_chart/fl_chart.dart';

class Rate extends StatefulWidget {
  @override
  State<Rate> createState() => RateState();
}

class RateState extends State<Rate> {
  int? index;
  RateController rate = Get.put(RateController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('appBar')),
        body: //GetBuilder<RateController>(
            //builder: (controller) {
            //  return
            ListView.separated(
                itemBuilder: (context, index) => Container(
                    padding: EdgeInsets.all(10),
                    width: double.infinity,
                    height: 300,
                    child: Obx(() {
                      if (rate.isLoading.isTrue) {
                        return Center(
                          child: CircularProgressIndicator(
                            color: Colors.purple,
                          ),
                        );
                      }
                      return buildshow(index);
                    })),
                separatorBuilder: (context, index) => SizedBox(),
                itemCount: 1)
        //  },
        // )
        );
  }

  Widget buildshow(index) {
    //index = rate.rate.length;

    List<FlSpot> spots = [];

    int i = 0;
    rate.rate.forEach((e) {
      spots.add(FlSpot(rate.type[i], rate.rate[i].markAverage.toDouble()));
      i++;
    });

    return LineChart(LineChartData(
      borderData: FlBorderData(show: false),
      lineBarsData: [LineChartBarData(spots: spots)],
    ));
  }
}
