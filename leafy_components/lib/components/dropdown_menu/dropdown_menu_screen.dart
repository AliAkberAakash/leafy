import 'package:example/core/screen/screen_widget.dart';
import 'package:example/extensions/extensions.dart';
import 'package:flutter/material.dart';
import 'package:leafy/components/icons/leafy_icons.dart';
import 'package:leafy/components/lf_dropdown_menu/lf_drop_down_icon_menu/lf_drop_down_icon_menu_widget.dart';
import 'package:leafy/components/lf_dropdown_menu/lf_drop_down_icon_menu/lf_drop_down_menu_model.dart';
import 'package:leafy/styles/util/extensions.dart';

class DropdownMenuScreen extends StatelessWidget with ScreenWidget {
  const DropdownMenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          context.localizations.dropdownMenu,
        ),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Without Icon",
              style: theme.textTheme.labelSmall,
            ),
            SizedBox(
              height: theme.spacingTokens.lfSpacing10,
            ),
            LfDropDownIconMenuWidget(
              menuData: [
                LfDropDownMenuModel(
                  title: 'Menu Item 1',
                  onClick: () {},
                ),
                LfDropDownMenuModel(
                  title: 'Menu Item 2',
                  onClick: () {},
                ),
                LfDropDownMenuModel(
                  title: 'Menu Item 3',
                  onClick: () {},
                ),
              ],
              menuIcon: LeafyIcons.down,
            ),
            SizedBox(
              height: theme.spacingTokens.lfSpacing20,
            ),
            Text(
              "With Icon",
              style: theme.textTheme.labelSmall,
            ),
            SizedBox(
              height: theme.spacingTokens.lfSpacing10,
            ),
            LfDropDownIconMenuWidget(
              menuData: [
                LfDropDownMenuModel(
                  title: 'Menu Item 1',
                  onClick: () {},
                  iconData: LeafyIcons.leaf,
                ),
                LfDropDownMenuModel(
                  title: 'Menu Item 2',
                  onClick: () {},
                  iconData: LeafyIcons.brush,
                ),
                LfDropDownMenuModel(
                  title: 'Menu Item 3',
                  onClick: () {},
                  iconData: LeafyIcons.apple,
                ),
              ],
              menuIcon: LeafyIcons.menu,
            ),
          ],
        ),
      ),
    );
  }
}
