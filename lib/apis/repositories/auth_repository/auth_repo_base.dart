import 'package:solid_example/dto/login_dto.dart';

abstract class AuthRepoBase{
  Future<bool> login({required LoginDTO dto});
}