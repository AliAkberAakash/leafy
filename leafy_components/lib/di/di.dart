import 'package:example/theme_selector/bloc/theme_bloc.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.I;

void setup() {
  getIt.registerLazySingleton<ThemeBloc>(() => ThemeBloc());
}
