import 'package:dio/dio.dart';

class DioProvider {
  Dio createDio() {
    Dio dio = Dio();

    dio.options.baseUrl = "https://api.example.com";
    dio.options.connectTimeout = const Duration(seconds: 10);
    dio.options.receiveTimeout = const Duration(seconds: 10);
    dio.options.headers = {
      'Content-Type': 'application/json',
    };
    //TODO add interceptors
    return dio;
  }
}
