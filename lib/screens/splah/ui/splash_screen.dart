import 'package:flutter/material.dart';
import 'package:solid_example/navigators/app_navigator.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  Future<void> _navigateToHomeScreen() async {
    await Future.delayed(const Duration(seconds: 2));
    AppNavigator.navigatorKey.currentState?.pushNamed(RouteNames.homeScreen);
  }

  @override
  Widget build(BuildContext context) {

    _navigateToHomeScreen();

    return Scaffold(
      backgroundColor: Colors.purple.shade900,
      body: const Center(
        child: Icon(
          Icons.sports_baseball_rounded,
          size: 32,
          color: Colors.blueGrey,
        ),
      ),
    );
  }
}
