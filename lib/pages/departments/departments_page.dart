import 'package:booking_system/customWidget/SearchWidget.dart';
import 'package:booking_system/customWidget/text_title.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class departments_page extends StatelessWidget {
  List<String> xx = ['enas', 'rahaff', 'mostafa', 'enas', 'rahaff', 'mostafa'];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Column(
        children: [
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.only(top: 70.0, left: 20.0),
            child: GestureDetector(
              child: Icon(
                Icons.arrow_back_ios,
                color: Color(0xFF263D74),
              ),
              onTap: () {
                // controller.textservice1!.clear();
                // Get.back();
              },
            ),
          ),
          SearchWidget(),
          Container(
            margin: EdgeInsets.only(left: 10.0, bottom: 10.0),
            child:
                text_title('Most available departments', Color(0xFF263D74), 18),
            alignment: Alignment.centerLeft,
          ),
          Expanded(
              child:MediaQuery.removePadding(
                  context: context,
                  removeTop: true,
                  child: ListView.builder(
                  physics: ScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: xx.length,
                  itemBuilder: (BuildContext context, int index) {
                    return InkWell(
                      child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Row(children: [
                            Container(
                              margin: EdgeInsets.only(
                                  top: 10.0,
                                  right: 20.0,
                                  left: 20.0,
                                  bottom: 10.0),
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
                                    xx[index], Color(0xFF263D74), 14.0)),
                          ])),
                      onTap: () {
                        //Get.toNamed('/departments_page');
                      },
                    );
                  })))
        ],
      ),
    );
  }
}
