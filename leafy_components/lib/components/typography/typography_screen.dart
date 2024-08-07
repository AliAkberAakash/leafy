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
            style: theme.textTheme.bodySmall,
            textAlign: TextAlign.center,
          ),
          Text(
            context.localizations.helloFromLeafy,
            style: theme.textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
          Text(
            context.localizations.helloFromLeafy,
            style: theme.textTheme.bodyLarge,
            textAlign: TextAlign.center,
          ),
          Text(
            context.localizations.helloFromLeafy,
            style: theme.textTheme.labelSmall,
            textAlign: TextAlign.center,
          ),
          Text(
            context.localizations.helloFromLeafy,
            style: theme.textTheme.labelMedium,
            textAlign: TextAlign.center,
          ),
          Text(
            context.localizations.helloFromLeafy,
            style: theme.textTheme.labelLarge,
            textAlign: TextAlign.center,
          ),
          Text(
            context.localizations.helloFromLeafy,
            style: theme.textTheme.titleSmall,
            textAlign: TextAlign.center,
          ),
          Text(
            context.localizations.helloFromLeafy,
            style: theme.textTheme.titleMedium,
            textAlign: TextAlign.center,
          ),
          Text(
            context.localizations.helloFromLeafy,
            style: theme.textTheme.titleLarge,
            textAlign: TextAlign.center,
          ),
          Text(
            context.localizations.helloFromLeafy,
            style: theme.textTheme.headlineSmall,
            textAlign: TextAlign.center,
          ),
          Text(
            context.localizations.helloFromLeafy,
            style: theme.textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          Text(
            context.localizations.helloFromLeafy,
            style: theme.textTheme.headlineLarge,
            textAlign: TextAlign.center,
          ),
          Text(
            context.localizations.helloFromLeafy,
            style: theme.textTheme.displaySmall,
            textAlign: TextAlign.center,
          ),
          Text(
            context.localizations.helloFromLeafy,
            style: theme.textTheme.displayMedium,
            textAlign: TextAlign.center,
          ),
          Text(
            context.localizations.helloFromLeafy,
            style: theme.textTheme.displayLarge,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );

  }
}
