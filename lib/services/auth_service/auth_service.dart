import 'package:solid_example/database/auth_database.dart';
import 'package:solid_example/models/user_model.dart';
import 'package:solid_example/services/auth_service/auth_service_base.dart';

class AuthService implements AuthServiceBase{
  final AuthDatabase authDatabase;

  AuthService({required this.authDatabase});

  @override
  Future<void> saveAuthInformation({required Map<String, String> authInfoMap}) async {
    ///TODO: Other logics
    return await authDatabase.saveAuthInformation(authInfoMap: authInfoMap);
  }

  @override
  Future<void> saveUserInformation({required UserModel userModel}) async {
    ///TODO: Other logics
    return await authDatabase.saveUserInformation(userModel: userModel);
  }

  @override
  Future<UserModel> getUserInformation() async {
    ///TODO: Other logics
    return await authDatabase.getUserInformation();
  }

}