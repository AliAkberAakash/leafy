import 'package:example/core/screen/screen_widget.dart';
import 'package:example/extensions/extensions.dart';
import 'package:flutter/material.dart';
import 'package:leafy/styles/util/extensions.dart';

class TypographyScreen extends StatelessWidget with ScreenWidget {
  const TypographyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;

    return Center(
      child: ListView(
        children: [
          Text(
            context.localizations.helloFromLeafy,
            style: theme.textTheme.displayLarge,
          ),
          Text(
            context.localizations.helloFromLeafy,
            style: theme.textTheme.displayMedium,
          ),
          Text(
            context.localizations.helloFromLeafy,
            style: theme.textTheme.displaySmall,
          ),
          Text(
            context.localizations.helloFromLeafy,
            style: theme.textTheme.headlineLarge,
          ),
          Text(
            context.localizations.helloFromLeafy,
            style: theme.textTheme.headlineMedium,
          ),
          Text(
            context.localizations.helloFromLeafy,
            style: theme.textTheme.headlineSmall,
          ),
          Text(
            context.localizations.helloFromLeafy,
            style: theme.textTheme.titleLarge,
          ),
          Text(
            context.localizations.helloFromLeafy,
            style: theme.textTheme.titleMedium,
          ),
          Text(
            context.localizations.helloFromLeafy,
            style: theme.textTheme.titleSmall,
          ),
          Text(
            context.localizations.helloFromLeafy,
            style: theme.textTheme.labelLarge,
          ),
          Text(
            context.localizations.helloFromLeafy,
            style: theme.textTheme.labelMedium,
          ),
          Text(
            context.localizations.helloFromLeafy,
            style: theme.textTheme.labelSmall,
          ),
          Text(
            context.localizations.helloFromLeafy,
            style: theme.textTheme.bodyLarge,
          ),
          Text(
            context.localizations.helloFromLeafy,
            style: theme.textTheme.bodyMedium,
          ),
          Text(
            context.localizations.helloFromLeafy,
            style: theme.textTheme.bodySmall,
          ),
        ],
      ),
    );
  }
}
