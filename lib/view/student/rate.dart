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
   RateController rate = Get.put(RateController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('appBar')),
      body: Container(
          padding: EdgeInsets.all(10),
          width: double.infinity,
          height: 300,
          child: LineChart(LineChartData(
              borderData: FlBorderData(show: false),
              lineBarsData: [
                LineChartBarData(spots: [
                   FlSpot(1, 97),
                  const FlSpot(2, 90),
                  const FlSpot(3, 85),
                  const FlSpot(4, 90),
                  const FlSpot(5, 75),
                  const FlSpot(6, 78),
                  // const FlSpot(6, 17),
                  // const FlSpot(7, 15),
                  // const FlSpot(8, 20)
                ])
              ]))),
    );
  }
}
