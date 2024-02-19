import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:musical/k_bindings/init_binding.dart';
import 'package:musical/k_controller/controller_export.dart';
import 'package:musical/pages/app/app_export.dart';
import 'package:musical/pages/home/home_export.dart';
import 'package:musical/theme/theme_export.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  unawaited(MobileAds.instance.initialize());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'PerformingArts',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true, colorScheme: lightColorScheme),
      darkTheme: ThemeData(useMaterial3: true, colorScheme: darkColorScheme),
      initialRoute: '/',
      initialBinding: InitBinding(),
      getPages: [
        GetPage(name: '/', page: () => const AppPage()),
        GetPage(
            name: '/detail/:mt20id',
            page: () => HomeSelectedInfo(),
            binding: BindingsBuilder(
                () => Get.lazyPut<DetailController>(() => DetailController()))),
        GetPage(
            name: '/Search',
            page: () => const HomeSearchPage(),
            binding: BindingsBuilder(() =>
                Get.lazyPut<SearchInController>(() => SearchInController())))
      ],
    );
  }
}
