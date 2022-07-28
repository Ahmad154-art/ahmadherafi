import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../studentcontroller/clickcontroller.dart';
//import 'package:programe1/clickcontroller.dart';

class Click extends StatelessWidget {
  const Click({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: GetBuilder<ClickController>(
        init: ClickController(),
        builder:(click){
          return  Column(
            children: [
              GestureDetector(
                onTap: () {
                  click.incrementState();
                  click.len=5;
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: Container(
                    height: 30,
                    width: 100,
                    child: const Center(
                      child: Text('send',
                        style: TextStyle(color: Color(0xFFFFFFFF),),),),
                    color: const Color(0xff35007D),
                  ),
                ),
              ),
              Expanded(
                child: ListView.separated(
                  itemBuilder: (context,index){
                    if(click.state==0){
                      click.len=1;
                      return Center(
                        child: Text(
                          'Select choises to show mark',
                          style: TextStyle(color: Colors.grey[600]),),
                      );
                    }
                    else {
                      // mark2.len=5;
                      return buildShow();
                      }

                  },
                  separatorBuilder:  (context,index){
                    return  SizedBox(height: 10,);
                    },
                  itemCount: click.len,),
              ),
            ],
          );
        } ,

      ),
    );
  }
  Widget buildShow(){
    return  Container(
      //width: double.infinity,
      //  height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Row(
          // crossAxisAlignment: CrossAxisAlignment.,
          children: [
            Container(
              width: 8,
              height: 60,
              color: Color(0xFF7E57C2),
            ),
            SizedBox(width: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Exam1'),
                SizedBox(height:5),
                Text('25/5/2022'),
              ],
            ),

          ],
        ));
  }
}
//  Widget buildShow(){
//     return  Container(
//       //width: double.infinity,
//       //  height: 60,
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(10),
//           color: Colors.white,
//         ),
//         clipBehavior: Clip.antiAliasWithSaveLayer,
//         child: Row(
//           // crossAxisAlignment: CrossAxisAlignment.,
//           children: [
//             Container(
//               width: 8,
//               height: 60,
//               color: Color(0xFF7E57C2),
//             ),
//             SizedBox(width: 20),
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text('Exam1'),
//                 SizedBox(height:5),
//                 Text('25/5/2022'),
//               ],
//             ),

//           ],
//         ));
//   }