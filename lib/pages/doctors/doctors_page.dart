import 'package:booking_system/customWidget/SearchWidget.dart';
import 'package:booking_system/customWidget/text_sub_title.dart';
import 'package:booking_system/customWidget/text_title.dart';
import 'package:booking_system/models/doctorModel.dart';
import 'package:booking_system/pages/doctors/doctors_page_controller.dart';
import 'package:booking_system/pages/home/home_page_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class doctors_page extends StatelessWidget {
  doctors_page_controller controller = Get.put(doctors_page_controller());

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 30.0,
          ),
          SearchWidget(),
          Expanded(
              child: Container(
                  width: Get.width,
                  //margin: EdgeInsets.only(right: 5.0, left: 5.0),
                  height: Get.height,
                  child: MediaQuery.removePadding(
                      context: context,
                      removeTop: true,
                      child: GetBuilder<doctors_page_controller>(
                          builder: (doctors_page_controller) =>
                              ListView.builder(
                                  shrinkWrap: true,
                                  itemCount: controller.doctorsList!.length,
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return InkWell(
                                      child: Container(
                                          width: Get.width,
                                          child: Card(
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                              ),
                                              child: Row(children: [
                                                Container(
                                                  margin: EdgeInsets.only(
                                                      right: 10.0, left: 10.0),
                                                  alignment: Alignment.center,
                                                  child: Image.asset(
                                                    'assets/images/logo.jpeg',
                                                    width: 60.0,
                                                    height: 60.0,
                                                  ),
                                                ),
                                                Container(
                                                    //   margin:
                                                    //  EdgeInsets.only(top: 30.0, right: 10.0),
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        text_title(
                                                            controller
                                                                .doctorsList![
                                                                    index]
                                                                .name
                                                                .toString(),
                                                            Color(0xFF263D74),
                                                            18.0)
                                                      ],
                                                    )),
                                              ]))),
                                      onTap: () {
                                        Map<String, doctorModel>? arguments = new Map();
                                        arguments["model"] = controller.doctorsList![index];

                                        Get.toNamed('/book_appointment_page',arguments: arguments);
                                      },
                                    );
                                  }))))),
        ],
      ),
    );
  }
}
