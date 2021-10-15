import 'package:booking_system/models/departmentModel.dart';
import 'package:booking_system/models/doctorModel.dart';
import 'package:get_storage/get_storage.dart';

class DataBaseOperations{
  final storage = GetStorage();
  List<doctorModel> doctorsList = <doctorModel>[];
  List<departmentModel> departmentsList = <departmentModel>[];

  writeDoctors(List<doctorModel> list){
    storage.write('doctors', list.toList());
  }

  writeDepartments(List<departmentModel> list){
    storage.write('departments', list.toList());
  }

  saveDoctorsList(){
    List<doctorModel> list=[
      doctorModel(1,1,'Mostafa Kamel'),
      doctorModel(2,1,'Sameh Masood'),
      doctorModel(3,1,'Gaber Ahmed'),
      doctorModel(4,2,'Mostaza Kamel'),
    ];

    // Save data to doctors table
    writeDoctors(list);
  }

  saveDepartmentsList(){
    List<departmentModel> list=[
      departmentModel(1,'Eyes'),
      departmentModel(2,'Dental')
    ];

    // Save data to doctors table
    writeDepartments(list);
  }

  readDoctors({int? department_id, String? doctor_name}){
    doctorsList = storage.read('doctors');
    if(department_id == null) {
      return doctorsList;
    }else{
      if(doctor_name != null){
        doctorsList = doctorsList.where((i) => i.name!.contains(doctor_name)).toList();
      }
      if(department_id != null){
        doctorsList = doctorsList.where((i) => i.departmentId == department_id).toList();
      }
      return doctorsList;
    }
  }

  readDepartments(){
    departmentsList = storage.read('departments');
    return departmentsList;
  }
}