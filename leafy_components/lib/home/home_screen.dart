import 'package:example/components/appbar/appbar_screen.dart';
import 'package:example/components/buttons/buttons_screen.dart';
import 'package:example/components/dropdown_menu/dropdown_menu_screen.dart';
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
            context.localizations.appbar,
            ComponentScreen(
              title: context.localizations.appbar,
              body: AppbarScreen(),
            ),
          ),
          ComponentData(
            context.localizations.button,
            const ButtonsScreen(),
          ),
          ComponentData(
            context.localizations.dropdownMenu,
            const DropdownMenuScreen(),
          ),
        ],
      ),
    );
  }
}
