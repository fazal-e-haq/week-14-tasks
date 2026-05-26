import 'package:error_handling_app/core/error/custom_error_widget.dart';
import 'package:error_handling_app/core/error/error_message.dart';
import 'package:error_handling_app/services/data_service.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final service = DataService();
  bool isLoading = false;
  String? error;
  String? data;

  Future<void> loadData() async {
    setState(() {
      isLoading = true;
      error = null;
    });

    try {
      final result = await service.fetchData();
      data = result;
    } catch (_) {
      error = ErrorMessage.unknow;
    } finally {
      isLoading = false;
      setState(() {});
    }
  }

  @override
  void initState() {
    super.initState();
    loadData();
  }

  @override
  Widget build(BuildContext context) {
    if (isLoading) {
      return const Scaffold(body: Center(child: CircularProgressIndicator()));
    }

    if (error != null) {
      return Scaffold(
        body: CustomErrorWidget(message: error!, onRetry: loadData),
      );
    }

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: const Text('Home')),
        body: Column(
          children: [
            Text(data ?? 'loaded'),
            ElevatedButton(
              onPressed: () {
                throw Exception('Test crash');
              },
              child: const Text('Crash App'),
            ),
          ],
        ),
      ),
    );
  }
}
