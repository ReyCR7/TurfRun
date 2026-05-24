// lib/main.dart
// PURPOSE: The entry point of the entire Flutter app.
// This file wires everything together:
//   - Applies the dark neon theme
//   - Registers all named routes (screens)
//   - Sets the initial route to the splash screen

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'theme/app_theme.dart';
import 'routes/app_routes.dart';
import 'screens/splash_screen.dart';
import 'screens/login_screen.dart';
import 'screens/signup_screen.dart';
import 'screens/main_shell.dart';
import 'screens/activity_summary_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  // Force portrait orientation on mobile
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  // Make status bar transparent to blend with our dark theme
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.light,
  ));

  runApp(const TurfRunApp());
}

class TurfRunApp extends StatelessWidget {
  const TurfRunApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TurfRun',
      debugShowCheckedModeBanner: false,

      // Apply the centralized dark neon theme
      theme: AppTheme.darkTheme,

      // Start at splash screen
      initialRoute: AppRoutes.splash,

      // All screens registered here — add new screens in AppRoutes first
      routes: {
        AppRoutes.splash:   (_) => const SplashScreen(),
        AppRoutes.login:    (_) => const LoginScreen(),
        AppRoutes.signup:   (_) => const SignupScreen(),
        AppRoutes.main:     (_) => const MainShell(),
        AppRoutes.activity: (_) => const ActivitySummaryScreen(),
      },
    );
  }
}
