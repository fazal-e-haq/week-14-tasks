import 'package:flutter/material.dart';

import 'cart_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int cartCount = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart : $cartCount'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CartScreen(cartCount: cartCount),
                ),
              );
            },
            icon: Icon(Icons.shopping_cart),
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: .symmetric(horizontal: 18),
          child: Center(
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  cartCount++;
                });
              },
              child: const Text('Add to cart'),
            ),
          ),
        ),
      ),
    );
  }
}
