import 'package:example/core/screen/component_screen.dart';
import 'package:example/core/screen/screen_widget.dart';
import 'package:flutter/material.dart';
import 'package:leafy/styles/util/extensions.dart';
import 'package:leafy/components/buttons/outlined_button/lf_outlined_button.dart';


class OutlinedButtonScreen extends StatelessWidget with ScreenWidget {
  final String title;

  const OutlinedButtonScreen({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;

    return ComponentScreen(
      title: title,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            LfOutlinedButton(
              label: "Leafy Filled Button",
              onPressed: () {},
            ),
            SizedBox(
              height: theme.spacingTokens.lfSpacing24,
            ),
            const LfOutlinedButton(
              label: "Leafy Filled Button Disabled",
            ),
            SizedBox(
              height: theme.spacingTokens.lfSpacing24,
            ),
            LfOutlinedButton(
              leftIcon: Icons.add,
              label: "Leafy Filled Button with left Icon",
              onPressed: () {},
            ),
            SizedBox(
              height: theme.spacingTokens.lfSpacing24,
            ),
            LfOutlinedButton(
              rightIcon: Icons.add,
              label: "Leafy Filled Button with right Icon",
              onPressed: () {},
            ),
            SizedBox(
              height: theme.spacingTokens.lfSpacing24,
            ),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                foregroundColor: theme.colorScheme.funkyContainer,
              ),
              child: Padding(
                padding: EdgeInsets.all(theme.spacingTokens.lfSpacing8),
                child: Text(
                  "Custom Button",
                  style: Theme.of(context).textTheme.labelSmall,
                ),
              ),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
