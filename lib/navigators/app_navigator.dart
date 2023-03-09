import 'package:flutter/material.dart';
import 'package:solid_example/screens/splah/ui/splash_screen.dart';


import '../screens/home/ui/home_screen.dart';

class RouteNames {
  RouteNames._();

  static const splashScreen = '/splash-screen';
  static const homeScreen = '/home-screen';
}

class AppNavigator {
  AppNavigator._();

  static final navigatorKey = GlobalKey<NavigatorState>();
  static final scaffoldMessengerKey = GlobalKey<ScaffoldMessengerState>();

  static Route<dynamic> generateRoutes(RouteSettings settings) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) {
        return getScreenByName(settings.name, settings.arguments);
      },
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return FadeTransition(
          alwaysIncludeSemantics: true,
          opacity: animation,
          child: child,
        );
      },
    );
  }

  static dynamic getScreenByName(String? name, Object? arguments) {
    switch (name) {
      case RouteNames.splashScreen:
        return const SplashScreen();
      case RouteNames.homeScreen:
        return const HomeScreen();
      default:
        return const SplashScreen();
    }
  }
}
