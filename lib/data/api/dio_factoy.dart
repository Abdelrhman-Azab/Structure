import 'package:dio/dio.dart';

class DioFactory {
  static Dio getInistance(String baseUrl) {
    print("GIT INIT");
    var dio = Dio();
    dio.options = BaseOptions(baseUrl: baseUrl);
    return dio;
  }
}
