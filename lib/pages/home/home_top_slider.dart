import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:musical/k_controller/controller_export.dart';
import '../components/components_export.dart';

// ignore: must_be_immutable
class HomeTopSlider extends GetView<HomeController> {
  const HomeTopSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Obx(
        () => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
          child: CarouselSlider.builder(
              itemCount: controller.dbsAll.value.db?.length ?? 0,
              itemBuilder: (context, index, realIndex) {
                return GestureDetector(
                  onTap: () {
                    Get.toNamed(
                        '/detail/${controller.dbsAll.value.db?[index].mt20id ?? ""}');
                  },
                  child: Image.network(
                    controller.dbsAll.value.db?[index].poster! ?? "",
                    fit: BoxFit.fill,
                    errorBuilder: (context, error, stackTrace) {
                      return CustomShimmer(isCard: false);
                    },
                  ),
                );
              },
              options: CarouselOptions(
                height: Get.height * 0.7,
                enlargeCenterPage: true,
                autoPlay: true,
                autoPlayAnimationDuration: const Duration(seconds: 2),
              )),
        ),
      ),
    );
  }
}
