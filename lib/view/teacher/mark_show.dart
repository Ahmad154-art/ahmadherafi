import 'package:flutter/material.dart';
import 'package:futurehope/controller/exam_type_controller.dart';
import 'package:get/get.dart';

import 'package:get/get.dart';

class DisplayMark1 extends StatelessWidget {
  ExamTypeController controller = Get.put(ExamTypeController());

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {
       // await controller.showMark();
        Future.delayed(Duration(milliseconds: 1500));
       // onPreesed1();
      },
      displacement: 250,
      backgroundColor: Colors.amber,
      color: Colors.red,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'Display Mark',
            style: TextStyle(
              color: Color(0xff35007D),
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Colors.white60,
        ),
        body: Container(
          width: double.infinity,
          color: const Color(0xFFEDE7F6),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Expanded(child: Obx(() {
                  if (controller.load.isTrue) {
                    return const Center(
                      child: CircularProgressIndicator(
                        color: Colors.purple,
                      ),
                    );
                  }
                  return GetBuilder<ExamTypeController>(builder: (controller) {
                    return ListView.separated(
                        itemBuilder: (context, index) =>
                            buildItem(index, context),
                        separatorBuilder: (context, index) => Padding(
                              padding: const EdgeInsetsDirectional.only(
                                start: 10,
                                end: 10,
                                top: 15,
                                bottom: 15,
                              ),
                              child: Container(
                                height: 1,
                                color: const Color(0xff35007D),
                              ),
                            ),
                        itemCount: controller.markShowList.length);
                  });
                })),
                // RefreshIndicator(child: Container(), onRefresh: onPreesed1)
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildItem(index, context) {
    return Row(
      children: [
        // Expanded(
        Container(
            width: 150,
            child: Text(
                ' ${controller.markShowList[index].firstName} ${controller.markShowList[index].lastName}')),
        //  ),
        const SizedBox(width: 70),
        Expanded(child: Text('${controller.markShowList[index].mark}')),
        Expanded(
          child: IconButton(
            icon: const Icon(Icons.edit),
            onPressed: () {
              // print('vvcc');
              // print(index);
              // controller.markShowList[index].id = controller.markId;
              // print('0000');
              // print(controller.markShowList[1].id);
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: const Text(
                        'Edit',
                      ),
                      content: Padding(
                        padding: const EdgeInsetsDirectional.only(
                          top: 10,
                          start: 10,
                          end: 10,
                        ),
                        child: TextFormField(
                          keyboardType: TextInputType.number,
                          onChanged: (value) {
                            controller.newMark = value;
                          },
                          decoration: const InputDecoration(
                            hintText: 'Edit Mark',
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xff35007D),
                              ),
                            ),
                          ),
                          cursorColor: const Color(0xff35007D),
                          onFieldSubmitted: (desc) {
                            //  mark.changemark=desc;
                            // print( mark.changemark);
                          },
                          //controller: mark.changemark,
                        ),
                      ),
                      actions: [
                        TextButton(
                            onPressed: () {
                              print(controller.markShowList[index].id);
                              controller.markId =
                                  controller.markShowList[index].id;
                              print('.......');
                              print(controller.markId);
                              print(index);

                              onPreesed(index);

                              // Obx(() {
                              //   if (controller.load.isTrue) {
                              //     return Center(
                              //       child: CircularProgressIndicator(),
                              //     );
                              //   }
                              //   return
                              //   //onPreesed1();
                              // });
                              // onPreesed1();
                              Get.back();
                            },
                            child: const Text('ok')),
                        TextButton(
                            onPressed: () {
                              Get.back();
                            },
                            child: const Text('cancel')),
                      ],
                    );
                  });
            },
          ),
        ),
      ],
    );
  }

  Future<void> onPreesed(var index) async {
    await controller.updateMark(index);
    // Obx((){
    //  if(controller.load.isTrue){
    //    return Center(child: CircularProgressIndicator(),);
    //  }

    // });
    await controller.showMark();
  }

  Future<void> onPreesed1() async {
    await controller.showMark();
  }
}
