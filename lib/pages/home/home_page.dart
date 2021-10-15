import 'package:booking_system/customWidget/text_sub_title.dart';
import 'package:booking_system/customWidget/text_title.dart';
import 'package:booking_system/models/doctorModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home_page_controller.dart';

class home_page extends StatelessWidget {
  home_page_controller controller = Get.put(home_page_controller());

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.only(top: 70.0, left: 10.0, bottom: 30.0),
                child: text_title('Departments', Color(0xFF263D74), 20),
                alignment: Alignment.centerLeft,
              )
            ],
          ),
          Row(mainAxisAlignment: MainAxisAlignment.end, children: [
            Container(
                width: Get.width,
                //margin: EdgeInsets.only(right: 5.0, left: 5.0),
                height: 150,
                child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: controller.departmentsList!.length,
                    itemBuilder: (BuildContext context, int index) {
                      return InkWell(
                        child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(children: [
                              Container(
                                margin: EdgeInsets.only(
                                    top: 10.0, right: 20.0, left: 20.0),
                                alignment: Alignment.center,
                                child: Image.asset(
                                  'assets/images/logo.jpeg',
                                  width: 60.0,
                                  height: 60.0,
                                ),
                              ),
                              Container(
                                  margin: EdgeInsets.only(top: 10.0),
                                  alignment: Alignment.center,
                                  child: text_title(
                                      controller.departmentsList![index].name.toString(), Color(0xFF263D74), 14.0)),
                            ])),
                        onTap: () {
                          Map<String, int>? arguments = new Map();
                          arguments["id"] = controller.departmentsList![index].id!;

                          Get.toNamed('/doctors_page', arguments: arguments);
                        },
                      );
                    }))
          ]),
          SizedBox(
            height: 20.0,
          ),
          Container(
            margin: EdgeInsets.only(
              left: 10.0,
            ),
            child: text_title('Most requested doctors ', Color(0xFF263D74), 18),
            alignment: Alignment.centerLeft,
          ),
          SizedBox(
            height: 20.0,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            Container(
                width: Get.width,
                //margin: EdgeInsets.only(right: 5.0, left: 5.0),
                height: 110,
                child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: controller.doctorsList!.length,
                    itemBuilder: (BuildContext context, int index) {
                      return  InkWell(child:Container(
                          width: Get.width * 2 / 3,
                          child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Row(children: [
                                Container(
                                  margin:
                                      EdgeInsets.only(right: 10.0, left: 10.0),
                                  alignment: Alignment.center,
                                  child: Image.asset(
                                    'assets/images/logo.jpeg',
                                    width: 60.0,
                                    height: 60.0,
                                  ),
                                ),
                                Container(
                                    margin:
                                        EdgeInsets.only(top: 30.0, right: 10.0),
                                    alignment: Alignment.centerLeft,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        text_title(
                                            controller.doctorsList![index].name.toString(), Color(0xFF263D74), 18.0),
                                      ],
                                    )),
                              ]))),onTap: (){
                              Map<String, doctorModel>? arguments = new Map();
                              arguments["model"] = controller.doctorsList![index];

                              Get.toNamed('/book_appointment_page', arguments: arguments);
                      },);
                    }))
          ]),
        ],
      ),
    );
  }
}
