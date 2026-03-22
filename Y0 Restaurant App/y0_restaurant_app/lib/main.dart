import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:firebase_core/firebase_core.dart';

import 'core/theme/app_theme.dart';
import 'core/router/app_router.dart';
import 'core/locale/locale_cubit.dart';
import 'l10n/app_localizations.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  // Initialize Firebase (will be completed in Phase 2)
  await Firebase.initializeApp();
  
  runApp(const Y0RestaurantApp());
}

class Y0RestaurantApp extends StatelessWidget {
  const Y0RestaurantApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        // Locale cubit for managing app language
        BlocProvider(
          create: (context) => LocaleCubit()..loadSavedLocale(),
        ),
        // Additional BLoC providers will be added in subsequent phases
      ],
      child: BlocBuilder<LocaleCubit, LocaleState>(
        builder: (context, state) {
          Locale? currentLocale;
          if (state is LocaleChanged) {
            currentLocale = state.locale;
          }

          return MaterialApp.router(
            title: 'Y0 Restaurant',
            
            // Router configuration
            routerConfig: AppRouter.router,
            
            // Theme configuration
            theme: AppTheme.lightTheme(),
            darkTheme: AppTheme.darkTheme(),
            themeMode: ThemeMode.system, // Will be made dynamic in Phase 2
            
            // Localization configuration
            locale: currentLocale,
            localizationsDelegates: const [
              AppLocalizations.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: const [
              Locale('en'), // English
              Locale('ar'), // Arabic
            ],
            
            // Debug configuration
            debugShowCheckedModeBanner: false,
            
            // Builder for custom theming and text direction
            builder: (context, child) {
              final locale = Localizations.localeOf(context);
              final isArabic = locale.languageCode == 'ar';
              
              return Directionality(
                textDirection: isArabic ? TextDirection.rtl : TextDirection.ltr,
                child: child!,
              );
            },
          );
        },
      ),
    );
  }
}
