import 'package:solid_example/apis/repositories/auth_repository/auth_repo_base.dart';
import 'package:solid_example/dto/login_dto.dart';

class AuthRepo implements AuthRepoBase{
  @override
  Future<bool> login({required LoginDTO dto}) async {
    return true;
  }

}