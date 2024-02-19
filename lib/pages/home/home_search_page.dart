// ignore_for_file: prefer_is_empty

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:musical/k_controller/controller_export.dart';
import 'package:musical/pages/components/components_export.dart';
import 'package:musical/theme/theme_export.dart';

class HomeSearchPage extends GetView<SearchInController> {
  const HomeSearchPage({super.key});

  Widget searchHistory() {
    return ListView(
      children: List.generate(
          controller.history.length,
          (index) => ListTile(
                onTap: () {
                  print("여기");
                  controller.submitSearch(controller.history[index]);
                },
                leading: const Icon(Icons.star_border),
                title: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  child: Text(controller.history[index]),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Colors.black.withOpacity(0.3),
                ),
              )).toList(),
    );
  }

  Widget searchResultKopis() {
    return SingleChildScrollView(
      child: Column(
        children: List.generate(controller.dbsresult.value.db!.length, (index) {
          return GestureDetector(
            onTap: () {
              Get.toNamed(
                  "/detail/${controller.dbsresult.value.db![index].mt20id}");
            },
            child: Card(
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
              elevation: 5,
              semanticContainer: true,
              shadowColor: Colors.grey.withOpacity(0.5),
              child:
                  SearchResultPage(db: controller.dbsresult.value.db![index]),
            ),
          );
        }),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: kSize(context).height * 0.13,
          leading: IconButton(
              onPressed: Get.back, icon: const Icon(Icons.arrow_back)),
          title: TextField(
            decoration: InputDecoration(
                fillColor: Colors.transparent.withOpacity(0.1),
                filled: true,
                border: UnderlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: const BorderSide(color: Colors.white),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: const BorderSide(color: Colors.white),
                ),
                enabledBorder: UnderlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: const BorderSide(color: Colors.white),
                )),
            onChanged: (value) {
              controller.submitSearch(value);
            },
            // onSubmitted: (value) {
            //   controller.submitSearch(value);
            // },
          ),
        ),
        body: Obx(
          () => controller.dbsresult.value.db!.length > 0
              ? searchResultKopis()
              : searchHistory(),
        ),
      ),
    );
  }
}
