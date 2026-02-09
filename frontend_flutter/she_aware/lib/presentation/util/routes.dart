import 'package:flutter/material.dart';
import 'package:she_aware/presentation/screen/education/education_hub_screen.dart';
import 'package:she_aware/presentation/screen/home/home_screen.dart';
import 'package:she_aware/presentation/screen/main/main_screen.dart';
import 'package:she_aware/presentation/screen/my_health/my_health_screen.dart';
import 'package:she_aware/presentation/screen/splash/splash_screen.dart';
import 'package:she_aware/presentation/screen/onboarding/onboarding_screen.dart';
import 'package:she_aware/presentation/screen/support/support_resources_screen.dart';
import 'package:she_aware/presentation/screen/symptom/symptom_history_screen.dart';
import 'package:she_aware/presentation/screen/symptom/symptom_tracker_screen.dart';

class Routes {
  static const String splash = 'splash';
  static const String onboarding = 'onboarding';
  static const String main = 'main';
  static const String home = 'home';
  static const String symptomTracker = 'symptomTracker';
  static const String symptomHistory = 'symptomHistory';
  static const String myHealth = 'myHealth';
  static const String educationHub = 'educationHub';
  static const String supportResources = 'supportResources';

  static PageRoute generateRoutes(RouteSettings settings) {
    return PageRouteBuilder(
      settings: settings,
      pageBuilder: (context, animation, secondaryAnimation) {
        switch (settings.name) {
          case splash:
            return const SplashScreen();
          case onboarding:
             return const OnboardingScreen();
          case main:
            return const MainScreen();
          case home:
            return const HomeScreen();
          case symptomTracker:
            return const SymptomTrackerScreen();
          case symptomHistory:
            return const SymptomHistoryScreen();
          case myHealth:
            return const MyHealthScreen();
          case educationHub:
            return const EducationHubScreen();
          case supportResources:
            return const SupportResourcesScreen();
          default:
            return const MainScreen();
        }
      },
    );
  }
}
