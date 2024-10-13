import 'package:flutter/material.dart';
import 'package:leafy/styles/util/extensions.dart';

class DrawerItemWidget extends StatelessWidget {
  final IconData icon;
  final String text;
  final void Function() onTap;

  const DrawerItemWidget({
    super.key,
    required this.icon,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {

    final theme = context.theme;

    return ListTile(
      leading: Icon(
        icon,
        size: theme.iconSizeTokens.small,
      ),
      title: Text(
        text,
        style: theme.textTheme.bodyMedium,
      ),
      onTap: onTap,
    );
  }
}
