import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:musical/k_models/db.dart';
import 'package:musical/k_repositorys/repository_export.dart';

class HomeController extends GetxController
    with GetSingleTickerProviderStateMixin {
  HomeController get to => Get.find();

  late PageController pageController;
  RxBool isLoading = false.obs;
  var stDate = DateFormat('yyyyMMdd')
      .format(DateTime.now().subtract(const Duration(days: 30)));
  var edDate = DateFormat('yyyyMMdd')
      .format(DateTime.now().add(const Duration(days: 100)));

  Rx<DbsResult> dbsAll = DbsResult().obs;
  Rx<DbsResult> dbsNotYet = DbsResult().obs;
  Rx<DbsResult> dbsFestival = DbsResult().obs;

  @override
  void onInit() {
    _allLoad();
    _notYetLoad();
    _loadFestival();
    isLoading = true.obs;
    pageController = PageController(initialPage: 0);
    super.onInit();
  }

  RxInt tabIndex = 0.obs;

  void changeTabInfo(int index) {
    tabIndex(index);
  }

  void _allLoad() async {
    DbsResult? dbsResult = await HomeRepository.to.loadAll();
    if (dbsResult != null && dbsResult.db != null && dbsResult.db!.isNotEmpty) {
      dbsAll(dbsResult);
    }
  }

  void _notYetLoad() async {
    DbsResult? dbsResult = await HomeRepository.to.openNotYet();
    if (dbsResult != null && dbsResult.db != null && dbsResult.db!.isNotEmpty) {
      dbsNotYet(dbsResult);
    }
  }

  void _loadFestival() async {
    DbsResult? dbsResult = await HomeRepository.to.loadFestival();
    if (dbsResult != null && dbsResult.db != null && dbsResult.db!.isNotEmpty) {
      dbsFestival(dbsResult);
    }
  }
}
