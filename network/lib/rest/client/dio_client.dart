import 'package:dio/dio.dart';
import 'package:network/rest/client/rest_client.dart';
import 'package:network/rest/di/di.dart';

class DioClient implements RestClient{

  final _dio = getIt.get<Dio>();

  @override
  Future<dynamic> get(String url, {Map<String, dynamic>? queryParameters}) async {
    try {
      final response = await _dio.get(url, queryParameters: queryParameters);
      return response.data;
    } on DioException catch (e) {
      return _handleError(e);
    }
  }

  @override
  Future<dynamic> post(String url, {data, Map<String, dynamic>? queryParameters}) async {
    try {
      final response = await _dio.post(url, data: data, queryParameters: queryParameters);
      return response.data;
    } on DioException catch (e) {
      return _handleError(e);
    }
  }

  @override
  Future<dynamic> put(String url, {data, Map<String, dynamic>? queryParameters}) async {
    try {
      final response = await _dio.put(url, data: data, queryParameters: queryParameters);
      return response.data;
    } on DioException catch (e) {
      return _handleError(e);
    }
  }

  @override
  Future<dynamic> delete(String url, {Map<String, dynamic>? queryParameters}) async {
    try {
      final response = await _dio.delete(url, queryParameters: queryParameters);
      return response.data;
    } on DioException catch (e) {
      return _handleError(e);
    }
  }

  // Error handling function
  dynamic _handleError(DioException e) {
    // TODO handle exception
  }
  
}