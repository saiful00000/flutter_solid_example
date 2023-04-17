enum UserType {
  normalUser,
  abnormalUser,
}

class UserTypeUtils {
  static int toIntValue(UserType userType) {
    switch (userType) {
      case UserType.normalUser:
        return 1;
      case UserType.abnormalUser:
        return -1;
    }
  }
}
