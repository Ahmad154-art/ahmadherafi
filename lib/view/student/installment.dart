import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/installment_controller.dart';

class Installment extends StatelessWidget {
  InstallmentController controller = Get.put(InstallmentController());

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {
        await controller.installment();
      },
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 100,
          backgroundColor: Colors.white,
          title: Row(
            // crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // Padding(padding: EdgeInsets.only(left: 1)),
              Text(
                'Ins',
                style: TextStyle(
                  color: Color(0xFFFF6D00),
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                'tall',
                style: TextStyle(
                  color: Color(0xFF2979FF),
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                'ment',
                style: TextStyle(
                  color: Color(0xFF5E35B1),
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                width: 15,
              ),
              Text(
                'sch',
                style: TextStyle(
                  color: Color(0xFF26C6DA),
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                'oo',
                style: TextStyle(
                  color: Color(0xFFFDD835),
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                'l',
                style: TextStyle(
                  color: Color(0xff35007D),
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
        body: Stack(children: [
          Image(
            height: double.infinity,
            width: double.infinity,
            image: AssetImage('images/wallpaper.jpg'),
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              width: double.infinity,
              child: Column(
                children: [
                  Container(
                    height: 120,
                    width: 120,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xFF7E57C2),
                    ),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: Icon(
                      Icons.monetization_on_outlined,
                      size: 120,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Expanded(
                      child: GetBuilder<InstallmentController>(
                          init: InstallmentController(),
                          builder: (mod) {
                            return Obx(() {
                              if (controller.isLoading.isTrue) {
                                return const Center(
                                  child: CircularProgressIndicator(
                                      color: Colors.purple),
                                );
                              }
                              return ListView(
                                children: [
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Container(
                                          height: 150,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            color:
                                                Colors.white.withOpacity(0.8),
                                          ),
                                          clipBehavior:
                                              Clip.antiAliasWithSaveLayer,
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Icon(
                                                      Icons
                                                          .monetization_on_outlined,
                                                      color: Color(0xFF1DE9B6),
                                                    ),
                                                    SizedBox(
                                                      width: 5,
                                                    ),
                                                    Text(
                                                      'Total',
                                                      style: TextStyle(
                                                        fontSize: 20,
                                                        color:
                                                            Color(0xff35007D),
                                                      ),
                                                    )
                                                  ]),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Text(
                                                '${controller.payment[0].amount}',
                                                style: TextStyle(
                                                  fontSize: 40,
                                                  fontWeight: FontWeight.w600,
                                                  color: Color(0xff35007D),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Expanded(
                                        child: Container(
                                          height: 150,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            color:
                                                Colors.white.withOpacity(0.8),
                                          ),
                                          clipBehavior:
                                              Clip.antiAliasWithSaveLayer,
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Icon(
                                                      Icons
                                                          .money_off_csred_outlined,
                                                      color: Color(0xFFFBC02D),
                                                    ),
                                                    SizedBox(
                                                      width: 5,
                                                    ),
                                                    Text(
                                                      'Paid Up',
                                                      style: TextStyle(
                                                        fontSize: 20,
                                                        color:
                                                            Color(0xff35007D),
                                                      ),
                                                    )
                                                  ]),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Text(
                                                '${controller.payment[0].paid}',
                                                style: TextStyle(
                                                  fontSize: 40,
                                                  fontWeight: FontWeight.w600,
                                                  color: Color(0xff35007D),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Center(
                                    child: Container(
                                      height: 150,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(30),
                                        color: Colors.white.withOpacity(0.8),
                                      ),
                                      clipBehavior: Clip.antiAliasWithSaveLayer,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Icon(
                                                  Icons.monetization_on,
                                                  color: Color(0xFF29B6F6),
                                                ),
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                Text(
                                                  'Residual',
                                                  style: TextStyle(
                                                    fontSize: 20,
                                                    color: Color(0xff35007D),
                                                  ),
                                                )
                                              ]),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            '${controller.payment[0].theReset}',
                                            style: TextStyle(
                                              fontSize: 40,
                                              fontWeight: FontWeight.w600,
                                              color: Color(0xff35007D),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            });
                          })),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
