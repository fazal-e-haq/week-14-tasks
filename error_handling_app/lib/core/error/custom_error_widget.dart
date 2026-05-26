import 'package:flutter/material.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({
    super.key,
    required this.message,
    required this.onRetry,
  });

  final String message;
  final VoidCallback onRetry;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Custom Error Widget')),
      body: Center(

        child: Column(
        mainAxisAlignment: .center,
          crossAxisAlignment: .center,
          children: [
            const Icon(Icons.error),
            const SizedBox(height: 10),
            Text(message.toString()),
            const SizedBox(height: 10),
            ElevatedButton(onPressed: onRetry, child: const Text('Retry')),
          ],
        ),
      ),
    );
  }
}
