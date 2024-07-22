import 'package:example/core/screen/component_screen.dart';
import 'package:example/core/screen/screen_widget.dart';
import 'package:flutter/material.dart';
import 'package:leafy/styles/util/extensions.dart';
import 'package:leafy/components/buttons/filled_button/lf_filled_button.dart';

class FilledButtonScreen extends StatelessWidget with ScreenWidget {
  final String title;

  const FilledButtonScreen({
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
            LfFilledButton(
              label: "Leafy Filled Button",
              onPressed: () {},
            ),
            SizedBox(
              height: theme.spacingTokens.lfSpacing24,
            ),
            const LfFilledButton(
              label: "Leafy Filled Button Disabled",
            ),
            SizedBox(
              height: theme.spacingTokens.lfSpacing24,
            ),
            LfFilledButton(
              leftIcon: Icons.add,
              label: "Leafy Filled Button with left Icon",
              onPressed: () {},
            ),
            SizedBox(
              height: theme.spacingTokens.lfSpacing24,
            ),
            LfFilledButton(
              rightIcon: Icons.add,
              label: "Leafy Filled Button with right Icon",
              onPressed: () {},
            ),
            SizedBox(
              height: theme.spacingTokens.lfSpacing24,
            ),
            MaterialButton(
              elevation: theme.elevationTokens.lfSysElevationLvl2,
              color: theme.colorScheme.funkyContainer,
              textColor: theme.colorScheme.funkyOnContainer,
              child: Padding(
                padding: EdgeInsets.all(theme.spacingTokens.lfSpacing8),
                child: Text(
                  "Funky Colored Button",
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
