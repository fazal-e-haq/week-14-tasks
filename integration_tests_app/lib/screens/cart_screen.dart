import 'package:flutter/material.dart';
import 'package:integration_tests_app/screens/check_out_screen.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key, required this.cartCount});
 final  int cartCount;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Your cart')),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: .center,
            children: [
              Text('Items : $cartCount'),
              const SizedBox(height: 50),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CheckOutScreen()),
                    );
                  },
                  child: const Text('Check out'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
