import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:solid_example/models/user/user_model.dart';

import '../../../services/auth_service/auth_service_base.dart';
import '../../../services/example_service/example_service_base.dart';

class HomeController {
  final BuildContext context;
  final WidgetRef ref;
  final ExampleServiceBase exampleService;
  final AuthServiceBase authService;

  HomeController({
    required this.context,
    required this.ref,
    required this.exampleService,
    required this.authService,
  });

  void printExample() {
    print('example string : ${exampleService.getExample()}');
    exampleService.getFutureExample().then((value) {
      print('example future string: $value');
    });
  }

  Future<void> executeAuthService() async {
    await authService.saveAuthInformation(authInfoMap: {});
    await authService.saveUserInformation(userModel: UserModel());
    await authService.getUserInformation();
  }
}
