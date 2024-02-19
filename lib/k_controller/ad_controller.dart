import 'package:get/get.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class AdController extends GetxController {
  final RxString admobId = 'ca-app-pub-1751852329248736/8598438457'.obs;
  final String testId = 'ca-app-pub-3940256099942544~3347511713';

  BannerAd? bannerAd;

  @override
  void onInit() {
    bannerAd = BannerAd(
        size: AdSize.mediumRectangle,
        adUnitId: admobId.value,
        listener: const BannerAdListener(),
        request: const AdRequest())
      ..load();
    super.onInit();
  }
}
