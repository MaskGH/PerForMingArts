import 'package:get/get.dart';

// ignore: constant_identifier_names
enum RouteName {
  Home,
  Category,
//  Person
}

class AppController extends GetxService {
  static AppController get to => Get.find();
  RxInt currentIndex = 0.obs;

  void chengePageIndex(int index) {
    currentIndex(index);
  }
}
