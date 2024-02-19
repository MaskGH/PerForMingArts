// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:musical/k_models/model_export.dart';
import 'package:musical/pages/components/components_export.dart';
import 'package:musical/theme/theme_export.dart';

class SearchResultPage extends StatelessWidget {
  Db? db;
  SearchResultPage({Key? key, required this.db}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.width,
      child: Row(
        children: [
          SizedBox(
            width: Get.width * 0.3,
            child: Image.network(
              db!.poster ?? "",
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) =>
                  CustomShimmer(isCard: false),
            ),
          ),
          Flexible(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(db!.prfnm ?? "해당 정보 없음", style: kBaseAccentFont),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(db!.prfpdfrom ?? "해당 정보 없음", style: kBaseAccentFont),
                    Text(db!.fcltynm ?? "해당 정보 없음", style: kBaseAccentFont),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
