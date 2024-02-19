import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:musical/k_controller/controller_export.dart';
import 'package:musical/pages/components/components_export.dart';
import 'package:musical/theme/theme_export.dart';

// ignore: must_be_immutable
class HomeToBeOpened extends StatelessWidget {
  HomeToBeOpened({
    super.key,
    required this.isOpenNotYet,
  });
  late bool isOpenNotYet;
  HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        width: Get.width,
        height: Get.height * 0.9,
        child: ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          itemCount: 5,
          itemBuilder: (context, index) {
            return Obx(() => isOpenNotYet
                ? GestureDetector(
                    onTap: () {
                      print(controller.dbsNotYet.value.db?[index].mt20id);
                      Get.toNamed(
                          '/detail/${controller.dbsNotYet.value.db?[index].mt20id ?? ""}');
                    },
                    child: controller.isLoading.value
                        ? Container(
                            margin: const EdgeInsets.symmetric(
                                horizontal: 8, vertical: 4),
                            width: Get.width,
                            height: Get.height * 0.15,
                            decoration: kBaseBoxDecoration,
                            child: Row(children: [
                              Expanded(
                                flex: 4,
                                child: Image.network(
                                  controller
                                          .dbsNotYet.value.db?[index].poster! ??
                                      "",
                                  fit: BoxFit.fill,
                                  width: Get.width * 0.3,
                                  errorBuilder: (context, error, stackTrace) =>
                                      CustomShimmer(isCard: false),
                                ),
                              ),
                              Expanded(
                                flex: 7,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: [
                                      Expanded(
                                        flex: 3,
                                        child: Text(
                                          controller.dbsNotYet.value.db?[index]
                                                  .prfnm! ??
                                              "",
                                          style: kBaseAccentFont.copyWith(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      const Spacer(),
                                      Expanded(
                                        flex: 1,
                                        child: Text(
                                          "${controller.dbsNotYet.value.db?[index].prfpdfrom ?? ""}~${controller.dbsNotYet.value.db?[index].prfpdto ?? ""}",
                                          style: kBaseFont.copyWith(
                                              fontSize: 10,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Icon(
                                  Icons.arrow_forward_ios,
                                  color: Colors.transparent.withOpacity(0.5),
                                  size: 10,
                                ),
                              ),
                            ]),
                          )
                        : CustomShimmer(isCard: true),
                  )
                : Container());
          },
        ),
      ),
    );
  }
}
