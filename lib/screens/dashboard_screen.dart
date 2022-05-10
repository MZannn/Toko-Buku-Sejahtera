import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moderna/controller/dashboard_controller.dart';
import 'package:moderna/screens/about_screen.dart';
import 'package:moderna/screens/book_data_screen.dart';
import 'package:moderna/screens/home_screen.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashboardController>(
      builder: (controller) {
        Get.find<DashboardController>();
        return Scaffold(
          body: IndexedStack(
            index: controller.tabIndex,
            children: const [
              HomeScreen(),
              AboutScreen(),
              BookDataScreen()
            ],
          ),
          bottomNavigationBar: BottomAppBar(
            color: const Color.fromARGB(255, 4, 52, 92),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  onPressed: () {
                    controller.changeTabIndex(0);
                  },
                  icon: const Icon(
                    Icons.home,
                    color: Colors.white,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    controller.changeTabIndex(1);
                  },
                  icon: const Icon(
                    Icons.info_outline,
                    color: Colors.white,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    controller.changeTabIndex(2);
                  },
                  icon: const Icon(
                    Icons.data_exploration_outlined,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
