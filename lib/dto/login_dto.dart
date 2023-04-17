class LoginDTO{
  final String userName;
  final String password;

  LoginDTO({required this.userName, required this.password});

  Map<String, dynamic> toPayload(){
    final data = <String, dynamic>{
      'user_name': userName,
      'password': password,
    };
    return data;
  }
}