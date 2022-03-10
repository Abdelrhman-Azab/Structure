import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:structure_app/data/models/zekr.dart';

class AzkarRepository {
  AzkarRepository(this.dio);
  Dio dio;

  Future<List<Zekr>> getAzkar() async {
    List<Zekr> zekrList;
    Response response = await dio.get("muslimKit/json/azkar_sabah.json");
    zekrList = (response.data["content"] as List)
        .map((elemtent) => Zekr.fromJson(elemtent))
        .toList();

    return zekrList;
  }
}
