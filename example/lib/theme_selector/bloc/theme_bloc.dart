import 'dart:async';

import 'package:example/theme_selector/bloc/theme_event.dart';
import 'package:example/theme_selector/bloc/theme_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc() : super(LightThemeState()) {
    on<LightThemeEvent>(_mapLightThemeEventToState);
    on<DarkThemeEvent>(_mapDarkThemeEventToState);
    on<SystemThemeEvent>(_mapSystemThemeEventToState);
  }

  FutureOr<void> _mapLightThemeEventToState(
      LightThemeEvent event, Emitter<ThemeState> emit) {
    emit(LightThemeState());
  }

  FutureOr<void> _mapDarkThemeEventToState(
      DarkThemeEvent event, Emitter<ThemeState> emit) {
    emit(DarkThemeState());
  }

  FutureOr<void> _mapSystemThemeEventToState(
      SystemThemeEvent event, Emitter<ThemeState> emit) {
    emit(SystemThemeState());
  }
}
