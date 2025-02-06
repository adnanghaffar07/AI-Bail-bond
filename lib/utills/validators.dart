class Validators {
  static bool isEmailValid(String email) {
    return RegExp(r"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}\$")
        .hasMatch(email);
  }

  static bool isPasswordValid(String password) {
    return password.length >= 6;
  }
}
