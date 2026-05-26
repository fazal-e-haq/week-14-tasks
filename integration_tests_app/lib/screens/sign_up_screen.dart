import 'package:flutter/material.dart';
import 'package:integration_tests_app/screens/cart_screen.dart';
import 'package:integration_tests_app/screens/home_screen.dart';
import 'package:integration_tests_app/screens/sign_in_screen.dart';
import 'package:integration_tests_app/screens/sign_up_screen.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('SignUp')),
      body: SafeArea(
        child: Padding(
          padding: .symmetric(horizontal: 18),
          child: Column(
            children: [
              const SizedBox(height: 50),
              TextField(
                key: Key('signUp_email'),
                decoration: const InputDecoration(labelText: 'Email'),
              ),
              const SizedBox(height: 20),
              TextField(
                key: Key('signUp_password'),
                decoration: const InputDecoration(labelText: 'Password'),
              ),
              const SizedBox(height: 50),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  key: const Key('signUp_button'),
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => SignInScreen()),
                    );
                  },
                  child: Text('Sign Up'),
                ),
              ),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: .center,
                children: [
                  const Text('Have an account ?'),
                  TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => SignInScreen()),
                      );
                    },
                    child: const Text('Sign In'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
