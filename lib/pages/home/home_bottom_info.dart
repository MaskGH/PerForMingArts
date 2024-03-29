// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:musical/k_controller/controller_export.dart';

class HomeBottomInfo extends StatelessWidget {
  HomeBottomInfo({super.key});
  HomeController controller = Get.put(HomeController());

  // 최종집계 데이터 자동으로 받을 수 있게 설정

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
        width: Get.width,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Text("- 해당 어플은 KOPIS에 의거하여 개발된 어플입니다"),
          const Text("- 출처: (재)예술경영지원센터 공연예술통합전산망(www.kopis.or.kr)"),
          Text("- 집계기간 : 최종집계 ${controller.stDate}~${controller.edDate}"),
          const Text("- 집계대상 : 모든 공연 데이터 전송기관"),
          const Text(
              "- 아래 집계 데이터는 공연예술통합전산망 연계기관의 티켓판매시스템에서 발권된 분량을 기준으로 제공함으로 해당 공연의 전체 관객 수와 차이가 있을 수 있습니다"),
          const Text("- Api 인증키는 신청 직후 기재된 이메일 주소로 발급됩니다."
              " 인증키 사용 유효기간은 발급일로부터 1년으로 자동 설정되어 있으며, 3개월 이상 미사용시 사용 승인이 취소됩니다."
              "유효기간 만료 또는 승인 취소 관련 안내는 kopis@gokams.or.kr 메일로 발송되며, 유효기간 연장 희망시 해당 메일로 신청해 주시기 바랍니다."),
        ]),
      ),
    );
  }
}
