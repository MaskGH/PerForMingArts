// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:musical/k_controller/controller_export.dart';
import 'package:musical/pages/components/components_export.dart';
import 'package:musical/theme/theme_export.dart';

class CategoryPage extends StatelessWidget {
  CategoryPage({super.key});
  CategoryController controller = Get.put(CategoryController());

  Widget contentList(Function()? onTap, String? imgUrl, String? title,
      String? date, String? address) {
    return GestureDetector(
      onTap: onTap!,
      child: Card(
        margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
        semanticContainer: true,
        shadowColor: Colors.grey.withOpacity(0.5),
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            child: SizedBox(
                width: Get.size.width,
                height: Get.size.height * 0.2,
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Image.network(
                        "http://www.kopis.or.kr${imgUrl ?? ""}",
                        fit: BoxFit.cover,
                        width: Get.width * 0.3,
                        errorBuilder: (context, error, stackTrace) {
                          return CustomShimmer(isCard: false);
                        },
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      flex: 2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 8),
                          Expanded(
                            flex: 2,
                            child: Text(
                              title!,
                              style: kBaseAccentFont,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Text(
                              date!,
                              style: kBaseAccentFont,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Text(
                              address!,
                              style: kBaseAccentFont,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ))),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: DefaultTabController(
            length: 7,
            child: NestedScrollView(
                headerSliverBuilder: (context, innerBoxIsScrolled) {
                  return [
                    SliverAppBar(
                      floating: true,
                      snap: true,
                      elevation: 1,
                      centerTitle: true,
                      title: Text(
                        "장르별",
                        style: kBaseAccentFont,
                      ),
                      actions: [
                        IconButton(
                            onPressed: () {
                              Get.reloadAll();
                            },
                            icon: const Icon(Icons.refresh)),
                      ],
                      bottom: TabBar(
                          isScrollable: true,
                          indicatorSize: TabBarIndicatorSize.label,
                          labelStyle: kBaseLowFont.copyWith(
                              fontSize: 15, fontWeight: FontWeight.bold),
                          onTap: controller.changeTabInfo,
                          controller: controller.tabController,
                          tabs: controller.tabs),
                    )
                  ];
                },
                body:
                    TabBarView(controller: controller.tabController, children: [
                  //  순위
                  Obx(
                    () => ListView.builder(
                        itemCount:
                            controller.boxofsBest.value.boxof?.length ?? 0,
                        itemBuilder: (context, index) {
                          if (index % 5 == 3) {
                            return const AdMob5();
                          }
                          return contentList(() {
                            Get.toNamed(
                                '/detail/${controller.boxofsBest.value.boxof?[index].mt20id ?? ""}');
                          },
                              controller.boxofsBest.value.boxof?[index].poster,
                              controller.boxofsBest.value.boxof?[index].prfnm,
                              controller.boxofsBest.value.boxof?[index].prfpd,
                              controller
                                  .boxofsBest.value.boxof?[index].prfplcnm);
                        }),
                  ),
                  // 오픈런
                  Obx(
                    () => ListView.builder(
                        itemCount:
                            controller.boxofsOpenRun.value.boxof?.length ?? 0,
                        itemBuilder: (context, index) {
                          if (index % 5 == 3) {
                            return const AdMob6();
                          }
                          return contentList(() {
                            Get.toNamed(
                                '/detail/${controller.boxofsOpenRun.value.boxof?[index].mt20id ?? ""}');
                          },
                              controller
                                  .boxofsOpenRun.value.boxof?[index].poster,
                              controller
                                  .boxofsOpenRun.value.boxof?[index].prfnm,
                              controller
                                  .boxofsOpenRun.value.boxof?[index].prfpd,
                              controller
                                  .boxofsOpenRun.value.boxof?[index].prfplcnm);
                        }),
                  ),
                  // 뮤지컬
                  Obx(
                    () => ListView.builder(
                        itemCount:
                            controller.boxofsMusical.value.boxof?.length ?? 0,
                        itemBuilder: (context, index) {
                          if (index % 5 == 3) {
                            return const AdMob7();
                          }
                          return contentList(() {
                            Get.toNamed(
                                '/detail/${controller.boxofsMusical.value.boxof?[index].mt20id ?? ""}');
                          },
                              controller
                                  .boxofsMusical.value.boxof?[index].poster,
                              controller
                                  .boxofsMusical.value.boxof?[index].prfnm,
                              controller
                                  .boxofsMusical.value.boxof?[index].prfpd,
                              controller
                                  .boxofsMusical.value.boxof?[index].prfplcnm);
                        }),
                  ),
                  // 연극
                  Obx(
                    () => ListView.builder(
                        itemCount:
                            controller.boxofsTheater.value.boxof?.length ?? 0,
                        itemBuilder: (context, index) {
                          if (index % 5 == 3) {
                            return const AdMob8();
                          }
                          return contentList(() {
                            Get.toNamed(
                                '/detail/${controller.boxofsTheater.value.boxof?[index].mt20id ?? ""}');
                          },
                              controller
                                  .boxofsTheater.value.boxof?[index].poster,
                              controller
                                  .boxofsTheater.value.boxof?[index].prfnm,
                              controller
                                  .boxofsTheater.value.boxof?[index].prfpd,
                              controller
                                  .boxofsTheater.value.boxof?[index].prfplcnm);
                        }),
                  ),
                  // 클래식
                  Obx(
                    () => ListView.builder(
                        itemCount:
                            controller.boxofsClassic.value.boxof?.length ?? 0,
                        itemBuilder: (context, index) {
                          if (index % 5 == 3) {
                            return const AdMob9();
                          }
                          return contentList(() {
                            Get.toNamed(
                                '/detail/${controller.boxofsClassic.value.boxof?[index].mt20id ?? ""}');
                          },
                              controller
                                  .boxofsClassic.value.boxof?[index].poster,
                              controller
                                  .boxofsClassic.value.boxof?[index].prfnm,
                              controller
                                  .boxofsClassic.value.boxof?[index].prfpd,
                              controller
                                  .boxofsClassic.value.boxof?[index].prfplcnm);
                        }),
                  ),
                  // 무용
                  Obx(
                    () => ListView.builder(
                        itemCount:
                            controller.boxofsDance.value.boxof?.length ?? 0,
                        itemBuilder: (context, index) {
                          if (index % 5 == 3) {
                            return const AdMob10();
                          }
                          return contentList(() {
                            Get.toNamed(
                                '/detail/${controller.boxofsDance.value.boxof?[index].mt20id ?? ""}');
                          },
                              controller.boxofsDance.value.boxof?[index].poster,
                              controller.boxofsDance.value.boxof?[index].prfnm,
                              controller.boxofsDance.value.boxof?[index].prfpd,
                              controller
                                  .boxofsDance.value.boxof?[index].prfplcnm);
                        }),
                  ),
                  // 아동
                  Obx(
                    () => ListView.builder(
                        itemCount:
                            controller.boxofsKid.value.boxof?.length ?? 0,
                        itemBuilder: (context, index) {
                          if (index % 5 == 3) {
                            return const AdMob11();
                          }
                          return contentList(() {
                            Get.toNamed(
                                '/detail/${controller.boxofsKid.value.boxof?[index].mt20id ?? ""}');
                          },
                              controller.boxofsKid.value.boxof?[index].poster,
                              controller.boxofsKid.value.boxof?[index].prfnm,
                              controller.boxofsKid.value.boxof?[index].prfpd,
                              controller
                                  .boxofsKid.value.boxof?[index].prfplcnm);
                        }),
                  ),
                ]))),
      ),
    );
  }
}
