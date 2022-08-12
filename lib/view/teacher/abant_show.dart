import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:futurehope/controller/absant_controller.dart';
import 'package:futurehope/controller/classcontroller.dart';
import 'package:get/get.dart';

import '../../controller/show_controller.dart';

class DisplayAbsant extends StatelessWidget {
  DisplayAbsant({Key? key}) : super(key: key);

  AbsantController1 absant = Get.put(AbsantController1());
  ClassController classController = Get.put(ClassController());
  AbsantController absantController = Get.put(AbsantController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: const Color(0xFFFFFFFF),
        // centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Abs',
              style: TextStyle(
                color: Color(0xFFEF5350),
                fontSize: 40,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              'ant',
              style: TextStyle(
                color: Color(0xFF42A5F5),
                fontSize: 40,
                fontWeight: FontWeight.w500,
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(
                start: 3,
                end: 3,
              ),
              child: Text(
                '&',
                style: TextStyle(
                  color: Color(0xff35007D),
                  fontSize: 40,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Text(
              'de',
              style: TextStyle(
                color: Color(0xFFFDD835),
                fontSize: 40,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              'lay',
              style: TextStyle(
                color: Color(0xff35007D),
                fontSize: 40,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
      body: Container(
        color: const Color(0xFFEDE7F6),
        child: Padding(
          padding: const EdgeInsetsDirectional.only(
            top: 10,
            start: 10,
            end: 10,
          ),
          child: Column(
            children: [
              Container(
                height: 100,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xFFFFFFFF),
                ),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Row(children: [
                  Container(
                    width: 10,
                    height: 100,
                    color: Color(0xFF7E57C2),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text('Class'),
                  SizedBox(
                    width: 5,
                  ),
                  Text(':'),
                  Padding(
                      padding: const EdgeInsetsDirectional.only(
                        bottom: 25,
                      ),
                      child: Container(
                        width: 100,
                        //  height: 25,
                        child: Container(
                          width: 100,
                          child: DropdownSearch<String>(
                            mode: Mode.MENU,
                            showSelectedItems: true,
                            // ignore: prefer_const_constructors
                            dropdownSearchDecoration: InputDecoration(
                              //labelText: "Menu mode",
                              hintText: "class in menu mode",
                            ),
                            items: absant.listname,
                            onChanged: (Value) {
                              absant.className = Value;
                              print(absant.className);
                              absant.selectid();
                              absant.selectName();
                            },
                            // itemAsString: (String ) => controller.subjectList,
                          ),
                        ),
                      )),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsetsDirectional.only(
                        end: 10,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          GestureDetector(
                            onTap: () {
                              // absant.increment();
                              show();
                              //absant.count=15;
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                              ),
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              child: Container(
                                height: 50,
                                width: 130,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.segment,
                                      color: Color(
                                        0xFFFFFFFF,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 3,
                                    ),
                                    Text(
                                      'Dislay Name ',
                                      style: TextStyle(
                                        color: Color(0xFFFFFFFF),
                                      ),
                                    ),
                                  ],
                                ),
                                color: const Color(0xff35007D),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ]),
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xFFFFFFFF),
                  ),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: Row(
                    //  mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        width: 10,
                        color: Color(0xFFFDD835),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      GetBuilder<AbsantController1>(
                          init: AbsantController1(),
                          builder: (absant) {
                            if (absant.display.length == 0) {
                              return Expanded(
                                  child: Container(
                                width: double.infinity,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Please Take a check for the Student',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 15,
                                        color: Color(0xff35007D),
                                      ),
                                    ),
                                  ],
                                ),
                              ));
                            } else {
                              return Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: [
                                      Expanded(
                                        child: Obx(() {
                                          if (absant.isLoading.isTrue) {
                                            return const Center(
                                                child:
                                                    CircularProgressIndicator(
                                              color: Colors.purple,
                                            ));
                                          }
                                          if (absant.absenceshow.isEmpty) {
                                            return Text('not founf');
                                          }
                                           return ListView.separated(
                                              itemBuilder: (context, index) {
                                                return buildDisplay(
                                                    absant.display[index],
                                                    context,
                                                    index);
                                              },
                                              separatorBuilder:
                                                  (context, index) => Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .only(
                                                          start: 10,
                                                          end: 10,
                                                          top: 5,
                                                          bottom: 5,
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .only(
                                                            top: 10,
                                                          ),
                                                          child: Container(
                                                            height: 1,
                                                            color: const Color(
                                                                0xFF9575CD),
                                                          ),
                                                        ),
                                                      ),
                                              itemCount:
                                                  absant.absenceshow.length);
                                        }),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            }
                          }),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsetsDirectional.only(
                  bottom: 5,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xFFFFFFFF),
                  ),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: 10,
                        height: 50,
                        color: Color(0xFF42A5F5),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                          ),
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          child: Container(
                            height: 40,
                            width: 100,
                            child: Center(
                              child: Text(
                                'Back ',
                                style: TextStyle(
                                  color: Color(0xFFFFFFFF),
                                ),
                              ),
                            ),
                            color: const Color(0xff35007D),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildDisplay(DisplayModel1 dis, context, index) {
    return Row(
      children: [
        Container(
            width: 100,
            child: Text(
                '${absant.absenceshow[index].firstName} ${absant.absenceshow[index].lastName}')),
        const SizedBox(width: 50),
        Row(children: [
          Container(
            width: 60,
            child: Text('${absant.absenceshow[index].type}'),
          ),
          SizedBox(
            width: 15,
          ),
          IconButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text(
                        'Edit',
                      ),
                      content: Padding(
                        padding: EdgeInsetsDirectional.only(
                          top: 10,
                          start: 10,
                          end: 10,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            GetBuilder<AbsantController1>(builder: (edit) {
                              return Padding(
                                padding: EdgeInsetsDirectional.only(
                                  top: 10,
                                  start: 10,
                                  end: 10,
                                ),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    hintText: 'Edit State',
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xff35007D),
                                      ),
                                    ),
                                  ),
                                  cursorColor: Color(0xff35007D),
                                  onFieldSubmitted: (desc) {},
                                ),
                              );
                            }),
                            SizedBox(
                              height: 20,
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.only(
                                top: 10,
                                start: 10,
                                end: 10,
                              ),
                              child: TextFormField(
                                decoration: InputDecoration(
                                  hintText: 'Write Reason',
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xff35007D),
                                    ),
                                  ),
                                ),
                                cursorColor: Color(0xff35007D),
                                onFieldSubmitted: (desc) {},
                              ),
                            ),
                          ],
                        ),
                      ),
                      actions: [
                        TextButton(
                            onPressed: () {
                              Get.back();
                            },
                            child: Text('ok')),
                        TextButton(
                            onPressed: () {
                              Get.back();
                            },
                            child: Text('cancel')),
                      ],
                    );
                  });
            },
            icon: Icon(Icons.edit),
            color: Color(0xFF2979FF),
          ),
        ]),

        // ),
        // ),
      ],
    );
  }

  Future<void> show() async {
    await absant.show();
  }
}
