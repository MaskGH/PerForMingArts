import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:musical/k_models/model_export.dart';
import 'package:musical/k_repositorys/repository_export.dart';

class CategoryController extends GetxController
    with GetSingleTickerProviderStateMixin {
  CategoryController get to => Get.find();

  RxInt tabIndex = 0.obs;

  Rx<Boxofs> boxofsBest = Boxofs().obs;
  Rx<Boxofs> boxofsOpenRun = Boxofs().obs;
  Rx<Boxofs> boxofsMusical = Boxofs().obs;
  Rx<Boxofs> boxofsTheater = Boxofs().obs;
  Rx<Boxofs> boxofsClassic = Boxofs().obs;
  Rx<Boxofs> boxofsDance = Boxofs().obs;
  Rx<Boxofs> boxofsKid = Boxofs().obs;
  Rx<Boxofs> boxofsKoreaClassic = Boxofs().obs;
  Rx<Boxofs> boxofsOpera = Boxofs().obs;

  late TabController tabController;
  List<Tab> tabs = const <Tab>[
    Tab(
      text: "순위",
    ),
    Tab(
      text: "오픈런",
    ),
    Tab(
      text: "뮤지컬",
    ),
    Tab(
      text: "연극",
    ),
    Tab(
      text: "클/오",
    ),
    Tab(
      text: "무용",
    ),
    Tab(
      text: "아동",
    ),
  ];

  @override
  void onInit() {
    tabController = TabController(length: tabs.length, vsync: this);
    _numBestLoad();
    _bestOpenRunLoad();
    _bestDancelLoad();
    _bestKidLoad();
    _bestMusicalLoad();
    _bestOperaLoad();
    _bestKoreaClassicLoad();
    _bestClassicLoad();
    _bestTheaterlLoad();
    super.onInit();
  }

  void changeTabInfo(int index) {
    tabIndex(index);
  }

  void _numBestLoad() async {
    Boxofs? box = await CategoryRepository.to
        .loadNumberBest()
        .timeout(const Duration(days: 1));
    if (box != null && box.boxof != null && box.boxof!.isNotEmpty) {
      boxofsBest(box);
    }
  }

  void _bestMusicalLoad() async {
    Boxofs? box = await CategoryRepository.to
        .loadMusicalBest()
        .timeout(const Duration(days: 1));
    if (box != null && box.boxof != null && box.boxof!.isNotEmpty) {
      boxofsMusical(box);
    }
  }

  void _bestTheaterlLoad() async {
    Boxofs? box = await CategoryRepository.to
        .loadTheaterBest()
        .timeout(const Duration(days: 1));
    if (box != null && box.boxof != null && box.boxof!.isNotEmpty) {
      boxofsTheater(box);
    }
  }

  void _bestDancelLoad() async {
    Boxofs? box = await CategoryRepository.to
        .loadDanceBest()
        .timeout(const Duration(days: 1));
    if (box != null && box.boxof != null && box.boxof!.isNotEmpty) {
      boxofsDance(box);
    }
  }

  void _bestKidLoad() async {
    Boxofs? box = await CategoryRepository.to
        .loadKidBest()
        .timeout(const Duration(days: 1));
    if (box != null && box.boxof != null && box.boxof!.isNotEmpty) {
      boxofsKid(box);
    }
  }

  void _bestOpenRunLoad() async {
    Boxofs? box = await CategoryRepository.to
        .loadOpenRunBest()
        .timeout(const Duration(days: 1));
    if (box != null && box.boxof != null && box.boxof!.isNotEmpty) {
      boxofsOpenRun(box);
    }
  }

  void _bestOperaLoad() async {
    Boxofs? box = await CategoryRepository.to
        .loadMagic()
        .timeout(const Duration(days: 1));
    if (box != null && box.boxof != null && box.boxof!.isNotEmpty) {
      boxofsOpera(box);
    }
  }

  void _bestClassicLoad() async {
    Boxofs? box = await CategoryRepository.to
        .loadClassicBest()
        .timeout(const Duration(days: 1));
    if (box != null && box.boxof != null && box.boxof!.isNotEmpty) {
      boxofsClassic(box);
    }
  }

  void _bestKoreaClassicLoad() async {
    Boxofs? box = await CategoryRepository.to
        .loadKoreaClassicBest()
        .timeout(const Duration(days: 1));
    if (box != null && box.boxof != null && box.boxof!.isNotEmpty) {
      boxofsKoreaClassic(box);
    }
  }
}
