import 'package:booking_system/customWidget/book_appointment.dart';
import 'package:booking_system/customWidget/text_sub_title.dart';
import 'package:booking_system/customWidget/text_title.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'book_appointment_controller.dart';

class book_appointment_page extends StatelessWidget {
  book_appointment_controller controller =
      Get.put(book_appointment_controller());

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: Column(
      children: [
        Container(
          alignment: Alignment.centerLeft,
          margin: EdgeInsets.only(top: 70.0, left: 20.0, bottom: 30.0),
          child: GestureDetector(
            child: Icon(
              Icons.arrow_back_ios,
              color: Color(0xFF263D74),
            ),
            onTap: () {
              Get.back();
            },
          ),
        ),
        Container(
          width: Get.width,
          height: 200.0,
          child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(children: [
                Container(
                  margin: EdgeInsets.only(right: 10.0, left: 10.0),
                  alignment: Alignment.center,
                  child: Image.asset(
                    'assets/images/logo.jpeg',
                    width: 90.0,
                    height: 90.0,
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  child: text_title(controller.model!.name.toString(),
                      Color(0xFF263D74), 18.0),
                )
                // Container(
                //     margin: EdgeInsets.only(top: 30.0, right: 10.0),
                //    // alignment: Alignment.bottomLeft,
                //     child: Column(
                //       crossAxisAlignment: CrossAxisAlignment.start,
                //       children: [
                //         text_title(controller.model!.name.toString(), Color(0xFF263D74), 18.0),
                //       ],
                //     )),
              ])),
        ),
        Container(
          child: text_sub_title(
              """What is a Doctor?\n Do you thrive in situations where you can interact with and help people? Are you interested in maintaining and restoring peoples health through the practice of medicine? You may want to consider a career as a doctor!There is a specific type of doctor for almost every major system located in the human body. Regardless of specialty doctors face the challenge of diagnosing and treating human disease ailments injuries, pain, or other conditions. This is done by listening to the patient, understanding the problem, and then using their scientific expertise to know how best to treat the ailment or concern.""",
              Colors.grey,
              14),
          padding: EdgeInsets.all(24),
        ),
        Expanded(
            child: Align(
                alignment: FractionalOffset.bottomCenter,
                child: Container(
                    width: Get.width,
                    height: 50.0,
                    child: ElevatedButton(
                      child: Text("Book Appointment"),
                      onPressed: () {
                        Get.defaultDialog(
                            title: '', content: book_appointment());
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFF263D74),
                        onPrimary: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(18),
                              topRight: Radius.circular(18)),
                        ),
                      ),
                    ))))
      ],
    ));
  }
}
