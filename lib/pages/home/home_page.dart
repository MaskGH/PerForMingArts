// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:musical/pages/components/components_export.dart';
import 'package:musical/pages/home/home_export.dart';
import 'package:musical/pages/home/home_to_be_opened.dart';
import 'package:musical/theme/theme_export.dart';

import '../../k_controller/controller_export.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          centerTitle: true,
          floating: true,
          title: Text(
            "공연 예술",
            style: kBaseAccentFont,
          ),
          actions: [
            IconButton(
                onPressed: () {
                  Get.reloadAll();
                },
                icon: const Icon(Icons.refresh)),
            IconButton(
                onPressed: () {
                  Get.bottomSheet(
                      isScrollControlled: true, const HomeSearchPage());
                },
                icon: const Icon(Icons.search))
          ],
        ),
        const HomeTopSlider(),
        kAdapterSizedBox(),
        HomeCenterAdmob(widget: const AdMob1()),
        kAdapterSizedBox(),
        kListTitle("오픈예정"),
        HomeToBeOpened(isOpenNotYet: true),
        kAdapterSizedBox(),
        kAdapterSizedBox(),
        kListTitle("페스티벌"),
        const HomeFestivalSlider(),
        kAdapterSizedBox(),
        HomeCenterAdmob(widget: const AdMob2()),
        HomeBottomInfo(),
      ],
    );
  }
}
// ad 총 11개