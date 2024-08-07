import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

abstract class AppEvent extends Equatable {}

class AppRestartEvent extends AppEvent {

  final ThemeMode themeMode;
  final String localeCode;

  AppRestartEvent({
    required this.themeMode,
    required this.localeCode,
  });

  @override
  List<Object?> get props => [];
}
