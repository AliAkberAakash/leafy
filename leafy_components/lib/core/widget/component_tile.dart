import 'package:flutter/material.dart';
import 'package:leafy/styles/util/extensions.dart';

class ComponentTile extends StatelessWidget {
  final String title;
  final VoidCallback onTap;

  const ComponentTile({
    super.key,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;

    return ListTile(
      title: Text(
        title,
        style: theme.textTheme.labelMedium,
      ),
      onTap: onTap,
    );
  }
}
