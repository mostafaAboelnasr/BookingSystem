import 'package:booking_system/customWidget/text_sub_title.dart';
import 'package:booking_system/customWidget/text_title.dart';
import 'package:booking_system/pages/book_appointment/book_appointment_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class book_appointment extends StatelessWidget {
  book_appointment_controller controller =
      Get.put(book_appointment_controller());
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        Center(
          child: text_title('Book Appointment', Color(0xFF263D74), 18.0),
        ),
        SizedBox(
          height: 10.0,
        ),
        Container(
          child: text_sub_title('Select Date', Color(0xFF263D74), 14),
          alignment: Alignment.centerLeft,
        ),
        SizedBox(
          height: 10.0,
        ),
        Row(mainAxisAlignment: MainAxisAlignment.start, children: [
          Flexible(
              child: Container(
                  width: Get.width,
                  //margin: EdgeInsets.only(right: 5.0, left: 5.0),

                  height: 80,
                  child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: controller.days!.length,
                      itemBuilder: (BuildContext context, int index) {
                        return InkWell(
                          child: Obx(() =>Container(
                              width: 80,
                              height: 80,

                              child: Card(
                                color: controller.selectedindex==index? Color(0xFF263D74):Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    text_sub_title(
                                        DateFormat.d()
                                            .format(controller.days![index])
                                            .toString(),
                                        controller.selectedindex!=index? Color(0xFF263D74):Colors.white,
                                        12),
                                    text_sub_title(
                                        DateFormat.E()
                                            .format(controller.days![index])
                                            .toString(),
                                        controller.selectedindex!=index? Color(0xFF263D74):Colors.white,
                                        12),
                                  ],
                                ),
                              ))),
                          onTap: () {
                            controller.selectedindex!.value = index;
                          },
                        );
                      })))
        ]),
        SizedBox(
          height: 10.0,
        ),
        Container(
          child: text_sub_title('Select Time', Color(0xFF263D74), 14),
          alignment: Alignment.centerLeft,
        ),
        new Container(
          width: Get.width,
          child: new GridView.count(
              crossAxisCount: 3,
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              childAspectRatio: 1.0,
              // padding: const EdgeInsets.all(4.0),
              mainAxisSpacing: 1.0,
              crossAxisSpacing: 1.0,
              children: <String>[
                '10:00',
                '11:00',
                '12:00',
                '13:00',
                '14:00',
                '15:00',
                '16:00',
                '17:00',
                '18:00',
                '19:00',
                '20:00',
              ].map((String hour) {
                return  InkWell(
                    child:  Obx(() =>Card(
                    color: controller.selectedhour==hour? Color(0xFF263D74):Colors.white,
                    child: GridTile(
                        child: Center(
                  child: Text(hour, style: TextStyle(color: controller.selectedhour!=hour? Color(0xFF263D74):Colors.white),),
                )))),onTap: (){
                  controller.selectedhour!.value=hour ;
                },);
              }).toList()),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () {
                Get.back();
                Fluttertoast.showToast(
                    msg: "Appointment reserved successfully",
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.CENTER,
                    timeInSecForIosWeb: 1,
                    backgroundColor: Colors.red,
                    textColor: Colors.white,
                    fontSize: 16.0
                );

              },
              child: Text('Reserve'),
              style: ElevatedButton.styleFrom(
                  shape: StadiumBorder(),
                  primary: Color(0xFF263D74),
                  fixedSize: const Size(110, 30)),
            ),
            ElevatedButton(
              onPressed: () {
                Get.back();
              },
              child: Text('Back'),
              style: ElevatedButton.styleFrom(
                  shape: StadiumBorder(),
                  primary: Color(0xFFDDC180),
                  fixedSize: const Size(110, 30)),
            )
          ],
        )
      ],
    );
  }
}
