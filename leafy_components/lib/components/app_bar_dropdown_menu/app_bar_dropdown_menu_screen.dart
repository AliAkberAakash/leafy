import 'package:example/core/screen/screen_widget.dart';
import 'package:example/extensions/extensions.dart';
import 'package:flutter/material.dart';
import 'package:leafy/components/icons/leafy_icons.dart';
import 'package:leafy/components/lf_dropdown_menu/leafy_appbar_menu/leafy_app_bar_icon_menu.dart';
import 'package:leafy/components/lf_dropdown_menu/leafy_appbar_menu/leafy_app_bar_icon_menu_model.dart';
import 'package:leafy/styles/util/extensions.dart';

const one = 1;
const two = 2;
const three = 3;

class AppBarDropdownMenuScreen extends StatelessWidget with ScreenWidget {
  const AppBarDropdownMenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          context.localizations.appbarDropdownMenu,
        ),
      ),
      body: Column(
        children: [
          AppBar(
            leading: const SizedBox(),
            backgroundColor: theme.colorScheme.primaryContainer,
            actions: [
              LeafyAppBarIconMenu(
                menuData: [
                  LeafyAppBarIconMenuModel(
                    title: context.localizations.menuItem(one),
                    onClick: () {},
                  ),
                  LeafyAppBarIconMenuModel(
                    title: context.localizations.menuItem(two),
                    onClick: () {},
                  ),
                  LeafyAppBarIconMenuModel(
                    title: context.localizations.menuItem(three),
                    onClick: () {},
                  ),
                ],
                menuIcon: LeafyIcons.bookmark,
              ),
              LeafyAppBarIconMenu(
                menuData: [
                  LeafyAppBarIconMenuModel(
                    title: context.localizations.menuItem(one),
                    onClick: () {},
                    iconData: LeafyIcons.leaf,
                  ),
                  LeafyAppBarIconMenuModel(
                    title: context.localizations.menuItem(two),
                    onClick: () {},
                    iconData: LeafyIcons.brush,
                  ),
                  LeafyAppBarIconMenuModel(
                    title: context.localizations.menuItem(three),
                    onClick: () {},
                    iconData: LeafyIcons.apple,
                  ),
                ],
                menuIcon: LeafyIcons.menu,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
