import 'package:flutter/material.dart';
import 'package:integration_tests_app/screens/home_screen.dart';
import 'package:integration_tests_app/screens/sign_up_screen.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('SignIn')),
      body: SafeArea(
        child: Padding(
          padding: .symmetric(horizontal: 18),
          child: Column(
            children: [
              const SizedBox(height: 50),
              TextField(
                key: Key('signIn_email'),
                decoration: const InputDecoration(labelText: 'Email'),
              ),
              const SizedBox(height: 20),
              TextField(
                key: Key('signIn_password'),
                decoration: const InputDecoration(labelText: 'Password'),
              ),
              const SizedBox(height: 50),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  key: const Key('signIn_button'),
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => HomeScreen()),
                    );
                  },
                  child: Text('Sign In'),
                ),
              ),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: .center,
                children: [
                  const Text('Do not have an account ?'),
                  TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => SignUpScreen()),
                      );
                    },
                    child: const Text('Sign Up'),
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
