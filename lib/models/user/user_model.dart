
/// A signle responsible class serve all necessary functionality for user
class UserModel{
  String? name;
  String? role;
  DateTime? dob;


  UserModel({this.name, this.role, this.dob});

  UserModel.fromJson(Map<String, dynamic> json){}
  Map<String, dynamic> toJson() => {};

  int getAge() {
    return 100;
  }
}