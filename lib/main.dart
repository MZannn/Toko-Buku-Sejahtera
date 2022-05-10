import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moderna/controller/dashboard_controller.dart';
import 'package:moderna/screens/dashboard_screen.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dasboardC = Get.put(DashboardController());
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: DashboardScreen(),
      title: "Moderna",
    );
  }
}