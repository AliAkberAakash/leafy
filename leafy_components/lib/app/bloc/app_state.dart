import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

abstract class AppState extends Equatable {
  abstract final ThemeMode themeMode;
  abstract final String localeCode;
}

class AppNeutralState extends AppState {
  @override
  List<Object?> get props => [
        themeMode,
        localeCode,
      ];

  @override
  String get localeCode => "en";

  @override
  ThemeMode get themeMode => ThemeMode.system;
}

class AppRestartState extends AppState {
  final ThemeMode _themeMode;
  final String _localeCode;

  AppRestartState(
    this._themeMode,
    this._localeCode,
  );

  @override
  List<Object?> get props => [
        _themeMode,
        _localeCode,
      ];

  @override
  String get localeCode => _localeCode;

  @override
  ThemeMode get themeMode => _themeMode;
}
