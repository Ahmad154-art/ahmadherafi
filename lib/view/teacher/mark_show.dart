import 'package:flutter/material.dart';
import 'package:futurehope/controller/exam_type_controller.dart';
import 'package:get/get.dart';

import 'package:get/get.dart';

class DisplayMark1 extends StatelessWidget {
  ExamTypeController controller = Get.put(ExamTypeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                return ListView.separated(
                    itemBuilder: (context, index) => buildItem(index, context),
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
              })),
            ],
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
              print('vvcc');
              print(index);
              controller.markShowList[index].id = controller.markId;
              print('0000');
              print(controller.markShowList[1].id);
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
                              //  await controller.updateMark();
                              controller.markShowList[index].id =
                                  controller.markId;
                              onPreesed(index);

                              print('.......');
                              print(controller.markId);
                              print(controller.markShowList[index].id);
                              /*منحط هون api للتعديل منبعث القيم اللي قيمتها لا تساوي ال null مشان تتعدل بالداتا بيز وبالتالي بتتعدل عالمصفوفة اللي عبقرا منها رح تتغير قيم الواجهة */
                              /*   if(mark.changemark==null){
                                mark.changemark=mar[index];
                              }
                              if(mar[index]!= mark.changemark){
                                mar[index]=mark.changemark;
                                print(mar[index]);
                              }*/
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
  }
}
