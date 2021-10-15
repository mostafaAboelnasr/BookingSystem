import 'package:booking_system/pages/doctors/doctors_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchWidget extends StatelessWidget {
  doctors_page_controller controller = Get.put(doctors_page_controller());
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.only(right: 10.0, left: 10.0, top: 20.0, bottom: 20.0),
      child: Container(
        height: 50.0,
        child: TextField(
          controller: controller.search,
          textAlign: TextAlign.right,
          // textAlignVertical: TextAlignVertical.center,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
              borderSide: BorderSide(
                width: 0,
                style: BorderStyle.none,
              ),
            ),
            filled: true,
            suffixIcon: new InkWell(
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: GestureDetector(
                  child: Icon(
                    Icons.search,
                    color: Colors.black45,
                  ),
                  onTap: () {
                    controller.searchWithName(doctor_name: controller.search!.text.toString());

                  },
                ),
              ),
              onTap: () {

              },
            ),
            //fillColor: Colors.white,
            //fillColor: Colors.deepOrange,
            hintStyle: new TextStyle(
              color: Colors.black45,
              fontFamily: 'font',
            ),
            hintText: "Search",
            // contentPadding: EdgeInsets.only(
            //   bottom: 50.0 / 2, // HERE THE IMPORTANT PART
            // )
          ),
          // strutStyle: StrutStyle(
          //  // fontSize: 16.0,
          //   height: 1.3,
          // ),
          style: new TextStyle(
            color: Colors.black,
            fontFamily: 'font',
            height: 1.3,
            fontSize: 16.0,
          ),
          textDirection: TextDirection.ltr,

          autofocus: false,
        ),
        // data: Theme.of(context).copyWith(
        //   primaryColor: Colors.grey[600],
        // )
      ),
    );
  }
}
