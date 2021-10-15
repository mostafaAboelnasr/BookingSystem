
import 'package:booking_system/pages/book_appointment/book_appointment_page.dart';
import 'package:booking_system/pages/departments/departments_page.dart';
import 'package:booking_system/pages/doctors/doctors_page.dart';
import 'package:booking_system/pages/home/home_page.dart';
import 'package:booking_system/pages/landingPage.dart';
import 'package:get/get.dart';
class routes{
  static final route = [
    GetPage(
      name: '/landingPage',
      page: () => landingPage(),
    ),
    GetPage(
      name: '/home',
      page: () => home_page(),
   //   binding: home_page_bindings(),
    ),
    GetPage(
      name: '/departments_page',
      page: () => departments_page(),
      //   binding: home_page_bindings(),
    ),
    GetPage(
      name: '/doctors_page',
      page: () => doctors_page(),
      //   binding: home_page_bindings(),
    ),
    GetPage(
      name: '/book_appointment_page',
      page: () => book_appointment_page(),
      //   binding: home_page_bindings(),
    ),
  ];


}