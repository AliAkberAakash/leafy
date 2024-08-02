import 'package:flutter/material.dart';
import 'package:leafy/components/lf_dropdown_menu/lf_drop_down_icon_menu/lf_drop_down_menu_model.dart';
import 'package:leafy/styles/util/extensions.dart';

class LfDropDownIconMenuWidget extends StatelessWidget {
  final List<LfDropDownMenuModel> menuData;
  final IconData menuIcon;

  const LfDropDownIconMenuWidget({
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
