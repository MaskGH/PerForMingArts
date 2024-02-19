// ignore_for_file: body_might_complete_normally_nullable

import 'dart:convert';

import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:musical/k_models/model_export.dart';
import 'package:xml2json/xml2json.dart';

class CategoryRepository extends GetConnect {
  static CategoryRepository get to => Get.find();
  var toDayDate = DateFormat('yyyyMMdd')
      .format(DateTime.now().subtract(const Duration(days: 1)));
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

  // 장르별 순위
  Future<Boxofs?> loadNumberBest() async {
    try {
      String url =
          "/openApi/restful/boxoffice?service=dbff58b54814479fb5a4e38345f9894d&ststype=day&date=$toDayDate";
      final response = await get(url).timeout(const Duration(seconds: 30));
      if (response.status.hasError) {
        return Future.error(response.statusText!);
      } else {
        final xml = response.body;
        final xml2json = Xml2Json()..parse(xml);
        final jsondbs = xml2json.toParker();
        final jsonData = json.decode(jsondbs);
        if (jsonData["boxofs"] != null && jsonData["boxofs"].length > 0) {
          return Boxofs.fromJson(jsonData["boxofs"]);
        }
      }
    } catch (e) {
      print(e);
    }
  }

  // 장르별 뮤지컬
  Future<Boxofs?> loadMusicalBest() async {
    try {
      String url =
          "/openApi/restful/boxoffice?service=dbff58b54814479fb5a4e38345f9894d&ststype=week&date=$toDayDate&catecode=GGGA";
      final response = await get(url).timeout(const Duration(seconds: 30));
      if (response.status.hasError) {
        return Future.error(response.statusText!);
      } else {
        final xml = response.body;
        final xml2json = Xml2Json()..parse(xml);
        final jsondbs = xml2json.toParker();
        final jsonData = json.decode(jsondbs);
        if (jsonData["boxofs"] != null && jsonData["boxofs"].length > 0) {
          return Boxofs.fromJson(jsonData["boxofs"]);
        }
      }
    } catch (e) {
      print(e);
    }
  }

  // 장르별 연극
  Future<Boxofs?> loadTheaterBest() async {
    try {
      String url =
          "/openApi/restful/boxoffice?service=dbff58b54814479fb5a4e38345f9894d&ststype=week&date=$toDayDate&catecode=AAAA";
      final response = await get(url).timeout(const Duration(seconds: 30));
      if (response.status.hasError) {
        return Future.error(response.statusText!);
      } else {
        final xml = response.body;
        final xml2json = Xml2Json()..parse(xml);
        final jsondbs = xml2json.toParker();
        final jsonData = json.decode(jsondbs);
        if (jsonData["boxofs"] != null && jsonData["boxofs"].length > 0) {
          return Boxofs.fromJson(jsonData["boxofs"]);
        }
      }
    } catch (e) {
      print(e);
    }
  }

  // 장르별 클래식
  Future<Boxofs?> loadClassicBest() async {
    try {
      String url =
          "/openApi/restful/boxoffice?service=dbff58b54814479fb5a4e38345f9894d&ststype=week&date=$toDayDate&catecode=CCCA";
      final response = await get(url).timeout(const Duration(seconds: 30));
      if (response.status.hasError) {
        return Future.error(response.statusText!);
      } else {
        final xml = response.body;
        final xml2json = Xml2Json()..parse(xml);
        final jsondbs = xml2json.toParker();
        final jsonData = json.decode(jsondbs);
        if (jsonData["boxofs"] != null && jsonData["boxofs"].length > 0) {
          return Boxofs.fromJson(jsonData["boxofs"]);
        }
      }
    } catch (e) {
      print(e);
    }
  }

  // 장르별 서커스/마술
  Future<Boxofs?> loadMagic() async {
    try {
      String url =
          "/openApi/restful/boxoffice?service=dbff58b54814479fb5a4e38345f9894d&ststype=week&date=$toDayDate&catecode=EEEB";
      final response = await get(url).timeout(const Duration(seconds: 30));
      if (response.status.hasError) {
        return Future.error(response.statusText!);
      } else {
        final xml = response.body;
        final xml2json = Xml2Json()..parse(xml);
        final jsondbs = xml2json.toParker();
        final jsonData = json.decode(jsondbs);
        if (jsonData["boxofs"] != null && jsonData["boxofs"].length > 0) {
          return Boxofs.fromJson(jsonData["boxofs"]);
        }
      }
    } catch (e) {
      print(e);
    }
  }

  // 장르별 무용
  Future<Boxofs?> loadDanceBest() async {
    try {
      String url =
          "/openApi/restful/boxoffice?service=dbff58b54814479fb5a4e38345f9894d&ststype=week&date=$toDayDate&catecode=BBBC";
      final response = await get(url).timeout(const Duration(seconds: 30));
      if (response.status.hasError) {
        return Future.error(response.statusText!);
      } else {
        final xml = response.body;
        final xml2json = Xml2Json()..parse(xml);
        final jsondbs = xml2json.toParker();
        final jsonData = json.decode(jsondbs);
        if (jsonData["boxofs"] != null && jsonData["boxofs"].length > 0) {
          return Boxofs.fromJson(jsonData["boxofs"]);
        }
      }
    } catch (e) {
      print(e);
    }
  }

  // 장르별 한국클래식
  Future<Boxofs?> loadKoreaClassicBest() async {
    try {
      String url =
          "/openApi/restful/boxoffice?service=dbff58b54814479fb5a4e38345f9894d&ststype=week&date=$toDayDate&catecode=CCCC";
      final response = await get(url).timeout(const Duration(seconds: 30));
      if (response.status.hasError) {
        return Future.error(response.statusText!);
      } else {
        final xml = response.body;
        final xml2json = Xml2Json()..parse(xml);
        final jsondbs = xml2json.toParker();
        final jsonData = json.decode(jsondbs);
        if (jsonData["boxofs"] != null && jsonData["boxofs"].length > 0) {
          return Boxofs.fromJson(jsonData["boxofs"]);
        }
      }
    } catch (e) {
      print(e);
    }
  }

  // 장르별 아동
  Future<Boxofs?> loadKidBest() async {
    try {
      String url =
          "/openApi/restful/boxoffice?service=dbff58b54814479fb5a4e38345f9894d&ststype=week&date=$toDayDate&catecode=KID";
      final response = await get(url).timeout(const Duration(seconds: 30));
      if (response.status.hasError) {
        return Future.error(response.statusText!);
      } else {
        final xml = response.body;
        final xml2json = Xml2Json()..parse(xml);
        final jsondbs = xml2json.toParker();
        final jsonData = json.decode(jsondbs);
        if (jsonData["boxofs"] != null && jsonData["boxofs"].length > 0) {
          return Boxofs.fromJson(jsonData["boxofs"]);
        }
      }
    } catch (e) {
      print(e);
    }
  }

  // 장르별 오픈런
  Future<Boxofs?> loadOpenRunBest() async {
    try {
      String url =
          "/openApi/restful/boxoffice?service=dbff58b54814479fb5a4e38345f9894d&ststype=week&date=$toDayDate&catecode=OPEN";
      final response = await get(url).timeout(const Duration(seconds: 30));
      if (response.status.hasError) {
        return Future.error(response.statusText!);
      } else {
        final xml = response.body;
        final xml2json = Xml2Json()..parse(xml);
        final jsondbs = xml2json.toParker();
        final jsonData = json.decode(jsondbs);
        if (jsonData["boxofs"] != null && jsonData["boxofs"].length > 0) {
          return Boxofs.fromJson(jsonData["boxofs"]);
        }
      }
    } catch (e) {
      print(e);
    }
  }

  // // 뮤지컬
  // Future<DbsResult?> loadMusicals() async {
  //   try {
  //     String url =
  //         "/openApi/restful/pblprfr?service=dbff58b54814479fb5a4e38345f9894d&stdate=$stDate&eddate=$edDate&cpage=1&rows=100&shcate=AAAB&prfstate=02";
  //     final response = await get(url).timeout(const Duration(seconds: 30));
  //     if (response.status.hasError) {
  //       return Future.error(response.statusText!);
  //     } else {
  //       final xml = response.body;
  //       final xml2json = Xml2Json()..parse(xml);
  //       final jsondbs = xml2json.toParker();
  //       final jsonData = json.decode(jsondbs);
  //       if (jsonData["dbs"] != null && jsonData["dbs"].length > 0) {
  //         return DbsResult.fromJson(jsonData["dbs"]);
  //       }
  //     }
  //   } catch (e) {
  //     print(e);
  //   }
  // }

  // // 연극
  // Future<DbsResult?> loadTheater() async {
  //   try {
  //     String url =
  //         "/openApi/restful/pblprfr?service=dbff58b54814479fb5a4e38345f9894d&stdate=$stDate&eddate=$edDate&cpage=1&rows=30&shcate=AAAA&prfstate=02";
  //     final response = await get(url).timeout(const Duration(seconds: 30));
  //     if (response.status.hasError) {
  //       return Future.error(response.statusText!);
  //     } else {
  //       final xml = response.body;
  //       final xml2json = Xml2Json()..parse(xml);
  //       final jsondbs = xml2json.toParker();
  //       final jsonData = json.decode(jsondbs);
  //       if (jsonData["dbs"] != null && jsonData["dbs"].length > 0) {
  //         return DbsResult.fromJson(jsonData["dbs"]);
  //       }
  //     }
  //   } catch (e) {
  //     print(e);
  //   }
  // }
}
