// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class AdMob1 extends StatefulWidget {
  const AdMob1({super.key});

  @override
  State<AdMob1> createState() => _AdMob1State();
}

class _AdMob1State extends State<AdMob1> {
  BannerAd? bannerAd;
  String admobId = 'ca-app-pub-1751852329248736/8598438457';

  @override
  void initState() {
    bannerAd = BannerAd(
        adUnitId: admobId,
        listener: const BannerAdListener(),
        request: const AdRequest(),
        size: AdSize.mediumRectangle)
      ..load();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      height: Get.height * 0.3,
      color: Colors.amber.shade50,
      child: bannerAd != null
          ? AdWidget(
              ad: bannerAd!,
            )
          : Container(),
    );
  }
}

class AdMob2 extends StatefulWidget {
  const AdMob2({super.key});

  @override
  State<AdMob2> createState() => _AdMob2State();
}

class _AdMob2State extends State<AdMob2> {
  BannerAd? bannerAd;
  String admobId = 'ca-app-pub-1751852329248736/8101730539';

  @override
  void initState() {
    bannerAd = BannerAd(
        adUnitId: admobId,
        listener: const BannerAdListener(),
        request: const AdRequest(),
        size: AdSize.mediumRectangle)
      ..load();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      height: Get.height * 0.3,
      color: Colors.amber.shade50,
      child: bannerAd != null
          ? AdWidget(
              ad: bannerAd!,
            )
          : Container(),
    );
  }
}

class AdMob3 extends StatefulWidget {
  const AdMob3({super.key});

  @override
  State<AdMob3> createState() => _AdMob3State();
}

class _AdMob3State extends State<AdMob3> {
  BannerAd? bannerAd;
  String admobId = 'ca-app-pub-1751852329248736/7774465464';

  @override
  void initState() {
    bannerAd = BannerAd(
        adUnitId: admobId,
        listener: const BannerAdListener(),
        request: const AdRequest(),
        size: AdSize.mediumRectangle)
      ..load();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      height: Get.height * 0.3,
      color: Colors.amber.shade50,
      child: bannerAd != null
          ? AdWidget(
              ad: bannerAd!,
            )
          : Container(),
    );
  }
}

class AdMob4 extends StatefulWidget {
  const AdMob4({super.key});

  @override
  State<AdMob4> createState() => _AdMob4State();
}

class _AdMob4State extends State<AdMob4> {
  BannerAd? bannerAd;
  String admobId = 'ca-app-pub-1751852329248736/6381492749';

  @override
  void initState() {
    bannerAd = BannerAd(
        adUnitId: admobId,
        listener: const BannerAdListener(),
        request: const AdRequest(),
        size: AdSize.mediumRectangle)
      ..load();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      height: Get.height * 0.3,
      color: Colors.amber.shade50,
      child: bannerAd != null
          ? AdWidget(
              ad: bannerAd!,
            )
          : Container(),
    );
  }
}

class AdMob5 extends StatefulWidget {
  const AdMob5({super.key});

  @override
  State<AdMob5> createState() => _AdMob5State();
}

class _AdMob5State extends State<AdMob5> {
  BannerAd? bannerAd;
  String admobId = 'ca-app-pub-1751852329248736/4657347539';

  @override
  void initState() {
    bannerAd = BannerAd(
        adUnitId: admobId,
        listener: const BannerAdListener(),
        request: const AdRequest(),
        size: AdSize.mediumRectangle)
      ..load();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      height: Get.height * 0.3,
      color: Colors.amber.shade50,
      child: bannerAd != null
          ? AdWidget(
              ad: bannerAd!,
            )
          : Container(),
    );
  }
}

class AdMob6 extends StatefulWidget {
  const AdMob6({super.key});

  @override
  State<AdMob6> createState() => _AdMob6State();
}

class _AdMob6State extends State<AdMob6> {
  BannerAd? bannerAd;
  String admobId = 'ca-app-pub-1751852329248736/7387452656';

  @override
  void initState() {
    bannerAd = BannerAd(
        adUnitId: admobId,
        listener: const BannerAdListener(),
        request: const AdRequest(),
        size: AdSize.mediumRectangle)
      ..load();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      height: Get.height * 0.3,
      color: Colors.amber.shade50,
      child: bannerAd != null
          ? AdWidget(
              ad: bannerAd!,
            )
          : Container(),
    );
  }
}

class AdMob7 extends StatefulWidget {
  const AdMob7({super.key});

  @override
  State<AdMob7> createState() => _AdMob7State();
}

class _AdMob7State extends State<AdMob7> {
  BannerAd? bannerAd;
  String admobId = 'ca-app-pub-1751852329248736/3055904520';

  @override
  void initState() {
    bannerAd = BannerAd(
        adUnitId: admobId,
        listener: const BannerAdListener(),
        request: const AdRequest(),
        size: AdSize.mediumRectangle)
      ..load();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      height: Get.height * 0.3,
      color: Colors.amber.shade50,
      child: bannerAd != null
          ? AdWidget(
              ad: bannerAd!,
            )
          : Container(),
    );
  }
}

class AdMob8 extends StatefulWidget {
  const AdMob8({super.key});

  @override
  State<AdMob8> createState() => _AdMob8State();
}

class _AdMob8State extends State<AdMob8> {
  BannerAd? bannerAd;
  String admobId = 'ca-app-pub-1751852329248736/4761289318';

  @override
  void initState() {
    bannerAd = BannerAd(
        adUnitId: admobId,
        listener: const BannerAdListener(),
        request: const AdRequest(),
        size: AdSize.mediumRectangle)
      ..load();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      height: Get.height * 0.3,
      color: Colors.amber.shade50,
      child: bannerAd != null
          ? AdWidget(
              ad: bannerAd!,
            )
          : Container(),
    );
  }
}

class AdMob9 extends StatefulWidget {
  const AdMob9({super.key});

  @override
  State<AdMob9> createState() => _AdMob9State();
}

class _AdMob9State extends State<AdMob9> {
  BannerAd? bannerAd;
  String admobId = 'ca-app-pub-1751852329248736/9070648534';

  @override
  void initState() {
    bannerAd = BannerAd(
        adUnitId: admobId,
        listener: const BannerAdListener(),
        request: const AdRequest(),
        size: AdSize.mediumRectangle)
      ..load();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      height: Get.height * 0.3,
      color: Colors.amber.shade50,
      child: bannerAd != null
          ? AdWidget(
              ad: bannerAd!,
            )
          : Container(),
    );
  }
}

class AdMob10 extends StatefulWidget {
  const AdMob10({super.key});

  @override
  State<AdMob10> createState() => _AdMob10State();
}

class _AdMob10State extends State<AdMob10> {
  BannerAd? bannerAd;
  String admobId = 'ca-app-pub-1751852329248736/9429741186';

  @override
  void initState() {
    bannerAd = BannerAd(
        adUnitId: admobId,
        listener: const BannerAdListener(),
        request: const AdRequest(),
        size: AdSize.mediumRectangle)
      ..load();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      height: Get.height * 0.3,
      color: Colors.amber.shade50,
      child: bannerAd != null
          ? AdWidget(
              ad: bannerAd!,
            )
          : Container(),
    );
  }
}

class AdMob11 extends StatefulWidget {
  const AdMob11({super.key});

  @override
  State<AdMob11> createState() => _AdMob11State();
}

class _AdMob11State extends State<AdMob11> {
  BannerAd? bannerAd;
  String admobId = 'ca-app-pub-1751852329248736/1536322186';

  @override
  void initState() {
    bannerAd = BannerAd(
        adUnitId: admobId,
        listener: const BannerAdListener(),
        request: const AdRequest(),
        size: AdSize.mediumRectangle)
      ..load();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      height: Get.height * 0.3,
      color: Colors.amber.shade50,
      child: bannerAd != null
          ? AdWidget(
              ad: bannerAd!,
            )
          : Container(),
    );
  }
}
