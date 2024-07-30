import 'package:equatable/equatable.dart';

abstract class ThemeEvent extends Equatable {}

class LightThemeEvent extends ThemeEvent {
  @override
  List<Object?> get props => [];
}

class DarkThemeEvent extends ThemeEvent {
  @override
  List<Object?> get props => [];
}

class SystemThemeEvent extends ThemeEvent {
  @override
  List<Object?> get props => [];
}