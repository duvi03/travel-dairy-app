import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel_app/core/constant/screen_util.dart';

import 'functionality/screens/dashboard/dashboard_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 812),
      builder: () {
        return const GetMaterialApp(
          debugShowCheckedModeBanner: false,
          home: DashboardScreen(),
        );
      }
    );
  }
}

