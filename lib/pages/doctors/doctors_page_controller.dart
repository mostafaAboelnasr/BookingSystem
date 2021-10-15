import 'package:booking_system/models/doctorModel.dart';
import 'package:booking_system/utils/data_base_operations.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class doctors_page_controller extends GetxController{
  int? department_id;
  DataBaseOperations? database;
  List<doctorModel>? doctorsList;
  TextEditingController? search;
  @override
  void onInit() {
    search=TextEditingController();
    database = DataBaseOperations();
    doctorsList = <doctorModel>[];
    print(Get.arguments.toString());

    department_id = Get.arguments["id"];
    // Read data from doctors table
    searchWithDepartment(department_id: department_id);

    super.onInit();
  }

  void searchWithDepartment({int? department_id}){
    doctorsList = database!.readDoctors(department_id: department_id);
  }

  void searchWithName({String? doctor_name}){
    if(department_id != null){
      doctorsList = database!.readDoctors(department_id: department_id, doctor_name: doctor_name);
    }else{
        doctorsList = database!.readDoctors(doctor_name: doctor_name);
    }

     FocusScope.of(Get.context!).requestFocus(FocusNode());

  }


  @override
  void onClose() {
    search?.dispose();
    super.onClose();
  }
}