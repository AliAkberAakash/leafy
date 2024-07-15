import "package:flutter/material.dart";

class LeafyColorExtension extends ThemeExtension<LeafyColorExtension> {
  final Color lfCustomFunky;
  final Color lfCustomOnFunky;

  LeafyColorExtension({
    required this.lfCustomFunky,
    required this.lfCustomOnFunky
  });

  @override
  LeafyColorExtension copyWith({
    Color? lfCustomFunky,
    Color? lfCustomOnFunky,
  }) {
    return LeafyColorExtension(
      lfCustomFunky: lfCustomFunky ?? this.lfCustomFunky,
      lfCustomOnFunky: lfCustomOnFunky ?? this.lfCustomOnFunky,
    );
  }

  @override
  LeafyColorExtension lerp(covariant ThemeExtension<LeafyColorExtension>? other,
      double t) {
    if (other is! LeafyColorExtension) {
      return this;
    }

    return LeafyColorExtension(
      lfCustomFunky: Color.lerp(lfCustomFunky, other.lfCustomFunky, t)!,
      lfCustomOnFunky: Color.lerp(lfCustomOnFunky, other.lfCustomOnFunky, t)!,
    );
  }
}
