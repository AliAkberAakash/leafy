import 'package:equatable/equatable.dart';

abstract class ThemeState extends Equatable {}

class LightThemeState extends ThemeState {
  @override
  List<Object?> get props => [];
}

class DarkThemeState extends ThemeState {
  @override
  List<Object?> get props => [];
}

class SystemThemeState extends ThemeState {
  @override
  List<Object?> get props => [];
}