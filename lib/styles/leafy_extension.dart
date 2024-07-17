import "package:flutter/material.dart";
import "package:leafy/styles/theme/theme.dart";
import "package:leafy/tokens/border_radius/border_radius_tokens.dart";
import "package:leafy/tokens/border_width/border_width_tokens.dart";
import "package:leafy/tokens/elevation/elevation_tokens.dart";
import "package:leafy/tokens/opacity/opacity_tokens.dart";
import "package:leafy/tokens/spacing/spacing_tokens.dart";

class LeafyExtension extends ThemeExtension<LeafyExtension> {
  final LeafyScheme colorScheme;
  final TextTheme textTheme;
  late final ElevationTokens elevationTokens;
  late final BorderRadiusTokens borderRadiusTokens;
  late final BorderWidthTokens borderWidthTokens;
  late final OpacityTokens opacityTokens;
  late final SpacingTokens spacingTokens;

  LeafyExtension({
    required this.colorScheme,
    required this.textTheme,
  }) {
    elevationTokens = ElevationTokens();
    borderRadiusTokens = BorderRadiusTokens();
    borderWidthTokens = BorderWidthTokens();
    opacityTokens = OpacityTokens();
    spacingTokens = SpacingTokens();
  }

  @override
  LeafyExtension copyWith({
    LeafyScheme? colorScheme,
  }) {
    return LeafyExtension(
      textTheme: textTheme,
      colorScheme: colorScheme ?? this.colorScheme,
    );
  }

  @override
  LeafyExtension lerp(
      covariant ThemeExtension<LeafyExtension>? other, double t) {
    if (other is! LeafyExtension) {
      return this;
    }

    return LeafyExtension(
      textTheme: textTheme,
      colorScheme: colorScheme.lerp(other.colorScheme, t),
    );
  }
}
