import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class landingPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return landingPageState();
  }
}

class landingPageState extends State<landingPage> {
  @override
  void initState() {
    Timer(Duration(seconds: 3), () {
      Get.offAllNamed('/home');
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor:  Colors.white,
      body: Center(

          child: Image.asset(
            "assets/images/logo.jpeg",
          ),
        ),

    );
  }
}
