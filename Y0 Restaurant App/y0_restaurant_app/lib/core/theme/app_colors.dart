import 'package:flutter/material.dart';

/// Color tokens for the Obsidian (Dark) theme
class ObsidianColors {
  const ObsidianColors._();

  // Background and Surface colors
  static const Color background = Color(0xFF0E0E0E);
  static const Color surface = Color(0xFF0E0E0E);
  static const Color surfaceDim = Color(0xFF0E0E0E);
  static const Color surfaceBright = Color(0xFF343434);
  static const Color surfaceContainerLowest = Color(0xFF000000);
  static const Color surfaceContainerLow = Color(0xFF131313);
  static const Color surfaceContainer = Color(0xFF1A1A1A);
  static const Color surfaceContainerHigh = Color(0xFF20201F);
  static const Color surfaceContainerHighest = Color(0xFF262626);

  // Primary colors
  static const Color primary = Color(0xFFFFBD5C);
  static const Color primaryFixed = Color(0xFFFEAA00);
  static const Color primaryFixedDim = Color(0xFFEC9E00);
  static const Color primaryDim = Color(0xFFEC9E00);
  static const Color primaryContainer = Color(0xFFFEAA00);
  static const Color onPrimary = Color(0xFF5C3B00);
  static const Color onPrimaryFixed = Color(0xFF331F00);
  static const Color onPrimaryContainer = Color(0xFF694400);

  // On colors
  static const Color onSurface = Color(0xFFFFFFFF);
  static const Color onSurfaceVariant = Color(0xFFADAAAA);
  static const Color onBackground = Color(0xFFFFFFFF);

  // Tertiary colors
  static const Color tertiary = Color(0xFFFF833F);
  static const Color tertiaryContainer = Color(0xFFFD6C00);

  // Error colors
  static const Color errorDim = Color(0xFFD53D18);
  static const Color error = Color(0xFFFF7351);

  // Outline colors
  static const Color outline = Color(0xFF767575);
  static const Color outlineVariant = Color(0xFF484847);

  // Inverse colors
  static const Color inversePrimary = Color(0xFF835600);
  static const Color inverseSurface = Color(0xFFE1E2E1);
  static const Color inverseOnSurface = Color(0xFF2D3131);
}

/// Color tokens for the Alabaster (Light) theme
class AlabasterColors {
  const AlabasterColors._();

  // Background and Surface colors
  static const Color background = Color(0xFFF9F9F9);
  static const Color surface = Color(0xFFF9F9F9);
  static const Color surfaceBright = Color(0xFFF9F9F9);
  static const Color surfaceDim = Color(0xFFDADADA);
  static const Color surfaceContainerLowest = Color(0xFFFFFFFF);
  static const Color surfaceContainerLow = Color(0xFFF3F3F3);
  static const Color surfaceContainer = Color(0xFFEEEEEE);
  static const Color surfaceContainerHigh = Color(0xFFE8E8E8);
  static const Color surfaceContainerHighest = Color(0xFFE2E2E2);
  static const Color surfaceVariant = Color(0xFFE2E2E2);

  // Primary colors
  static const Color primary = Color(0xFF825500);
  static const Color primaryContainer = Color(0xFFFFAB00);
  static const Color primaryFixed = Color(0xFFFFDDB3);
  static const Color primaryFixedDim = Color(0xFFFFB950);
  static const Color onPrimary = Color(0xFFFFFFFF);
  static const Color onPrimaryFixed = Color(0xFF291800);
  static const Color onPrimaryContainer = Color(0xFF694400);

  // On colors
  static const Color onSurface = Color(0xFF1A1C1C);
  static const Color onBackground = Color(0xFF1A1C1C);
  static const Color onSurfaceVariant = Color(0xFF524433);

  // Tertiary colors
  static const Color tertiary = Color(0xFF006781);
  static const Color tertiaryContainer = Color(0xFF00CCFE);

  // Error colors
  static const Color error = Color(0xFFBA1A1A);

  // Outline colors
  static const Color outline = Color(0xFF857460);
  static const Color outlineVariant = Color(0xFFD7C3AC);

  // Inverse colors
  static const Color inversePrimary = Color(0xFFFFB950);
  static const Color inverseSurface = Color(0xFF2F3030);
  static const Color inverseOnSurface = Color(0xFFF0F1EF);
}

/// Extension methods for easy color access
extension ObsidianColorsExtension on ObsidianColors {
  static ColorScheme get colorScheme => ColorScheme(
    brightness: Brightness.dark,
    primary: ObsidianColors.primary,
    onPrimary: ObsidianColors.onPrimary,
    primaryContainer: ObsidianColors.primaryContainer,
    onPrimaryContainer: ObsidianColors.onPrimaryContainer,
    secondary: ObsidianColors.tertiary,
    onSecondary: ObsidianColors.onPrimary,
    secondaryContainer: ObsidianColors.tertiaryContainer,
    onSecondaryContainer: ObsidianColors.onPrimary,
    tertiary: ObsidianColors.tertiary,
    onTertiary: ObsidianColors.onPrimary,
    tertiaryContainer: ObsidianColors.tertiaryContainer,
    onTertiaryContainer: ObsidianColors.onPrimary,
    error: ObsidianColors.error,
    onError: ObsidianColors.onSurface,
    errorContainer: ObsidianColors.errorDim,
    onErrorContainer: ObsidianColors.onSurface,
    background: ObsidianColors.background,
    onBackground: ObsidianColors.onBackground,
    surface: ObsidianColors.surface,
    onSurface: ObsidianColors.onSurface,
    surfaceDim: ObsidianColors.surfaceDim,
    surfaceBright: ObsidianColors.surfaceBright,
    surfaceContainerLowest: ObsidianColors.surfaceContainerLowest,
    surfaceContainerLow: ObsidianColors.surfaceContainerLow,
    surfaceContainer: ObsidianColors.surfaceContainer,
    surfaceContainerHigh: ObsidianColors.surfaceContainerHigh,
    surfaceContainerHighest: ObsidianColors.surfaceContainerHighest,
    outline: ObsidianColors.outline,
    outlineVariant: ObsidianColors.outlineVariant,
    inverseSurface: ObsidianColors.inverseSurface,
    onInverseSurface: ObsidianColors.inverseOnSurface,
    inversePrimary: ObsidianColors.inversePrimary,
    scrim: const Color(0xFF000000),
    shadow: const Color(0xFF000000),
  );
}

extension AlabasterColorsExtension on AlabasterColors {
  static ColorScheme get colorScheme => ColorScheme(
    brightness: Brightness.light,
    primary: AlabasterColors.primary,
    onPrimary: AlabasterColors.onPrimary,
    primaryContainer: AlabasterColors.primaryContainer,
    onPrimaryContainer: AlabasterColors.onPrimaryContainer,
    secondary: AlabasterColors.tertiary,
    onSecondary: AlabasterColors.onSurface,
    secondaryContainer: AlabasterColors.tertiaryContainer,
    onSecondaryContainer: AlabasterColors.onSurface,
    tertiary: AlabasterColors.tertiary,
    onTertiary: AlabasterColors.onSurface,
    tertiaryContainer: AlabasterColors.tertiaryContainer,
    onTertiaryContainer: AlabasterColors.onSurface,
    error: AlabasterColors.error,
    onError: AlabasterColors.onSurface,
    errorContainer: AlabasterColors.error,
    onErrorContainer: AlabasterColors.onSurface,
    background: AlabasterColors.background,
    onBackground: AlabasterColors.onBackground,
    surface: AlabasterColors.surface,
    onSurface: AlabasterColors.onSurface,
    surfaceDim: AlabasterColors.surfaceDim,
    surfaceBright: AlabasterColors.surfaceBright,
    surfaceContainerLowest: AlabasterColors.surfaceContainerLowest,
    surfaceContainerLow: AlabasterColors.surfaceContainerLow,
    surfaceContainer: AlabasterColors.surfaceContainer,
    surfaceContainerHigh: AlabasterColors.surfaceContainerHigh,
    surfaceContainerHighest: AlabasterColors.surfaceContainerHighest,
    surfaceVariant: AlabasterColors.surfaceVariant,
    onSurfaceVariant: AlabasterColors.onSurfaceVariant,
    outline: AlabasterColors.outline,
    outlineVariant: AlabasterColors.outlineVariant,
    inverseSurface: AlabasterColors.inverseSurface,
    onInverseSurface: AlabasterColors.inverseOnSurface,
    inversePrimary: AlabasterColors.inversePrimary,
    scrim: const Color(0xFF000000),
    shadow: const Color(0xFF000000),
  );
}
