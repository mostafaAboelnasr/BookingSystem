import 'package:booking_system/models/departmentModel.dart';
import 'package:booking_system/models/doctorModel.dart';
import 'package:booking_system/utils/data_base_operations.dart';
import 'package:get/get.dart';

class home_page_controller extends GetxController{
  DataBaseOperations? database;
  List<doctorModel>? doctorsList;
  List<departmentModel>? departmentsList;

  @override
  void onInit() {

    database = DataBaseOperations();
    doctorsList = <doctorModel>[];
    departmentsList = <departmentModel>[];

    // Save doctors
    database!.saveDoctorsList();
    database!.saveDepartmentsList();
    // Read data from doctors table
    readData();


    super.onInit();
  }

  void readData(){
    doctorsList = database!.readDoctors();
    departmentsList = database!.readDepartments();
  }


}