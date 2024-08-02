import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

abstract class ThemeState extends Equatable {
  abstract final ThemeMode themeMode;
}

class LightThemeState extends ThemeState {
  @override
  List<Object?> get props => [];

  @override
  final ThemeMode themeMode = ThemeMode.light;
}

class DarkThemeState extends ThemeState {
  @override
  List<Object?> get props => [];

  @override
  final ThemeMode themeMode = ThemeMode.dark;
}

class SystemThemeState extends ThemeState {
  @override
  List<Object?> get props => [];

  @override
  final ThemeMode themeMode = ThemeMode.system;
}
