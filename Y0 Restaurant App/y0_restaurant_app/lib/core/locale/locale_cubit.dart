import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// Locale states
abstract class LocaleState extends Equatable {
  const LocaleState();

  @override
  List<Object> get props => [];
}

class LocaleInitial extends LocaleState {}

class LocaleChanged extends LocaleState {
  final Locale locale;

  const LocaleChanged(this.locale);

  @override
  List<Object> get props => [locale];
}

/// Locale events
abstract class LocaleEvent extends Equatable {
  const LocaleEvent();

  @override
  List<Object> get props => [];
}

class LoadSavedLocale extends LocaleEvent {}

class SetLocale extends LocaleEvent {
  final Locale locale;

  const SetLocale(this.locale);

  @override
  List<Object> get props => [locale];
}

/// Locale Cubit for managing app locale
class LocaleCubit extends Cubit<LocaleState> {
  static const String _localeKey = 'app_locale';
  
  LocaleCubit() : super(LocaleInitial()) {
    _loadSavedLocale();
  }

  /// Load saved locale from SharedPreferences
  Future<void> _loadSavedLocale() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final localeCode = prefs.getString(_localeKey);
      
      if (localeCode != null) {
        final parts = localeCode.split('_');
        final locale = parts.length == 2 
            ? Locale(parts[0], parts[1])
            : Locale(parts[0]);
        emit(LocaleChanged(locale));
      } else {
        // Default to English
        emit(const LocaleChanged(Locale('en')));
      }
    } catch (e) {
      // Fallback to English if there's an error
      emit(const LocaleChanged(Locale('en')));
    }
  }

  /// Public method to load saved locale
  Future<void> loadSavedLocale() async {
    _loadSavedLocale();
  }

  /// Set and save new locale
  Future<void> setLocale(Locale locale) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final localeCode = locale.countryCode != null 
          ? '${locale.languageCode}_${locale.countryCode}'
          : locale.languageCode;
      
      await prefs.setString(_localeKey, localeCode);
      emit(LocaleChanged(locale));
    } catch (e) {
      // Emit the locale anyway even if saving fails
      emit(LocaleChanged(locale));
    }
  }

  /// Get current locale
  Locale? getCurrentLocale() {
    if (state is LocaleChanged) {
      return (state as LocaleChanged).locale;
    }
    return null;
  }

  /// Check if current locale is Arabic
  bool isArabic() {
    final currentLocale = getCurrentLocale();
    return currentLocale?.languageCode == 'ar';
  }

  /// Check if current locale is English
  bool isEnglish() {
    final currentLocale = getCurrentLocale();
    return currentLocale?.languageCode == 'en';
  }

  /// Toggle between English and Arabic
  Future<void> toggleLocale() async {
    final currentLocale = getCurrentLocale();
    final newLocale = currentLocale?.languageCode == 'ar' 
        ? Locale('en')
        : Locale('ar');
    
    await setLocale(newLocale);
  }
}
