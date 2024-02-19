import 'package:get/get.dart';
import 'package:musical/k_controller/controller_export.dart';
import 'package:musical/k_repositorys/repository_export.dart';

class InitBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(HomeRepository(), permanent: true);
    Get.put(CategoryRepository(), permanent: true);
    Get.put(AppController());
    Get.put(HomeController());
    Get.put(CategoryController());
    Get.put(SearchInController());
  }
}
