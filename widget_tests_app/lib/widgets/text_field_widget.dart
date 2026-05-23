import 'package:flutter/material.dart';

class TextFieldWidget extends StatefulWidget {
  const TextFieldWidget({super.key});

  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  final controller = TextEditingController();

  String? error;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      onChanged: (value) {
        setState(() {
          if (controller.text.isEmpty) {
            error = 'Enter something';
          } else {
            error = null;
          }
        });
      },
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: .circular(20)),
      ),
    );
  }
}
