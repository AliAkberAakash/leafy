import 'package:flutter/material.dart';
import 'package:leafy/styles/util/extensions.dart';

class LfOutlinedButton extends StatelessWidget {
  const LfOutlinedButton({
    super.key,
    required this.label,
    this.onPressed,
    this.leftIcon,
    this.rightIcon,
  }) : assert(
          !(leftIcon != null && rightIcon != null),
          "You can not add both leftIcon and rightIcon property at the same time",
        );

  final String label;
  final void Function()? onPressed;
  final IconData? leftIcon;
  final IconData? rightIcon;

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;

    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        foregroundColor: theme.colorScheme.primary,
        side: BorderSide(
          color: theme.colorScheme.outline,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(
              theme.borderRadiusTokens.lfBorderRadiusMedium,
            ),
          ),
        ),
      ),
      onPressed: onPressed,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (leftIcon != null) ...[
            Icon(
              leftIcon,
              size: theme.iconSizeTokens.xSmall,
            ),
            SizedBox(
              width: theme.spacingTokens.lfSpacing8,
            ),
          ],
          Text(
            label,
          ),
          if (rightIcon != null) ...[
            SizedBox(
              width: theme.spacingTokens.lfSpacing8,
            ),
            Icon(
              rightIcon,
              size: theme.iconSizeTokens.xSmall,
            ),
          ],
        ],
      ),
    );
  }
}
