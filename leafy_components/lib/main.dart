import 'package:example/home/home_screen.dart';
import 'package:example/locale_selector/bloc/locale_cubit.dart';
import 'package:example/theme_selector/bloc/theme_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
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
    return MultiBlocProvider(
      providers: [
        BlocProvider<ThemeBloc>(
          create: (context) => getIt<ThemeBloc>(),
        ),
        BlocProvider<LocaleCubit>(
          create: (context) => getIt<LocaleCubit>(),
        ),
      ],
      child: Builder(
        builder: (context) {
          final themeState = context.watch<ThemeBloc>().state;
          final localeCode = context.watch<LocaleCubit>().state;

          return MaterialApp(
            title: 'Leafy',
            theme: theme.light(),
            darkTheme: theme.dark(),
            themeMode: themeState.themeMode,
            debugShowCheckedModeBanner: false,
            home: const HomeScreen(),
            locale: Locale(localeCode),
            localizationsDelegates: AppLocalizations.localizationsDelegates,
            supportedLocales: AppLocalizations.supportedLocales,
          );
        },
      ),
    );
  }
}
