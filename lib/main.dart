import 'package:booking_system/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      color: Colors.white,
      initialRoute: '/landingPage',
      getPages: routes.route,
      debugShowCheckedModeBanner: false,
    );
  }
}
