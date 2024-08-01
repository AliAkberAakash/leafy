import 'package:example/core/widget/appbar_menu/appbar_menu_model.dart';
import 'package:flutter/material.dart';
import 'package:leafy/styles/util/extensions.dart';

class AppBarMenu extends StatelessWidget {
  final List<AppBarMenuModel> menuData;
  final IconData menuIcon;

  const AppBarMenu({
    super.key,
    required this.menuData,
    required this.menuIcon,
  });

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;

    return MenuAnchor(
      menuChildren: [
        for (var data in menuData)
          MenuItemButton(
            onPressed: data.onClick,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                if (data.iconData != null) ...[
                  Icon(
                    data.iconData,
                    size: theme.iconSizeTokens.xSmall,
                  ),
                  SizedBox(
                    width: theme.spacingTokens.lfSpacing8,
                  ),
                ],
                Text(
                  data.title,
                  style: theme.textTheme.labelSmall,
                ),
              ],
            ),
          ),
      ],
      builder: (context, MenuController controller, _) {
        return IconButton(
          onPressed: () {
            if (controller.isOpen) {
              controller.close();
            } else {
              controller.open();
            }
          },
          icon: Icon(
            menuIcon,
            size: theme.iconSizeTokens.xSmall,
          ),
        );
      },
    );
  }
}
