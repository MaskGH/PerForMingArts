import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shimmer/shimmer.dart';

// ignore: must_be_immutable
class CustomShimmer extends StatelessWidget {
  CustomShimmer({super.key, required this.isCard});
  bool isCard = false;

  Widget cardWidget() {
    return Row(
      children: [
        Container(
          width: Get.width * 0.1,
          height: Get.height * 0.1,
          color: Colors.grey,
        ),
        Column(
          children: [
            Container(
              width: Get.width,
              height: Get.height * 0.08,
              color: Colors.grey,
            ),
            Container(
              width: Get.width,
              height: Get.height * 0.08,
              color: Colors.grey,
            ),
            Container(
              width: Get.width,
              height: Get.height * 0.08,
              color: Colors.grey,
            ),
          ],
        ),
      ],
    );
  }

  Widget carouselWidget() {
    return Container(
      width: Get.width,
      height: Get.height,
      color: Colors.grey,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade100,
      highlightColor: Colors.grey.shade500,
      enabled: true,
      child: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: isCard ? cardWidget() : carouselWidget(),
      ),
    );
  }
}
