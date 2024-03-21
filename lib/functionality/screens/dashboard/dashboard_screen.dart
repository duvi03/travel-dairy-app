import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel_app/functionality/screens/pages/home/home_page.dart';
import 'package:travel_app/functionality/screens/pages/profile/profile_page.dart';

import 'controller/dashboard_controller.dart';
import 'widgets/common_bottom_nav_item.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetX<DashBoardController>(
        init: DashBoardController(),
        builder: (controller) {
          return Scaffold(
            body: appDisplayPage(index: controller.indexBar.value),
            bottomNavigationBar: AppBottomBar(
              index: controller.indexBar.value,
              onTap: (int i) {
                controller.setSelectedIndexPage(index: i);
              },
            ),
          );
        }
    );
  }
}

Widget appDisplayPage({int index = 0}) {
  switch (index) {
    case 0:
      return const HomePage();
    case 1:
      return const ProfilePage();
    default:
      return const DashboardScreen();
  }
}
