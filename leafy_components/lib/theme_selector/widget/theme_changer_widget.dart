import 'package:example/di/di.dart';
import 'package:example/extensions/extensions.dart';
import 'package:example/theme_selector/bloc/theme_bloc.dart';
import 'package:example/theme_selector/bloc/theme_event.dart';
import 'package:flutter/material.dart';
import 'package:leafy/components/icons/leafy_icons.dart';
import 'package:leafy/components/lf_dropdown_menu/leafy_appbar_menu/leafy_app_bar_icon_menu.dart';
import 'package:leafy/components/lf_dropdown_menu/leafy_appbar_menu/leafy_app_bar_icon_menu_model.dart';
import 'package:leafy/styles/leafy_extension.dart';

class ThemeChangerWidget extends StatelessWidget {
  final LeafyExtension theme;

  ThemeChangerWidget({
    super.key,
    required this.theme,
  });

  final themeBloc = getIt.get<ThemeBloc>();

  @override
  Widget build(BuildContext context) {
    return LeafyAppBarIconMenu(
      menuData: [
        LeafyAppBarIconMenuModel(
          title: context.localizations.light,
          onClick: () {
            themeBloc.add(LightThemeEvent());
          },
          iconData: LeafyIcons.sun,
        ),
        LeafyAppBarIconMenuModel(
          title: context.localizations.dark,
          onClick: () {
            themeBloc.add(DarkThemeEvent());
          },
          iconData: LeafyIcons.moon,
        ),
        LeafyAppBarIconMenuModel(
          title: context.localizations.system,
          onClick: () {
            themeBloc.add(SystemThemeEvent());
          },
          iconData: LeafyIcons.server,
        ),
      ],
      menuIcon: Icons.more_vert,
    );
  }
}
