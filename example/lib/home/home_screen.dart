import 'package:example/components/buttons/buttons_screen.dart';
import 'package:example/core/model/component_data.dart';
import 'package:example/core/screen/component_screen.dart';
import 'package:example/core/screen/list_screen.dart';
import 'package:example/theme_selector/widget/theme_changer.dart';
import 'package:flutter/material.dart';
import 'package:leafy/styles/util/extensions.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: theme.colorScheme.primaryContainer,
        title: const Text("Home Screen"),
        actions: [
          ThemeChanger(
            theme: theme,
          ),
        ],
      ),
      body: ListScreen(
        data: [
          ComponentData(
            "AppBars",
            const ComponentScreen(
              title: "AppBars",
              body: Placeholder(),
            ),
          ),
          ComponentData(
            "Buttons",
            const ButtonsScreen(),
          ),
        ],
      ),
    );
  }
}
