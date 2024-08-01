import 'package:example/home/home_screen.dart';
import 'package:example/theme_selector/bloc/theme_bloc.dart';
import 'package:example/theme_selector/bloc/theme_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:leafy/styles/theme/theme.dart';

import 'di/di.dart';

void main() {
  setup();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, ThemeState>(
        bloc: getIt.get(),
        builder: (ctx, state) {
          return MaterialApp(
            title: 'Leafy',
            theme: theme.light(),
            darkTheme: theme.dark(),
            themeMode: _getThemeMode(state),
            home: HomeScreen(),
            debugShowCheckedModeBanner: false,
          );
        });
  }

  ThemeMode _getThemeMode(ThemeState state) {
    if (state is LightThemeState) {
      return ThemeMode.light;
    }
    if (state is DarkThemeState) {
      return ThemeMode.dark;
    }

    return ThemeMode.system;
  }
}
