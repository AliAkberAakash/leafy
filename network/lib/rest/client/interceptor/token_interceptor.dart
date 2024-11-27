import 'package:dio/dio.dart';

class TokenInterceptor implements InterceptorsWrapper{
  final Future<String> Function() tokenProvider;

  TokenInterceptor({required this.tokenProvider});

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    return handler.next(err);
  }

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    final token = await tokenProvider();

    if (token.isNotEmpty) {
      options.headers['Authorization'] = 'Bearer $token';
    }

    return handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    return handler.next(response);
  }

}