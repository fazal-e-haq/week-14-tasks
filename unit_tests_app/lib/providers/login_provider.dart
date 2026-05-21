import 'package:flutter/material.dart';
import 'package:unit_tests_app/services/api_service.dart';

class LoginProvider with ChangeNotifier {

  final  ApiService  apiService;
  LoginProvider(this.apiService);

  bool isLoading = false;
  String message = '';
  Future<void> login(String email, String password) async {
    isLoading = true;
    notifyListeners();
    message = await apiService.login(email, password);

    isLoading = false;
    notifyListeners();
  }
}
