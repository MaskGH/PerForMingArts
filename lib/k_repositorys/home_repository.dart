// ignore_for_file: body_might_complete_normally_nullable, non_constant_identifier_names

import 'dart:convert';

import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:musical/k_models/model_export.dart';
import 'package:xml2json/xml2json.dart';

class HomeRepository extends GetConnect {
  static HomeRepository get to => Get.find();

  var toDayDate = DateFormat('yyyyMMdd').format(DateTime.now());
  var stDate = DateFormat('yyyyMMdd')
      .format(DateTime.now().subtract(const Duration(days: 30)));
  var edDate = DateFormat('yyyyMMdd')
      .format(DateTime.now().add(const Duration(days: 100)));

  var notYetStDate = DateFormat('yyyyMMdd')
      .format(DateTime.now().add(const Duration(days: 3)));

  @override
  void onInit() {
    httpClient.baseUrl = "http://www.kopis.or.kr";
    httpClient.timeout = const Duration(seconds: 60);

    super.onInit();
  }

  // 모든 공연
  Future<DbsResult?> loadAll() async {
    try {
      String url =
          "/openApi/restful/pblprfr?service=dbff58b54814479fb5a4e38345f9894d&stdate=$stDate&eddate=$edDate&cpage=1&rows=30&prfstate=01";
      final response = await get(url).timeout(const Duration(seconds: 30));
      if (response.status.hasError) {
        return Future.error(response.statusText!);
      } else {
        final xml = response.body;
        final xml2json = Xml2Json()..parse(xml);
        final jsonDbs = xml2json.toParker();
        final jsonData = json.decode(jsonDbs);
        if (jsonData["dbs"] != null && jsonData["dbs"].length > 0) {
          return DbsResult.fromJson(jsonData["dbs"]);
        }
      }
    } catch (e) {
      print(e);
    }
  }

  // 오픈예정
  Future<DbsResult?> openNotYet() async {
    try {
      String url =
          "/openApi/restful/pblprfr?service=dbff58b54814479fb5a4e38345f9894d&stdate=$notYetStDate&eddate=$edDate&cpage=1&rows=30&prfstate=01";
      final response = await get(url).timeout(const Duration(seconds: 30));
      if (response.status.hasError) {
        return Future.error(response.statusText!);
      } else {
        final xml = response.body;
        final xml2json = Xml2Json()..parse(xml);
        final jsonDbs = xml2json.toParker();
        final jsonData = json.decode(jsonDbs);
        if (jsonData["dbs"] != null && jsonData["dbs"].length > 0) {
          return DbsResult.fromJson(jsonData["dbs"]);
        }
      }
    } catch (e) {
      print(e);
    }
  }

  // 페스티벌
  Future<DbsResult?> loadFestival() async {
    try {
      String url =
          "/openApi/restful/prffest?service=dbff58b54814479fb5a4e38345f9894d&stdate=$stDate&eddate=$edDate&cpage=1&rows=30&prfstate=01";
      final response = await get(url).timeout(const Duration(seconds: 30));
      if (response.status.hasError) {
        return Future.error(response.statusText!);
      } else {
        final xml = response.body;
        final xml2json = Xml2Json()..parse(xml);
        final jsonDbs = xml2json.toParker();
        final jsonData = json.decode(jsonDbs);
        if (jsonData["dbs"] != null && jsonData["dbs"].length > 0) {
          return DbsResult.fromJson(jsonData["dbs"]);
        }
      }
    } catch (e) {
      print(e);
    }
  }

  // 디테일
  Future<DetailDb?> loadDetail(String? mt20id) async {
    try {
      String url =
          "/openApi/restful/pblprfr/$mt20id?service=dbff58b54814479fb5a4e38345f9894d&newsql=Y";
      final response = await get(url).timeout(const Duration(seconds: 30));

      if (response.status.hasError) {
        return Future.error(response.statusText!);
      } else {
        final xml = response.body;
        final xml2json = Xml2Json()..parse(xml);
        final jsondbs = xml2json.toParker();
        final jsonData = json.decode(jsondbs);
        if (jsonData["dbs"] != null && jsonData["dbs"].length > 0) {
          Map<String, dynamic> data = jsonData["dbs"];
          return DetailDb.fromJson(data['db']);
        }
      }
    } catch (e) {
      print(e);
    }
  }

  // 검색
  Future<DbsResult?> searchLoad(String searchKeyword) async {
    try {
      String url =
          "/openApi/restful/pblprfr?service=dbff58b54814479fb5a4e38345f9894d&stdate=$stDate&eddate=$edDate&cpage=1&rows=30&prfstate=02&shprfnm=$searchKeyword";
      final response = await get(url).timeout(const Duration(seconds: 30));
      if (response.status.hasError) {
        return Future.error(response.statusText!);
      } else {
        final xml = response.body;
        final xml2json = Xml2Json()..parse(xml);
        final jsondbs = xml2json.toParker();
        final jsonData = json.decode(jsondbs);
        if (jsonData["dbs"] != null && jsonData["dbs"].length > 0) {
          return DbsResult.fromJson(jsonData["dbs"]);
        }
      }
    } catch (e) {
      print(e);
    }
  }
}
