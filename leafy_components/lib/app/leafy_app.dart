import 'package:example/app/bloc/app_bloc.dart';
import 'package:example/app/bloc/app_event.dart';
import 'package:example/app/bloc/app_state.dart';
import 'package:example/di/di.dart';
import 'package:example/home/home_screen.dart';
import 'package:example/locale_selector/bloc/locale_cubit.dart';
import 'package:example/theme_selector/bloc/theme_bloc.dart';
import 'package:example/theme_selector/bloc/theme_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:leafy/styles/theme/theme.dart';

class LeafyApp extends StatelessWidget {
  final AppBloc appBloc = getIt.get<AppBloc>();
  final ThemeBloc themeBloc = getIt.get<ThemeBloc>();
  final LocaleCubit localeCubit = getIt.get<LocaleCubit>();

  LeafyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<ThemeBloc, ThemeState>(
          bloc: themeBloc,
          listener: (context, state) {
            appBloc.add(AppRestartEvent(
              themeMode: state.themeMode,
              localeCode: appBloc.state.localeCode,
            ));
          },
        ),
        BlocListener<LocaleCubit, String>(
          bloc: localeCubit,
          listener: (context, state) {
            appBloc.add(AppRestartEvent(
              themeMode: appBloc.state.themeMode,
              localeCode: state,
            ));
          },
        ),
      ],
      child: BlocBuilder<AppBloc, AppState>(
        bloc: appBloc,
        builder: (context, state) {
          return MaterialApp(
            title: 'Leafy',
            theme: theme.light(),
            darkTheme: theme.dark(),
            themeMode: state.themeMode,
            debugShowCheckedModeBanner: false,
            home: const HomeScreen(),
            locale: Locale(state.localeCode),
            localizationsDelegates: AppLocalizations.localizationsDelegates,
            supportedLocales: AppLocalizations.supportedLocales,
          );
        },
      ),
    );
  }
}
