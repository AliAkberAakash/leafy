import 'package:example/app/bloc/app_bloc.dart';
import 'package:example/locale_selector/bloc/locale_cubit.dart';
import 'package:example/theme_selector/bloc/theme_bloc.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.I;

void setup() {
  getIt.registerLazySingleton<ThemeBloc>(() => ThemeBloc());
  getIt.registerLazySingleton<LocaleCubit>(() => LocaleCubit());
  getIt.registerLazySingleton<AppBloc>(() => AppBloc());
}
