class ApiService {
  Future<String> login(String email, String password) async {
    await Future.delayed(Duration(seconds: 2));
    return "Login success";
  }
}
