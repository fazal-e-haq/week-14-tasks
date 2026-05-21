class Validator {
  bool isEmailValid(String email) {
    return email.endsWith('@gmail.com');
  }

  bool isPasswordValid(String password) {
    return password.length >= 8;
  }
}
