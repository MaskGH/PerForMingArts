import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:musical/k_controller/app_controller.dart';
import 'package:musical/pages/category/category_export.dart';
import 'package:musical/pages/home/home_export.dart';
// import 'package:musical/pages/person/person_export.dart';
import 'package:musical/theme/theme_export.dart';

class AppPage extends GetView<AppController> {
  const AppPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() {
        switch (RouteName.values[controller.currentIndex.value]) {
          case RouteName.Home:
            return HomePage();
          case RouteName.Category:
            return CategoryPage();
          // case RouteName.Person:
          //   return const PersonPage();
        }
      }),
      bottomNavigationBar: Obx(
        () => NavigationBar(
            height: kSize(context).height * 0.08,
            onDestinationSelected: controller.chengePageIndex,
            selectedIndex: controller.currentIndex.value,
            destinations: const [
              NavigationDestination(
                  icon: Icon(Icons.home_outlined),
                  selectedIcon: Icon(Icons.home),
                  label: 'home'),
              NavigationDestination(
                  icon: Icon(Icons.category_outlined),
                  selectedIcon: Icon(Icons.category),
                  label: 'category'),
              // NavigationDestination(
              //     label: 'person',
              //     icon: Icon(Icons.person_2_outlined),
              //     selectedIcon: Icon(Icons.person_2_sharp)),
            ]),
      ),
    );
  }
}
