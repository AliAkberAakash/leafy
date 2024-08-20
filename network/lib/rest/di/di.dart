import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:network/rest/client/dio_provider.dart';

final getIt = GetIt.I;

void setup() {
  getIt.registerLazySingleton<Dio>(() => DioProvider().createDio());
}