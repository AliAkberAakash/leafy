import 'package:example/components/app_bar_dropdown_menu/app_bar_dropdown_menu_screen.dart';
import 'package:example/components/buttons/buttons_screen.dart';
import 'package:example/components/typography/typography_screen.dart';
import 'package:example/core/model/component_data.dart';
import 'package:example/core/screen/component_screen.dart';
import 'package:example/core/screen/list_screen.dart';
import 'package:example/extensions/extensions.dart';
import 'package:example/locale_selector/widget/locale_changer_widget.dart';
import 'package:example/theme_selector/widget/theme_changer_widget.dart';
import 'package:flutter/material.dart';
import 'package:leafy/styles/util/extensions.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    final localizations = context.localizations;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: theme.colorScheme.primaryContainer,
        title: Text(localizations.home),
        actions: [
          LocaleChangerWidget(),
          ThemeChangerWidget(
            theme: theme,
          ),
        ],
      ),
      body: ListScreen(
        data: [
          ComponentData(
            context.localizations.button,
            const ButtonsScreen(),
          ),
          ComponentData(
            context.localizations.appbarDropdownMenu,
            const AppBarDropdownMenuScreen(),
          ),
          ComponentData(
            context.localizations.typography,
            ComponentScreen(
              title: context.localizations.typography,
              body: const TypographyScreen(),
            ),
          ),
        ],
      ),
    );
  }
}
