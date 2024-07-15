import "package:flutter/material.dart";
import "package:leafy/tokens/color/system_tokens_dark.dart";
import "package:leafy/tokens/color/system_tokens_light.dart";

class LeafyTheme {
  final TextTheme textTheme;

  const LeafyTheme(this.textTheme);

  static MaterialScheme lightScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: lfSystemPrimaryLight,
      surfaceTint: lfSystemPrimaryLight,
      onPrimary: lfSystemOnPrimaryLight,
      primaryContainer: lfSystemPrimaryContainerLight,
      onPrimaryContainer: lfSystemOnPrimaryContainerLight,
      secondary: lfSystemSecondaryLight,
      onSecondary: lfSystemOnSecondaryLight,
      secondaryContainer: lfSystemSecondaryContainerLight,
      onSecondaryContainer: lfSystemOnSecondaryContainerLight,
      tertiary: lfSystemTertiaryLight,
      onTertiary: lfSystemOnTertiaryLight,
      tertiaryContainer: lfSystemTertiaryContainerLight,
      onTertiaryContainer: lfSystemOnTertiaryContainerLight,
      error: lfSystemErrorLight,
      onError: lfSystemOnErrorLight,
      errorContainer: lfSystemErrorContainerLight,
      onErrorContainer: lfSystemOnErrorContainerLight,
      background: lfSystemBackgroundLight,
      onBackground: lfSystemOnBackgroundLight,
      surface: lfSystemSurfaceLight,
      onSurface: lfSystemOnSurfaceLight,
      surfaceVariant: lfSystemSurfaceVariantLight,
      onSurfaceVariant: lfSystemOnSurfaceVariantLight,
      outline: lfSystemOutlineLight,
      outlineVariant: lfSystemOutlineVariantLight,
      shadow: lfSystemShadowLight,
      scrim: lfSystemScrimLight,
      inverseSurface: lfSystemInverseSurfaceLight,
      inverseOnSurface: lfSystemInverseOnSurfaceLight,
      inversePrimary: lfSystemInversePrimaryLight,
      primaryFixed: lfSystemPrimaryContainerLight,
      onPrimaryFixed: lfSystemOnPrimaryContainerLight,
      primaryFixedDim: lfSystemPrimaryLight,
      onPrimaryFixedVariant: lfSystemOnPrimaryLight,
      secondaryFixed: lfSystemSecondaryContainerLight,
      onSecondaryFixed: lfSystemOnSecondaryContainerLight,
      secondaryFixedDim: lfSystemSecondaryLight,
      onSecondaryFixedVariant: lfSystemOnSecondaryLight,
      tertiaryFixed: lfSystemTertiaryContainerLight,
      onTertiaryFixed: lfSystemOnTertiaryContainerLight,
      tertiaryFixedDim: lfSystemTertiaryLight,
      onTertiaryFixedVariant: lfSystemOnTertiaryLight,
      surfaceDim: lfSystemSurfaceDimLight,
      surfaceBright: lfSystemSurfaceBrightLight,
      surfaceContainerLowest: lfSystemSurfaceContainerLowestLight,
      surfaceContainerLow: lfSystemSurfaceContainerLowLight,
      surfaceContainer: lfSystemSurfaceContainerLight,
      surfaceContainerHigh: lfSystemSurfaceContainerHighLight,
      surfaceContainerHighest: lfSystemSurfaceContainerHighestLight,
    )
    ;
  }

  ThemeData light() {
    return theme(lightScheme().toColorScheme());
  }

  static MaterialScheme darkScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: lfSystemPrimaryDark,
      surfaceTint: lfSystemPrimaryDark,
      onPrimary: lfSystemOnPrimaryDark,
      primaryContainer: lfSystemPrimaryContainerDark,
      onPrimaryContainer: lfSystemOnPrimaryContainerDark,
      secondary: lfSystemSecondaryDark,
      onSecondary: lfSystemOnSecondaryDark,
      secondaryContainer: lfSystemSecondaryContainerDark,
      onSecondaryContainer: lfSystemOnSecondaryContainerDark,
      tertiary: lfSystemTertiaryDark,
      onTertiary: lfSystemOnTertiaryDark,
      tertiaryContainer: lfSystemTertiaryContainerDark,
      onTertiaryContainer: lfSystemOnTertiaryContainerDark,
      error: lfSystemErrorDark,
      onError: lfSystemOnErrorDark,
      errorContainer: lfSystemErrorContainerDark,
      onErrorContainer: lfSystemOnErrorContainerDark,
      background: lfSystemBackgroundDark,
      onBackground: lfSystemOnBackgroundDark,
      surface: lfSystemSurfaceDark,
      onSurface: lfSystemOnSurfaceDark,
      surfaceVariant: lfSystemSurfaceVariantDark,
      onSurfaceVariant: lfSystemOnSurfaceVariantDark,
      outline: lfSystemOutlineDark,
      outlineVariant: lfSystemOutlineVariantDark,
      shadow: lfSystemShadowDark,
      scrim: lfSystemScrimDark,
      inverseSurface: lfSystemInverseSurfaceDark,
      inverseOnSurface: lfSystemInverseOnSurfaceDark,
      inversePrimary: lfSystemInversePrimaryDark,
      primaryFixed: lfSystemPrimaryContainerDark,
      onPrimaryFixed: lfSystemOnPrimaryContainerDark,
      primaryFixedDim: lfSystemPrimaryDark,
      onPrimaryFixedVariant: lfSystemOnPrimaryDark,
      secondaryFixed: lfSystemSecondaryContainerDark,
      onSecondaryFixed: lfSystemOnSecondaryContainerDark,
      secondaryFixedDim: lfSystemSecondaryDark,
      onSecondaryFixedVariant: lfSystemOnSecondaryDark,
      tertiaryFixed: lfSystemTertiaryContainerDark,
      onTertiaryFixed: lfSystemOnTertiaryContainerDark,
      tertiaryFixedDim: lfSystemTertiaryDark,
      onTertiaryFixedVariant: lfSystemOnTertiaryDark,
      surfaceDim: lfSystemSurfaceDimDark,
      surfaceBright: lfSystemSurfaceBrightDark,
      surfaceContainerLowest: lfSystemSurfaceContainerLowestDark,
      surfaceContainerLow: lfSystemSurfaceContainerLowDark,
      surfaceContainer: lfSystemSurfaceContainerDark,
      surfaceContainerHigh: lfSystemSurfaceContainerHighDark,
      surfaceContainerHighest: lfSystemSurfaceContainerHighestDark,
    )
    ;
  }

  ThemeData dark() {
    return theme(darkScheme().toColorScheme());
  }

  ThemeData theme(ColorScheme colorScheme) => ThemeData(
    useMaterial3: true,
    brightness: colorScheme.brightness,
    colorScheme: colorScheme,
    textTheme: textTheme.apply(
      bodyColor: colorScheme.onSurface,
      displayColor: colorScheme.onSurface,
    ),
    scaffoldBackgroundColor: colorScheme.background,
    canvasColor: colorScheme.surface,
  );


  List<ExtendedColor> get extendedColors => [
  ];
}

class MaterialScheme {
  const MaterialScheme({
    required this.brightness,
    required this.primary,
    required this.surfaceTint,
    required this.onPrimary,
    required this.primaryContainer,
    required this.onPrimaryContainer,
    required this.secondary,
    required this.onSecondary,
    required this.secondaryContainer,
    required this.onSecondaryContainer,
    required this.tertiary,
    required this.onTertiary,
    required this.tertiaryContainer,
    required this.onTertiaryContainer,
    required this.error,
    required this.onError,
    required this.errorContainer,
    required this.onErrorContainer,
    required this.background,
    required this.onBackground,
    required this.surface,
    required this.onSurface,
    required this.surfaceVariant,
    required this.onSurfaceVariant,
    required this.outline,
    required this.outlineVariant,
    required this.shadow,
    required this.scrim,
    required this.inverseSurface,
    required this.inverseOnSurface,
    required this.inversePrimary,
    required this.primaryFixed,
    required this.onPrimaryFixed,
    required this.primaryFixedDim,
    required this.onPrimaryFixedVariant,
    required this.secondaryFixed,
    required this.onSecondaryFixed,
    required this.secondaryFixedDim,
    required this.onSecondaryFixedVariant,
    required this.tertiaryFixed,
    required this.onTertiaryFixed,
    required this.tertiaryFixedDim,
    required this.onTertiaryFixedVariant,
    required this.surfaceDim,
    required this.surfaceBright,
    required this.surfaceContainerLowest,
    required this.surfaceContainerLow,
    required this.surfaceContainer,
    required this.surfaceContainerHigh,
    required this.surfaceContainerHighest,
  });

  final Brightness brightness;
  final Color primary;
  final Color surfaceTint;
  final Color onPrimary;
  final Color primaryContainer;
  final Color onPrimaryContainer;
  final Color secondary;
  final Color onSecondary;
  final Color secondaryContainer;
  final Color onSecondaryContainer;
  final Color tertiary;
  final Color onTertiary;
  final Color tertiaryContainer;
  final Color onTertiaryContainer;
  final Color error;
  final Color onError;
  final Color errorContainer;
  final Color onErrorContainer;
  final Color background;
  final Color onBackground;
  final Color surface;
  final Color onSurface;
  final Color surfaceVariant;
  final Color onSurfaceVariant;
  final Color outline;
  final Color outlineVariant;
  final Color shadow;
  final Color scrim;
  final Color inverseSurface;
  final Color inverseOnSurface;
  final Color inversePrimary;
  final Color primaryFixed;
  final Color onPrimaryFixed;
  final Color primaryFixedDim;
  final Color onPrimaryFixedVariant;
  final Color secondaryFixed;
  final Color onSecondaryFixed;
  final Color secondaryFixedDim;
  final Color onSecondaryFixedVariant;
  final Color tertiaryFixed;
  final Color onTertiaryFixed;
  final Color tertiaryFixedDim;
  final Color onTertiaryFixedVariant;
  final Color surfaceDim;
  final Color surfaceBright;
  final Color surfaceContainerLowest;
  final Color surfaceContainerLow;
  final Color surfaceContainer;
  final Color surfaceContainerHigh;
  final Color surfaceContainerHighest;
}

extension MaterialSchemeUtils on MaterialScheme {
  ColorScheme toColorScheme() {
    return ColorScheme(
      brightness: brightness,
      primary: primary,
      onPrimary: onPrimary,
      primaryContainer: primaryContainer,
      onPrimaryContainer: onPrimaryContainer,
      secondary: secondary,
      onSecondary: onSecondary,
      secondaryContainer: secondaryContainer,
      onSecondaryContainer: onSecondaryContainer,
      tertiary: tertiary,
      onTertiary: onTertiary,
      tertiaryContainer: tertiaryContainer,
      onTertiaryContainer: onTertiaryContainer,
      error: error,
      onError: onError,
      errorContainer: errorContainer,
      onErrorContainer: onErrorContainer,
      background: background,
      onBackground: onBackground,
      surface: surface,
      onSurface: onSurface,
      surfaceVariant: surfaceVariant,
      onSurfaceVariant: onSurfaceVariant,
      outline: outline,
      outlineVariant: outlineVariant,
      shadow: shadow,
      scrim: scrim,
      inverseSurface: inverseSurface,
      onInverseSurface: inverseOnSurface,
      inversePrimary: inversePrimary,
    );
  }
}

class ExtendedColor {
  final Color seed, value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;

  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.lightHighContrast,
    required this.lightMediumContrast,
    required this.dark,
    required this.darkHighContrast,
    required this.darkMediumContrast,
  });
}

class ColorFamily {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}
