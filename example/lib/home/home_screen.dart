import 'package:example/components/buttons/buttons_screen.dart';
import 'package:example/core/model/component_data.dart';
import 'package:example/core/screen/component_screen.dart';
import 'package:example/core/screen/list_screen.dart';
import 'package:example/core/widget/appbar_menu/appbar_icon_menu.dart';
import 'package:example/core/widget/appbar_menu/appbar_menu_model.dart';
import 'package:flutter/material.dart';
import 'package:leafy/components/icons/leafy_icons.dart';
import 'package:leafy/styles/leafy_extension.dart';
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
          AppBarMenu(
            menuData: _getMenuData(theme),
            menuIcon: Icons.more_vert,
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

  List<AppBarMenuModel> _getMenuData(LeafyExtension theme) {
    return [
      AppBarMenuModel(
        "Light",
        () {},
        iconData: LeafyIcons.sun,
      ),
      AppBarMenuModel(
        "Dark",
        () {},
        iconData: LeafyIcons.moon,
      ),
      AppBarMenuModel(
        "System",
        () {},
        iconData: LeafyIcons.server,
      ),
    ];
  }
}
