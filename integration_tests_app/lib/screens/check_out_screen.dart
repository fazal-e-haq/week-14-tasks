import 'package:flutter/material.dart';

class CheckOutScreen extends StatelessWidget {
  const CheckOutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: const Text('Check out')),
        body: const Center(
          child: Text('Order Confirmed 🎉', style: TextStyle(fontSize: 24)),
        ),
      ),
    );
  }
}
