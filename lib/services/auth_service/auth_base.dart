/// Single responsibility & Open Close

import '../../models/user/user_model.dart';

abstract class AuthBase {
  Future<void> saveAuthInformation({required Map<String, String> authInfoMap});

  Future<void> saveUserInformation({required UserModel userModel});

  Future<UserModel> getUserInformation();
}
