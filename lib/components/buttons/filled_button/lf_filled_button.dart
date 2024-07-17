import 'package:flutter/material.dart';
import 'package:leafy/styles/util/extensions.dart';

class LfFilledButton extends StatelessWidget {
  final String buttonText;
  final void Function()? onPressed;
  final IconData? leftIcon;
  final IconData? rightIcon;

  const LfFilledButton({
    super.key,
    required this.buttonText,
    this.onPressed,
    this.leftIcon,
    this.rightIcon,
  }) : assert(
          !(leftIcon != null && rightIcon != null),
          "You can not add both leftIcon and rightIcon property at the same time",
        );

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final lfExtensions = context.themeExtension;

    return TextButton(
      style: ButtonStyle(
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              lfExtensions.borderRadiusTokens.lfBorderRadiusSmall,
            ),
          ),
        ),
        elevation: WidgetStatePropertyAll(
            lfExtensions.elevationTokens.lfSysElevationLvl0),
        backgroundColor:
            WidgetStatePropertyAll(theme.colorScheme.primaryContainer),
        textStyle: WidgetStatePropertyAll(
          theme.textTheme.labelSmall,
        ),
      ),
      onPressed: onPressed,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (leftIcon != null)
            Icon(
              leftIcon,
              size: lfExtensions.spacingTokens.lfSpacing20,
            ),
          Text(
            buttonText,
          ),
          if (rightIcon != null)
            Icon(
              rightIcon,
              size: lfExtensions.spacingTokens.lfSpacing20,
            )
        ],
      ),
    );
  }
}
