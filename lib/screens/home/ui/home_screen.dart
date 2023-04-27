import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:solid_example/database/hives/auth_database.dart';
import 'package:solid_example/screens/home/controller/home_controller.dart';
import 'package:solid_example/services/auth_service/auth_service.dart';
import 'package:solid_example/services/example_service/example_service.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  late final HomeController controller;

  @override
  void initState() {

    /// All dependent object ,creation before creating controller on=bject
    const dependency = 'dependency';
    final exampleService = ExampleService(dependency: dependency);
    final authService = AuthService(authDatabase: AuthDatabase.instance, exampleService: exampleService);

    /// Create the controller object by injecting all dependent objects
    controller = HomeController(
      context: context,
      ref: ref,
      exampleService: exampleService,
      authService: authService,
    );

    controller.printExample();
    controller.executeAuthService();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
