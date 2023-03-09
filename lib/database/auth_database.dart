import '../models/user_model.dart';

class AuthDatabase {
  static AuthDatabase? _instance;

  AuthDatabase._();

  static AuthDatabase get instance => _instance ??= AuthDatabase._();

  Future<void> saveAuthInformation({required Map<String, String> authInfoMap}) async {
    print('Auth information saved');
  }

  Future<void> saveUserInformation({required UserModel userModel}) async {
    print('User information saved');
  }

  Future<UserModel> getUserInformation() async {
    return UserModel();
  }
}
