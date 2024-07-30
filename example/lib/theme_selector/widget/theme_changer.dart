import 'package:example/core/widget/appbar_menu/appbar_icon_menu.dart';
import 'package:example/core/widget/appbar_menu/appbar_menu_model.dart';
import 'package:example/di/di.dart';
import 'package:example/theme_selector/bloc/theme_bloc.dart';
import 'package:example/theme_selector/bloc/theme_event.dart';
import 'package:flutter/material.dart';
import 'package:leafy/components/icons/leafy_icons.dart';
import 'package:leafy/styles/leafy_extension.dart';

class ThemeChanger extends StatelessWidget {
  final LeafyExtension theme;

  ThemeChanger({
    super.key,
    required this.theme,
  });

  final themeBloc = getIt.get<ThemeBloc>();

  @override
  Widget build(BuildContext context) {
    return AppBarMenu(
      menuData: [
        AppBarMenuModel(
          "Light",
          () {
            themeBloc.add(LightThemeEvent());
          },
          iconData: LeafyIcons.sun,
        ),
        AppBarMenuModel(
          "Dark",
          () {
            themeBloc.add(DarkThemeEvent());
          },
          iconData: LeafyIcons.moon,
        ),
        AppBarMenuModel(
          "System",
          () {
            themeBloc.add(SystemThemeEvent());
          },
          iconData: LeafyIcons.server,
        ),
      ],
      menuIcon: Icons.more_vert,
    );
  }
}
