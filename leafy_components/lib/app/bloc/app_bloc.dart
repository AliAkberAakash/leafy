import 'dart:async';

import 'package:example/app/bloc/app_event.dart';
import 'package:example/app/bloc/app_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  AppBloc() : super(AppNeutralState()) {
    on<AppRestartEvent>(_onAppRestartEventHandler);
  }

  FutureOr<void> _onAppRestartEventHandler(
      AppRestartEvent event, Emitter<AppState> emit) {
    emit(
      AppRestartState(
        event.themeMode,
        event.localeCode,
      ),
    );
  }
}
