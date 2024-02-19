import 'package:get/get.dart';
import 'package:musical/k_models/model_export.dart';
import 'package:musical/k_repositorys/home_repository.dart';

class DetailController extends GetxController {
  var mt20id = Get.parameters['mt20id'];
  Rx<DetailDb> detailResult = DetailDb().obs;

  @override
  void onInit() {
    detailLoad();
    super.onInit();
  }

  void detailLoad() async {
    DetailDb? dbs = await HomeRepository.to.loadDetail(mt20id);
    if (dbs != null && dbs.mt20id != null) {
      detailResult(dbs);
    }
  }
}
