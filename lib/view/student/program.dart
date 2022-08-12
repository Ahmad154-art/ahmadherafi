import 'package:flutter/material.dart';
import 'package:futurehope/view/student/exam.dart';
import 'package:futurehope/view/student/weeklyprogramstudent.dart';
import 'package:get/get.dart';

import '../../controller/exam_controller.dart';

class AllWeekly extends StatelessWidget {
  ExamController examController = Get.put(ExamController());
  var formkey = GlobalKey<FormState>();
  //Mark({Key? key}) : super(key: key);
  // AllWeeklyController all = Get.put(AllWeeklyController());

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 20,
          backgroundColor: const Color(0xFFFFFFFF),
          bottom:  TabBar(
            indicatorColor: Color(0xff35007D),
            tabs: [
            const  Text(
                'Weekly Programme',
                style: TextStyle(
                  color: Color(0xff35007D),
                  fontWeight: FontWeight.w800,
                ),
              ),
              TextButton(
                onPressed: exam,
                child:const Text('Exam Programme'),
                // ,
                // style: TextStyle(
                //   color: Color(0xff35007D),
                //   fontWeight: FontWeight.w800,
                // ),
              ),
            ],
          ),
        ),
        body: Form(
          key: formkey,
          child: TabBarView(
            children: [
              WeeklyStu(),
              ExamStu()
              // WeeklyStu1(),
              // ExamStu(),
              /* show mark */

              // WeeklyStu(),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> exam() async {
    await examController.examshow();
   // Get.to(ExamStu());
  }
}
