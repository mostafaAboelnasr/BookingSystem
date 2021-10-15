import 'package:booking_system/models/doctorModel.dart';
import 'package:get/get.dart';

class book_appointment_controller extends GetxController {
  doctorModel? model;
  List<DateTime>? days;

  Rx<int>? selectedindex;
  Rx<String>? selectedhour;
  @override
  void onInit() {
    selectedindex = (-1).obs;
    selectedhour = "-1".obs;
    model = Get.arguments["model"];

    var tenDaysFromNow = DateTime.now().add(new Duration(days: 10));
    getDaysInBetween(DateTime.now(), tenDaysFromNow);
    super.onInit();
  }

  List<DateTime>? getDaysInBetween(DateTime startDate, DateTime endDate) {
    days = [];
    for (int i = 0; i <= endDate.difference(startDate).inDays; i++) {
      days!.add(startDate.add(Duration(days: i)));
    }
    return days;
  }
}
