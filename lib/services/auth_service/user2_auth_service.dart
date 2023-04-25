import 'package:solid_example/models/user/user_model.dart';
import 'package:solid_example/services/auth_service/auth_base.dart';

class User2AuthService implements AuthBase{
  @override
  Future<UserModel> getUserInformation() {
    // TODO: implement getUserInformation
    throw UnimplementedError();
  }

  @override
  Future<void> saveAuthInformation({required Map<String, String> authInfoMap}) {
    // TODO: implement saveAuthInformation
    throw UnimplementedError();
  }

  @override
  Future<void> saveUserInformation({required UserModel userModel}) {
    // TODO: implement saveUserInformation
    throw UnimplementedError();
  }

}