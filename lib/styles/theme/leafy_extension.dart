import "package:flutter/material.dart";
import "package:leafy/tokens/border_radius/border_radius_tokens.dart";
import "package:leafy/tokens/border_width/border_width_tokens.dart";
import "package:leafy/tokens/color/custom_color_extension.dart";
import "package:leafy/tokens/elevation/elevation_tokens.dart";
import "package:leafy/tokens/opacity/opacity_tokens.dart";
import "package:leafy/tokens/spacing/spacing_tokens.dart";

class LeafyColorExtension extends ThemeExtension<LeafyColorExtension> {
  final CustomColorExtension colors;
  late final ElevationTokens elevationTokens;
  late final BorderRadiusTokens borderRadiusTokens;
  late final BorderWidthTokens borderWidthTokens;
  late final OpacityTokens opacityTokens;
  late final SpacingTokens spacingTokens;

  LeafyColorExtension({
    required this.colors,
  }) {
    elevationTokens = ElevationTokens();
    borderRadiusTokens = BorderRadiusTokens();
    borderWidthTokens = BorderWidthTokens();
    opacityTokens = OpacityTokens();
    spacingTokens = SpacingTokens();
  }

  @override
  LeafyColorExtension copyWith({
    CustomColorExtension? colors,
  }) {
    return LeafyColorExtension(
      colors: colors ?? this.colors,
    );
  }

  @override
  LeafyColorExtension lerp(
      covariant ThemeExtension<LeafyColorExtension>? other, double t) {
    if (other is! LeafyColorExtension) {
      return this;
    }

    return LeafyColorExtension(
      colors: colors.lerp(other.colors, t),
    );
  }
}
