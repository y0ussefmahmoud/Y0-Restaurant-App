import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'app_colors.dart';
import 'app_text_styles.dart';

/// Main theme configuration class for the Y0 Restaurant App
class AppTheme {
  const AppTheme._();

  /// Dark theme configuration (Obsidian)
  static ThemeData darkTheme() {
    final colorScheme = ObsidianColorsExtension.colorScheme;
    
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      colorScheme: colorScheme,
      scaffoldBackgroundColor: ObsidianColors.background,
      
      // Text theme
      textTheme: _buildTextTheme(colorScheme.brightness),
      
      // Card theme
      cardTheme: CardThemeData(
        color: ObsidianColors.surfaceContainer,
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24), // xl = 24px
        ),
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      ),
      
      // Input decoration theme
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: ObsidianColors.surfaceContainerHighest,
        border: InputBorder.none,
        enabledBorder: InputBorder.none,
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: ObsidianColors.primary,
            width: 4,
          ),
          borderRadius: BorderRadius.circular(16),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: ObsidianColors.error,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(16),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: ObsidianColors.error,
            width: 4,
          ),
          borderRadius: BorderRadius.circular(16),
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        hintStyle: AppTextStyles.bodyLarge.copyWith(
          color: ObsidianColors.onSurfaceVariant,
        ),
        labelStyle: AppTextStyles.bodyMedium.copyWith(
          color: ObsidianColors.onSurfaceVariant,
        ),
      ),
      
      // Elevated button theme
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: ObsidianColors.primary,
          foregroundColor: ObsidianColors.onPrimary,
          elevation: 4,
          shadowColor: Colors.black.withOpacity(0.3),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16), // lg = 16px
          ),
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          textStyle: AppTextStyles.labelLarge.copyWith(
            fontWeight: FontWeight.w600,
            letterSpacing: 0.05,
          ),
        ),
      ),
      
      // Text button theme
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: ObsidianColors.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          textStyle: AppTextStyles.labelLarge.copyWith(
            fontWeight: FontWeight.w600,
            letterSpacing: 0.05,
          ),
        ),
      ),
      
      // Outlined button theme
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: ObsidianColors.primary,
          side: BorderSide(color: ObsidianColors.primary, width: 2),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          textStyle: AppTextStyles.labelLarge.copyWith(
            fontWeight: FontWeight.w600,
            letterSpacing: 0.05,
          ),
        ),
      ),
      
      // Chip theme
      chipTheme: ChipThemeData(
        backgroundColor: ObsidianColors.surfaceContainer,
        selectedColor: ObsidianColors.primary.withOpacity(0.2),
        disabledColor: ObsidianColors.onSurface.withOpacity(0.12),
        labelStyle: AppTextStyles.labelMedium.copyWith(
          color: ObsidianColors.onSurface,
        ),
        secondaryLabelStyle: AppTextStyles.labelMedium.copyWith(
          color: ObsidianColors.primary,
        ),
        brightness: Brightness.dark,
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24), // xl = 24px
        ),
        side: BorderSide.none,
      ),
      
      // Navigation drawer theme
      navigationDrawerTheme: NavigationDrawerThemeData(
        backgroundColor: ObsidianColors.surfaceContainer.withOpacity(0.7),
        surfaceTintColor: ObsidianColors.primary,
        indicatorColor: ObsidianColors.primary.withOpacity(0.2),
        elevation: 1,
      ),
      
      // Navigation bar theme
      navigationBarTheme: NavigationBarThemeData(
        backgroundColor: ObsidianColors.surfaceContainer.withOpacity(0.7),
        surfaceTintColor: ObsidianColors.primary,
        indicatorColor: ObsidianColors.primary.withOpacity(0.2),
        elevation: 1,
        height: 80,
        labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
      ),
      
      // App bar theme
      appBarTheme: AppBarTheme(
        backgroundColor: ObsidianColors.surface,
        foregroundColor: ObsidianColors.onSurface,
        elevation: 0,
        scrolledUnderElevation: 4,
        shadowColor: Colors.black.withOpacity(0.3),
        surfaceTintColor: ObsidianColors.primary,
        titleTextStyle: AppTextStyles.headlineSmall.copyWith(
          color: ObsidianColors.onSurface,
          fontWeight: FontWeight.w600,
        ),
        systemOverlayStyle: SystemUiOverlayStyle.light,
      ),
      
      // Bottom sheet theme
      bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: ObsidianColors.surfaceContainer,
        surfaceTintColor: ObsidianColors.primary,
        elevation: 8,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(24),
          ),
        ),
        clipBehavior: Clip.antiAlias,
      ),
      
      // Dialog theme
      dialogTheme: DialogThemeData(
        backgroundColor: ObsidianColors.surfaceContainer,
        surfaceTintColor: ObsidianColors.primary,
        elevation: 8,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        titleTextStyle: AppTextStyles.headlineSmall.copyWith(
          color: ObsidianColors.onSurface,
        ),
        contentTextStyle: AppTextStyles.bodyLarge.copyWith(
          color: ObsidianColors.onSurface,
        ),
      ),
      
      // Divider theme
      dividerTheme: DividerThemeData(
        color: ObsidianColors.outlineVariant,
        thickness: 1,
        space: 1,
      ),
      
      // List tile theme
      listTileTheme: ListTileThemeData(
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
        titleTextStyle: AppTextStyles.bodyLarge.copyWith(
          color: ObsidianColors.onSurface,
        ),
        subtitleTextStyle: AppTextStyles.bodyMedium.copyWith(
          color: ObsidianColors.onSurfaceVariant,
        ),
        leadingAndTrailingTextStyle: AppTextStyles.bodyMedium.copyWith(
          color: ObsidianColors.onSurfaceVariant,
        ),
      ),
      
      // Icon theme
      iconTheme: IconThemeData(
        color: ObsidianColors.onSurface,
        size: 24,
      ),
      
      // Primary icon theme
      primaryIconTheme: IconThemeData(
        color: ObsidianColors.primary,
        size: 24,
      ),
    );
  }

  /// Light theme configuration (Alabaster)
  static ThemeData lightTheme() {
    final colorScheme = AlabasterColorsExtension.colorScheme;
    
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      colorScheme: colorScheme,
      scaffoldBackgroundColor: AlabasterColors.background,
      
      // Text theme
      textTheme: _buildTextTheme(colorScheme.brightness),
      
      // Card theme
      cardTheme: CardThemeData(
        color: AlabasterColors.surfaceContainer,
        elevation: 2,
        shadowColor: Colors.black.withOpacity(0.1),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24), // xl = 24px
        ),
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      ),
      
      // Input decoration theme
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: AlabasterColors.surfaceContainerHighest,
        border: InputBorder.none,
        enabledBorder: InputBorder.none,
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: AlabasterColors.primary,
            width: 4,
          ),
          borderRadius: BorderRadius.circular(16),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: AlabasterColors.error,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(16),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: AlabasterColors.error,
            width: 4,
          ),
          borderRadius: BorderRadius.circular(16),
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        hintStyle: AppTextStyles.bodyLarge.copyWith(
          color: AlabasterColors.onSurfaceVariant,
        ),
        labelStyle: AppTextStyles.bodyMedium.copyWith(
          color: AlabasterColors.onSurfaceVariant,
        ),
      ),
      
      // Elevated button theme
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AlabasterColors.primary,
          foregroundColor: AlabasterColors.onPrimary,
          elevation: 4,
          shadowColor: Colors.black.withOpacity(0.2),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16), // lg = 16px
          ),
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          textStyle: AppTextStyles.labelLarge.copyWith(
            fontWeight: FontWeight.w600,
            letterSpacing: 0.05,
          ),
        ),
      ),
      
      // Text button theme
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: AlabasterColors.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          textStyle: AppTextStyles.labelLarge.copyWith(
            fontWeight: FontWeight.w600,
            letterSpacing: 0.05,
          ),
        ),
      ),
      
      // Outlined button theme
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: AlabasterColors.primary,
          side: BorderSide(color: AlabasterColors.primary, width: 2),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          textStyle: AppTextStyles.labelLarge.copyWith(
            fontWeight: FontWeight.w600,
            letterSpacing: 0.05,
          ),
        ),
      ),
      
      // Chip theme
      chipTheme: ChipThemeData(
        backgroundColor: AlabasterColors.surfaceContainer,
        selectedColor: AlabasterColors.primary.withOpacity(0.2),
        disabledColor: AlabasterColors.onSurface.withOpacity(0.12),
        labelStyle: AppTextStyles.labelMedium.copyWith(
          color: AlabasterColors.onSurface,
        ),
        secondaryLabelStyle: AppTextStyles.labelMedium.copyWith(
          color: AlabasterColors.primary,
        ),
        brightness: Brightness.light,
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24), // xl = 24px
        ),
        side: BorderSide.none,
      ),
      
      // Navigation drawer theme
      navigationDrawerTheme: NavigationDrawerThemeData(
        backgroundColor: AlabasterColors.surfaceContainer.withOpacity(0.7),
        surfaceTintColor: AlabasterColors.primary,
        indicatorColor: AlabasterColors.primary.withOpacity(0.2),
        elevation: 1,
      ),
      
      // Navigation bar theme
      navigationBarTheme: NavigationBarThemeData(
        backgroundColor: AlabasterColors.surfaceContainer.withOpacity(0.7),
        surfaceTintColor: AlabasterColors.primary,
        indicatorColor: AlabasterColors.primary.withOpacity(0.2),
        elevation: 1,
        height: 80,
        labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
      ),
      
      // App bar theme
      appBarTheme: AppBarTheme(
        backgroundColor: AlabasterColors.surface,
        foregroundColor: AlabasterColors.onSurface,
        elevation: 0,
        scrolledUnderElevation: 4,
        shadowColor: Colors.black.withOpacity(0.1),
        surfaceTintColor: AlabasterColors.primary,
        titleTextStyle: AppTextStyles.headlineSmall.copyWith(
          color: AlabasterColors.onSurface,
          fontWeight: FontWeight.w600,
        ),
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      
      // Bottom sheet theme
      bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: AlabasterColors.surfaceContainer,
        surfaceTintColor: AlabasterColors.primary,
        elevation: 8,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(24),
          ),
        ),
        clipBehavior: Clip.antiAlias,
      ),
      
      // Dialog theme
      dialogTheme: DialogThemeData(
        backgroundColor: AlabasterColors.surfaceContainer,
        surfaceTintColor: AlabasterColors.primary,
        elevation: 8,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        titleTextStyle: AppTextStyles.headlineSmall.copyWith(
          color: AlabasterColors.onSurface,
        ),
        contentTextStyle: AppTextStyles.bodyLarge.copyWith(
          color: AlabasterColors.onSurface,
        ),
      ),
      
      // Divider theme
      dividerTheme: DividerThemeData(
        color: AlabasterColors.outlineVariant,
        thickness: 1,
        space: 1,
      ),
      
      // List tile theme
      listTileTheme: ListTileThemeData(
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
        titleTextStyle: AppTextStyles.bodyLarge.copyWith(
          color: AlabasterColors.onSurface,
        ),
        subtitleTextStyle: AppTextStyles.bodyMedium.copyWith(
          color: AlabasterColors.onSurfaceVariant,
        ),
        leadingAndTrailingTextStyle: AppTextStyles.bodyMedium.copyWith(
          color: AlabasterColors.onSurfaceVariant,
        ),
      ),
      
      // Icon theme
      iconTheme: IconThemeData(
        color: AlabasterColors.onSurface,
        size: 24,
      ),
      
      // Primary icon theme
      primaryIconTheme: IconThemeData(
        color: AlabasterColors.primary,
        size: 24,
      ),
    );
  }

  /// Build text theme based on brightness
  static TextTheme _buildTextTheme(Brightness brightness) {
    final isDark = brightness == Brightness.dark;
    
    return TextTheme(
      // Display styles
      displayLarge: AppTextStyles.displayLarge,
      displayMedium: AppTextStyles.displayMedium,
      displaySmall: AppTextStyles.displaySmall,
      
      // Headline styles
      headlineLarge: AppTextStyles.headlineLarge,
      headlineMedium: AppTextStyles.headlineMedium,
      headlineSmall: AppTextStyles.headlineSmall,
      
      // Title styles
      titleLarge: AppTextStyles.titleLarge,
      titleMedium: AppTextStyles.titleMedium,
      titleSmall: AppTextStyles.titleSmall,
      
      // Body styles
      bodyLarge: AppTextStyles.bodyLarge,
      bodyMedium: AppTextStyles.bodyMedium,
      bodySmall: AppTextStyles.bodySmall,
      
      // Label styles
      labelLarge: AppTextStyles.labelLarge,
      labelMedium: AppTextStyles.labelMedium,
      labelSmall: AppTextStyles.labelSmall,
    );
  }
}
