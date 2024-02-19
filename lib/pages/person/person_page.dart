import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:musical/pages/components/components_export.dart';

import '../../theme/theme_export.dart';

class PersonPage extends StatelessWidget {
  const PersonPage({super.key});

  Widget topProfile(String? name) {
    return SizedBox(
      width: Get.width,
      height: Get.height * 0.2,
      child: Row(
        children: [
          Expanded(
            child: CircleAvatar(
              backgroundColor: Colors.black,
              radius: Get.width * 0.15,
            ),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              name!,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: kBaseAccentFont.copyWith(
                  fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: Text(
              "님 반가워요",
              style: kBaseAccentFont.copyWith(fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }

  Widget middleList() {
    return SizedBox(
        width: Get.width,
        height: Get.height * 0.5,
        child: Column(
          children: [
            ListTile(
              onTap: () {
                print("1");
              },
              leading: const Icon(Icons.remove),
              title: Text(
                "공지사항",
                style: kBaseFont.copyWith(fontSize: 15),
              ),
              trailing: const Icon(Icons.arrow_forward_ios, size: 10),
            ),
            ListTile(
              onTap: () {
                print("2");
              },
              leading: const Icon(Icons.remove),
              title: Text(
                "업데이트 상황",
                style: kBaseFont.copyWith(fontSize: 15),
              ),
              trailing: const Icon(Icons.arrow_forward_ios, size: 10),
            ),
            ListTile(
              onTap: () {
                print("3");
              },
              leading: const Icon(Icons.remove),
              title: Text(
                "카카오로 문의하기",
                style: kBaseFont.copyWith(fontSize: 15),
              ),
              trailing: const Icon(Icons.arrow_forward_ios, size: 10),
            ),
            ListTile(
              onTap: () {
                print("4");
              },
              leading: const Icon(Icons.remove),
              title: Text(
                "이메일로 문의하기",
                style: kBaseFont.copyWith(fontSize: 15),
              ),
              trailing: const Icon(Icons.arrow_forward_ios, size: 10),
            ),
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            topProfile("KOPIS"),
            AdMob1(),
            middleList(),
          ],
        ),
      ),
    ));
  }
}
