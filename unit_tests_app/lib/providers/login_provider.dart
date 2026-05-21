import 'package:flutter/material.dart';
import 'package:unit_tests_app/services/api_service.dart';

class LoginProvider with ChangeNotifier {
  final apiService = ApiService();
  bool isLoading = false;
  Future<void> login(String email, String password) async {
    isLoading = true;
    notifyListeners();
    await apiService.login(email, password);

    isLoading = false;
    notifyListeners();
  }
}
