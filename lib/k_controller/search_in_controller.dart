import 'package:get/get.dart';
import 'package:musical/k_models/model_export.dart';
import 'package:musical/k_repositorys/repository_export.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SearchInController extends GetxController {
  String key = "searchKey";
  RxList<String> history = RxList<String>.empty(growable: true);
  SharedPreferences? profs;
  Rx<DbsResult> dbsresult = DbsResult(db: []).obs;
  String? currentKeyword;

  @override
  void onInit() async {
    super.onInit();
    profs = await SharedPreferences.getInstance();
    List<dynamic>? initData = (profs?.get(key) ?? []) as List;
    history(initData.map((e) => e.toString()).toList());
  }

  void submitSearch(String searchKey) {
    history.addIf(!history.contains(searchKey), searchKey);
    profs?.setStringList(key, history);
    _searchInfo(searchKey);
  }

  void _searchInfo(String searchKey) async {
    DbsResult? dbsResult = await HomeRepository.to.searchLoad(searchKey);
    dbsresult(dbsResult);
  }
}
