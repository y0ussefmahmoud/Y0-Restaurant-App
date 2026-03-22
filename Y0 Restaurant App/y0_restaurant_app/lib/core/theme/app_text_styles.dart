import 'package:flutter/material.dart';

/// Named text style constants for the Y0 Restaurant App
/// Uses Plus Jakarta Sans, Be Vietnam Pro, and Cairo font families
class AppTextStyles {
  const AppTextStyles._();

  // Font families
  static const String plusJakartaSans = 'Plus Jakarta Sans';
  static const String beVietnamPro = 'Be Vietnam Pro';
  static const String cairo = 'Cairo';

  // === DISPLAY STYLES ===
  // Display Large - Plus Jakarta Sans, 57sp, Regular
  static const TextStyle displayLarge = TextStyle(
    fontFamily: plusJakartaSans,
    fontSize: 57,
    fontWeight: FontWeight.w400,
    height: 1.12,
    letterSpacing: -0.25,
  );

  // Display Medium - Plus Jakarta Sans, 45sp, Regular
  static const TextStyle displayMedium = TextStyle(
    fontFamily: plusJakartaSans,
    fontSize: 45,
    fontWeight: FontWeight.w400,
    height: 1.16,
    letterSpacing: 0,
  );

  // Display Small - Plus Jakarta Sans, 36sp, Regular
  static const TextStyle displaySmall = TextStyle(
    fontFamily: plusJakartaSans,
    fontSize: 36,
    fontWeight: FontWeight.w400,
    height: 1.22,
    letterSpacing: 0,
  );

  // === HEADLINE STYLES ===
  // Headline Large - Plus Jakarta Sans, 32sp, Regular
  static const TextStyle headlineLarge = TextStyle(
    fontFamily: plusJakartaSans,
    fontSize: 32,
    fontWeight: FontWeight.w400,
    height: 1.25,
    letterSpacing: 0,
  );

  // Headline Medium - Plus Jakarta Sans, 28sp, Regular
  static const TextStyle headlineMedium = TextStyle(
    fontFamily: plusJakartaSans,
    fontSize: 28,
    fontWeight: FontWeight.w400,
    height: 1.29,
    letterSpacing: 0,
  );

  // Headline Small - Plus Jakarta Sans, 24sp, Regular
  static const TextStyle headlineSmall = TextStyle(
    fontFamily: plusJakartaSans,
    fontSize: 24,
    fontWeight: FontWeight.w400,
    height: 1.33,
    letterSpacing: 0,
  );

  // === TITLE STYLES ===
  // Title Large - Be Vietnam Pro, 22sp, Medium
  static const TextStyle titleLarge = TextStyle(
    fontFamily: beVietnamPro,
    fontSize: 22,
    fontWeight: FontWeight.w500,
    height: 1.27,
    letterSpacing: 0,
  );

  // Title Medium - Be Vietnam Pro, 16sp, Medium
  static const TextStyle titleMedium = TextStyle(
    fontFamily: beVietnamPro,
    fontSize: 16,
    fontWeight: FontWeight.w500,
    height: 1.31,
    letterSpacing: 0.15,
  );

  // Title Small - Be Vietnam Pro, 14sp, Medium
  static const TextStyle titleSmall = TextStyle(
    fontFamily: beVietnamPro,
    fontSize: 14,
    fontWeight: FontWeight.w500,
    height: 1.33,
    letterSpacing: 0.1,
  );

  // === BODY STYLES ===
  // Body Large - Be Vietnam Pro, 16sp, Regular
  static const TextStyle bodyLarge = TextStyle(
    fontFamily: beVietnamPro,
    fontSize: 16,
    fontWeight: FontWeight.w400,
    height: 1.5,
    letterSpacing: 0.5,
  );

  // Body Medium - Be Vietnam Pro, 14sp, Regular
  static const TextStyle bodyMedium = TextStyle(
    fontFamily: beVietnamPro,
    fontSize: 14,
    fontWeight: FontWeight.w400,
    height: 1.43,
    letterSpacing: 0.25,
  );

  // Body Small - Be Vietnam Pro, 12sp, Regular
  static const TextStyle bodySmall = TextStyle(
    fontFamily: beVietnamPro,
    fontSize: 12,
    fontWeight: FontWeight.w400,
    height: 1.33,
    letterSpacing: 0.4,
  );

  // === LABEL STYLES ===
  // Label Large - Be Vietnam Pro, 14sp, Medium
  static const TextStyle labelLarge = TextStyle(
    fontFamily: beVietnamPro,
    fontSize: 14,
    fontWeight: FontWeight.w500,
    height: 1.33,
    letterSpacing: 0.1,
  );

  // Label Medium - Be Vietnam Pro, 12sp, Medium
  static const TextStyle labelMedium = TextStyle(
    fontFamily: beVietnamPro,
    fontSize: 12,
    fontWeight: FontWeight.w500,
    height: 1.33,
    letterSpacing: 0.5,
  );

  // Label Small - Be Vietnam Pro, 11sp, Medium
  static const TextStyle labelSmall = TextStyle(
    fontFamily: beVietnamPro,
    fontSize: 11,
    fontWeight: FontWeight.w500,
    height: 1.27,
    letterSpacing: 0.5,
  );

  // === RTL VARIANTS (Arabic) ===
  // Arabic Display Large - Cairo, 57sp, Regular
  static const TextStyle arabicDisplayLarge = TextStyle(
    fontFamily: cairo,
    fontSize: 57,
    fontWeight: FontWeight.w400,
    height: 1.12,
    letterSpacing: -0.25,
  );

  // Arabic Display Medium - Cairo, 45sp, Regular
  static const TextStyle arabicDisplayMedium = TextStyle(
    fontFamily: cairo,
    fontSize: 45,
    fontWeight: FontWeight.w400,
    height: 1.16,
    letterSpacing: 0,
  );

  // Arabic Display Small - Cairo, 36sp, Regular
  static const TextStyle arabicDisplaySmall = TextStyle(
    fontFamily: cairo,
    fontSize: 36,
    fontWeight: FontWeight.w400,
    height: 1.22,
    letterSpacing: 0,
  );

  // Arabic Headline Large - Cairo, 32sp, Regular
  static const TextStyle arabicHeadlineLarge = TextStyle(
    fontFamily: cairo,
    fontSize: 32,
    fontWeight: FontWeight.w400,
    height: 1.25,
    letterSpacing: 0,
  );

  // Arabic Headline Medium - Cairo, 28sp, Regular
  static const TextStyle arabicHeadlineMedium = TextStyle(
    fontFamily: cairo,
    fontSize: 28,
    fontWeight: FontWeight.w400,
    height: 1.29,
    letterSpacing: 0,
  );

  // Arabic Headline Small - Cairo, 24sp, Regular
  static const TextStyle arabicHeadlineSmall = TextStyle(
    fontFamily: cairo,
    fontSize: 24,
    fontWeight: FontWeight.w400,
    height: 1.33,
    letterSpacing: 0,
  );

  // Arabic Title Large - Cairo, 22sp, Medium
  static const TextStyle arabicTitleLarge = TextStyle(
    fontFamily: cairo,
    fontSize: 22,
    fontWeight: FontWeight.w500,
    height: 1.27,
    letterSpacing: 0,
  );

  // Arabic Title Medium - Cairo, 16sp, Medium
  static const TextStyle arabicTitleMedium = TextStyle(
    fontFamily: cairo,
    fontSize: 16,
    fontWeight: FontWeight.w500,
    height: 1.31,
    letterSpacing: 0.15,
  );

  // Arabic Title Small - Cairo, 14sp, Medium
  static const TextStyle arabicTitleSmall = TextStyle(
    fontFamily: cairo,
    fontSize: 14,
    fontWeight: FontWeight.w500,
    height: 1.33,
    letterSpacing: 0.1,
  );

  // Arabic Body Large - Cairo, 16sp, Regular
  static const TextStyle arabicBodyLarge = TextStyle(
    fontFamily: cairo,
    fontSize: 16,
    fontWeight: FontWeight.w400,
    height: 1.5,
    letterSpacing: 0.5,
  );

  // Arabic Body Medium - Cairo, 14sp, Regular
  static const TextStyle arabicBodyMedium = TextStyle(
    fontFamily: cairo,
    fontSize: 14,
    fontWeight: FontWeight.w400,
    height: 1.43,
    letterSpacing: 0.25,
  );

  // Arabic Body Small - Cairo, 12sp, Regular
  static const TextStyle arabicBodySmall = TextStyle(
    fontFamily: cairo,
    fontSize: 12,
    fontWeight: FontWeight.w400,
    height: 1.33,
    letterSpacing: 0.4,
  );

  // Arabic Label Large - Cairo, 14sp, Medium
  static const TextStyle arabicLabelLarge = TextStyle(
    fontFamily: cairo,
    fontSize: 14,
    fontWeight: FontWeight.w500,
    height: 1.33,
    letterSpacing: 0.1,
  );

  // Arabic Label Medium - Cairo, 12sp, Medium
  static const TextStyle arabicLabelMedium = TextStyle(
    fontFamily: cairo,
    fontSize: 12,
    fontWeight: FontWeight.w500,
    height: 1.33,
    letterSpacing: 0.5,
  );

  // Arabic Label Small - Cairo, 11sp, Medium
  static const TextStyle arabicLabelSmall = TextStyle(
    fontFamily: cairo,
    fontSize: 11,
    fontWeight: FontWeight.w500,
    height: 1.27,
    letterSpacing: 0.5,
  );

  // === SPECIALIZED STYLES ===
  
  // Button text - Uppercase, letter spacing 0.05em
  static const TextStyle buttonText = TextStyle(
    fontFamily: beVietnamPro,
    fontSize: 14,
    fontWeight: FontWeight.w600,
    height: 1.33,
    letterSpacing: 0.05,
  );

  // Arabic Button text - Uppercase equivalent for Arabic
  static const TextStyle arabicButtonText = TextStyle(
    fontFamily: cairo,
    fontSize: 14,
    fontWeight: FontWeight.w600,
    height: 1.33,
    letterSpacing: 0.05,
  );

  // Caption text
  static const TextStyle caption = TextStyle(
    fontFamily: beVietnamPro,
    fontSize: 10,
    fontWeight: FontWeight.w400,
    height: 1.2,
    letterSpacing: 0.4,
  );

  // Arabic Caption text
  static const TextStyle arabicCaption = TextStyle(
    fontFamily: cairo,
    fontSize: 10,
    fontWeight: FontWeight.w400,
    height: 1.2,
    letterSpacing: 0.4,
  );

  // Overline text - Uppercase, letter spacing 0.1em
  static const TextStyle overline = TextStyle(
    fontFamily: beVietnamPro,
    fontSize: 10,
    fontWeight: FontWeight.w500,
    height: 1.6,
    letterSpacing: 0.1,
  );

  // Arabic Overline text
  static const TextStyle arabicOverline = TextStyle(
    fontFamily: cairo,
    fontSize: 10,
    fontWeight: FontWeight.w500,
    height: 1.6,
    letterSpacing: 0.1,
  );

  // === UTILITY METHODS ===
  
  /// Get appropriate text style based on locale and text style type
  static TextStyle getTextStyle(TextStyle baseStyle, Locale locale) {
    final isArabic = locale.languageCode == 'ar';
    
    if (!isArabic) return baseStyle;
    
    // Map LTR styles to RTL equivalents
    switch (baseStyle.fontFamily) {
      case plusJakartaSans:
        switch (baseStyle.fontSize?.toInt()) {
          case 57:
            return arabicDisplayLarge;
          case 45:
            return arabicDisplayMedium;
          case 36:
            return arabicDisplaySmall;
          case 32:
            return arabicHeadlineLarge;
          case 28:
            return arabicHeadlineMedium;
          case 24:
            return arabicHeadlineSmall;
          default:
            return baseStyle.copyWith(fontFamily: cairo);
        }
      case beVietnamPro:
        switch (baseStyle.fontSize?.toInt()) {
          case 22:
            return arabicTitleLarge;
          case 16:
            if (baseStyle.fontWeight == FontWeight.w600) {
              return arabicButtonText;
            }
            return arabicTitleMedium;
          case 14:
            if (baseStyle.fontWeight == FontWeight.w600) {
              return arabicLabelLarge;
            }
            return arabicTitleSmall;
          case 12:
            if (baseStyle.fontWeight == FontWeight.w500) {
              return arabicLabelMedium;
            }
            return arabicBodySmall;
          case 11:
            return arabicLabelSmall;
          case 10:
            if (baseStyle.fontWeight == FontWeight.w500) {
              return arabicOverline;
            }
            return arabicCaption;
          default:
            return baseStyle.copyWith(fontFamily: cairo);
        }
      default:
        return baseStyle.copyWith(fontFamily: cairo);
    }
  }

  /// Apply color to text style
  static TextStyle withColor(TextStyle style, Color color) {
    return style.copyWith(color: color);
  }

  /// Apply weight to text style
  static TextStyle withWeight(TextStyle style, FontWeight weight) {
    return style.copyWith(fontWeight: weight);
  }

  /// Apply size to text style
  static TextStyle withSize(TextStyle style, double size) {
    return style.copyWith(fontSize: size);
  }

  /// Apply opacity to text style
  static TextStyle withOpacity(TextStyle style, double opacity) {
    return style.copyWith(color: style.color?.withOpacity(opacity));
  }
}
