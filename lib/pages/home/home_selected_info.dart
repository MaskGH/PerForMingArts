import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:musical/k_controller/controller_export.dart';
import 'package:musical/pages/components/components_export.dart';
import 'package:musical/theme/theme_export.dart';

class HomeSelectedInfo extends GetView<DetailController> {
  HomeSelectedInfo({super.key});
  final HomeController homeController = Get.put(HomeController());

  Widget topPoster(BuildContext context, String? imgUrl) {
    return SizedBox(
      width: kSize(context).width,
      height: kSize(context).height * 0.6,
      child: Image.network(
        imgUrl!,
        errorBuilder: (context, error, stackTrace) => CustomShimmer(
          isCard: false,
        ),
        fit: BoxFit.fill,
        height: Get.height,
      ),
    );
  }

  Widget centerTitle(BuildContext context, String? title) {
    return Container(
      width: kSize(context).width,
      // height: kSize(context).height * 0.13,
      margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      child: Text(
        title!,
        style: kBaseAccentFont.copyWith(fontSize: 30),
        maxLines: 3,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }

  Widget centerActors(BuildContext context, String from, String to, String time,
      String place, String actors, String runtime, String age, String price) {
    // Banner AdMob
    return Container(
      width: kSize(context).width,
      // height: kSize(context).height * 0.2,
      margin: const EdgeInsets.symmetric(
        horizontal: 8,
        vertical: 8,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "-기간 : $from~$to",
            style: kBaseFont.copyWith(fontSize: 20),
          ),
          Text(
            "-공연시간 : $time",
            style: kBaseFont.copyWith(fontSize: 20),
          ),
          Text(
            "-공연장소 : $place",
            style: kBaseFont.copyWith(fontSize: 20),
          ),
          Text(
            "-출연진 : $actors",
            style: kBaseFont.copyWith(fontSize: 20),
          ),
          Text(
            "-런타임 : $runtime",
            style: kBaseFont.copyWith(fontSize: 20),
          ),
          Text(
            "-관람 연령 : $age",
            style: kBaseFont.copyWith(fontSize: 20),
          ),
          Text(
            "-가격 : $price",
            style: kBaseFont.copyWith(fontSize: 20, color: Colors.red),
          ),
        ],
      ),
    );
  }

  Widget centerPageView(BuildContext context) {
    return SizedBox(
      width: kSize(context).width,
      height: kSize(context).height * 0.1,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Flexible(
            flex: 1,
            child: GestureDetector(
                onTap: () {
                  homeController.pageController.previousPage(
                      duration: const Duration(milliseconds: 100),
                      curve: Curves.bounceIn);
                },
                child: SizedBox(
                    width: Get.width,
                    height: Get.height,
                    child:
                        Center(child: Text("상세 정보", style: kBaseAccentFont)))),
          ),
          // Flexible(
          //   flex: 1,
          //   child: GestureDetector(
          //     onTap: () {
          //       homeController.pageController.nextPage(
          //           duration: const Duration(milliseconds: 100),
          //           curve: Curves.bounceIn);
          //     },
          //     child: SizedBox(
          //         width: Get.width,
          //         height: Get.height,
          //         child: Center(child: Text("후기", style: kBaseAccentFont))),
          //   ),
          // )
        ],
      ),
    );
  }

  Widget infoPage(String info) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemCount: controller.detailResult.value.styurls?.toJson().length ?? 0,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Image.network(
            info,
            fit: BoxFit.fill,
            errorBuilder: (context, error, stackTrace) =>
                CustomShimmer(isCard: false),
          ),
        );
      },
    );
  }

  Widget comunityPage() {
    return const SizedBox(
      child: Center(child: Text("오픈 예정")),
    );
  }

  Widget centerInfo(BuildContext context, String info) {
    return SizedBox(
        width: kSize(context).width,
        height: kSize(context).height * 0.7,
        child: PageView(
          controller: homeController.pageController,
          scrollDirection: Axis.horizontal,
          children: [
            infoPage(info),
            // comunityPage()
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    Get.find<DetailController>();
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          actions: [
            IconButton(
              onPressed: () {
                Get.reloadAll();
              },
              icon: const Icon(Icons.refresh),
            ),
            IconButton(
                onPressed: () {
                  Get.back();
                },
                icon: const Icon(Icons.close)),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Obx(
                () => topPoster(
                    context, controller.detailResult.value.poster ?? ""),
              ),
              Obx(
                () => centerTitle(
                    context, controller.detailResult.value.prfnm ?? ""),
              ),
              Obx(
                () => centerActors(
                  context,
                  controller.detailResult.value.prfpdfrom ?? "공연시작일 정보 없음",
                  controller.detailResult.value.prfpdto ?? "공연종료일 정보 없음",
                  controller.detailResult.value.dtguidance ?? "공연시간 정보 없음",
                  controller.detailResult.value.fcltynm ?? "공연장명 정보 없음",
                  controller.detailResult.value.prfcast ?? "출연진 정보 없음",
                  controller.detailResult.value.prfruntime ?? "런타임 정보 없음",
                  controller.detailResult.value.prfage ?? "관람연령 정보 없음",
                  controller.detailResult.value.pcseguidance ?? "가격 정보 없음",
                ),
              ),
              const AdMob3(),
              centerPageView(context),
              Obx(
                () => centerInfo(context,
                    controller.detailResult.value.styurls?.styurl! ?? ""),
              ),
              const AdMob4(),
            ],
          ),
        ),
      ),
    );
  }
}
