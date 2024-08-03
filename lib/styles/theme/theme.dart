import "package:flutter/material.dart";
import "package:leafy/styles/leafy_extension.dart";
import "package:leafy/tokens/color/reference_tokens.dart";
import "package:leafy/tokens/color/system_tokens_dark.dart";
import "package:leafy/tokens/color/system_tokens_light.dart";
import "package:leafy/tokens/typography/leafy_text_theme.dart";

class LeafyTheme {
  final TextTheme textTheme;

  const LeafyTheme(this.textTheme);

  static LeafyScheme lightScheme() {
    return const LeafyScheme(
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
      funkyContainer: lfRefFunkyLight,
      funkyOnContainer: lfRefOnFunkyLight,
    );
  }

  ThemeData light() {
    return theme(
      lightScheme().toColorScheme(),
      extensions: [
        LeafyExtension(
          textTheme: textTheme,
          colorScheme: LeafyTheme.lightScheme(),
        ),
      ],
    );
  }

  static LeafyScheme darkScheme() {
    return const LeafyScheme(
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
      funkyContainer: lfRefFunkyDark,
      funkyOnContainer: lfRefOnFunkyDark,
    );
  }

  ThemeData dark() {
    return theme(
      darkScheme().toColorScheme(),
      extensions: [
        LeafyExtension(
          textTheme: textTheme,
          colorScheme: LeafyTheme.darkScheme(),
        ),
      ],
    );
  }

  ThemeData theme(
    ColorScheme colorScheme, {
    List<ThemeExtension> extensions = const [],
  }) =>
      ThemeData(
        useMaterial3: true,
        brightness: colorScheme.brightness,
        colorScheme: colorScheme,
        textTheme: textTheme.apply(
          bodyColor: colorScheme.onSurface,
          displayColor: colorScheme.onSurface,
        ),
        scaffoldBackgroundColor: colorScheme.background,
        canvasColor: colorScheme.surface,
        extensions: extensions,
      );
}

class LeafyScheme {
  const LeafyScheme({
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
    required this.funkyContainer,
    required this.funkyOnContainer,
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
  final Color funkyContainer;
  final Color funkyOnContainer;

  LeafyScheme lerp(covariant LeafyScheme? other, double t) {
    if (other is! LeafyScheme) {
      return this;
    }

    return LeafyScheme(
      brightness: other.brightness,
      primary: Color.lerp(primary, other.primary, t)!,
      surfaceTint: Color.lerp(surfaceTint, other.surfaceTint, t)!,
      onPrimary: Color.lerp(onPrimary, other.onPrimary, t)!,
      primaryContainer:
          Color.lerp(primaryContainer, other.primaryContainer, t)!,
      onPrimaryContainer:
          Color.lerp(onPrimaryContainer, other.onPrimaryContainer, t)!,
      secondary: Color.lerp(secondary, other.secondary, t)!,
      onSecondary: Color.lerp(onSecondary, other.onSecondary, t)!,
      secondaryContainer:
          Color.lerp(secondaryContainer, other.secondaryContainer, t)!,
      onSecondaryContainer:
          Color.lerp(onSecondaryContainer, other.onSecondaryContainer, t)!,
      tertiary: Color.lerp(tertiary, other.tertiary, t)!,
      onTertiary: Color.lerp(onTertiary, other.onTertiary, t)!,
      tertiaryContainer:
          Color.lerp(tertiaryContainer, other.tertiaryContainer, t)!,
      onTertiaryContainer:
          Color.lerp(onTertiaryContainer, other.onTertiaryContainer, t)!,
      error: Color.lerp(error, other.error, t)!,
      onError: Color.lerp(onError, other.onError, t)!,
      errorContainer: Color.lerp(errorContainer, other.errorContainer, t)!,
      onErrorContainer:
          Color.lerp(onErrorContainer, other.onErrorContainer, t)!,
      background: Color.lerp(background, other.background, t)!,
      onBackground: Color.lerp(onBackground, other.onBackground, t)!,
      surface: Color.lerp(surface, other.surface, t)!,
      onSurface: Color.lerp(onSurface, other.onSurface, t)!,
      surfaceVariant: Color.lerp(surfaceVariant, other.surfaceVariant, t)!,
      onSurfaceVariant:
          Color.lerp(onSurfaceVariant, other.onSurfaceVariant, t)!,
      outline: Color.lerp(outline, other.outline, t)!,
      outlineVariant: Color.lerp(outlineVariant, other.outlineVariant, t)!,
      shadow: Color.lerp(shadow, other.shadow, t)!,
      scrim: Color.lerp(scrim, other.scrim, t)!,
      inverseSurface: Color.lerp(inverseSurface, other.inverseSurface, t)!,
      inverseOnSurface:
          Color.lerp(inverseOnSurface, other.inverseOnSurface, t)!,
      inversePrimary: Color.lerp(inversePrimary, other.inversePrimary, t)!,
      primaryFixed: Color.lerp(primaryFixed, other.primaryFixed, t)!,
      onPrimaryFixed: Color.lerp(onPrimaryFixed, other.onPrimaryFixed, t)!,
      primaryFixedDim: Color.lerp(primaryFixedDim, other.primaryFixedDim, t)!,
      onPrimaryFixedVariant:
          Color.lerp(onPrimaryFixedVariant, other.onPrimaryFixedVariant, t)!,
      secondaryFixed: Color.lerp(secondaryFixed, other.secondaryFixed, t)!,
      onSecondaryFixed:
          Color.lerp(onSecondaryFixed, other.onSecondaryFixed, t)!,
      secondaryFixedDim:
          Color.lerp(secondaryFixedDim, other.secondaryFixedDim, t)!,
      onSecondaryFixedVariant: Color.lerp(
          onSecondaryFixedVariant, other.onSecondaryFixedVariant, t)!,
      tertiaryFixed: Color.lerp(tertiaryFixed, other.tertiaryFixed, t)!,
      onTertiaryFixed: Color.lerp(onTertiaryFixed, other.onTertiaryFixed, t)!,
      tertiaryFixedDim:
          Color.lerp(tertiaryFixedDim, other.tertiaryFixedDim, t)!,
      onTertiaryFixedVariant:
          Color.lerp(onTertiaryFixedVariant, other.onTertiaryFixedVariant, t)!,
      surfaceDim: Color.lerp(surfaceDim, other.surfaceDim, t)!,
      surfaceBright: Color.lerp(surfaceBright, other.surfaceBright, t)!,
      surfaceContainerLowest:
          Color.lerp(surfaceContainerLowest, other.surfaceContainerLowest, t)!,
      surfaceContainerLow:
          Color.lerp(surfaceContainerLow, other.surfaceContainerLow, t)!,
      surfaceContainer:
          Color.lerp(surfaceContainer, other.surfaceContainer, t)!,
      surfaceContainerHigh:
          Color.lerp(surfaceContainerHigh, other.surfaceContainerHigh, t)!,
      surfaceContainerHighest: Color.lerp(
          surfaceContainerHighest, other.surfaceContainerHighest, t)!,
      funkyContainer: Color.lerp(funkyContainer, other.funkyContainer, t)!,
      funkyOnContainer:
          Color.lerp(funkyOnContainer, other.funkyOnContainer, t)!,
    );
  }
}

extension MaterialSchemeUtils on LeafyScheme {
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

const theme = LeafyTheme(
  LeafyTextTheme.leafyTextTheme,
);
