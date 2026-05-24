import 'package:flutter/material.dart';

class TextFieldWidget extends StatefulWidget {
  const TextFieldWidget({super.key});

  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  static final controller = TextEditingController();

  String? error;
  final key = GlobalKey<FormState>();
  void validate() {
    setState(() {
      if (!key.currentState!.validate()) {
        error = 'Please enter email';
      } else if (!controller.text.endsWith('@gmail.com')) {
        error = 'Enter email correctly';
      } else {
        error = null;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 18.0,
            vertical: MediaQuery.of(context).size.height / 3 * 1,
          ),
          child: Form(
            key: key,
            child: Column(
              children: [
                TextFormField(
                  controller: controller,

                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Fill the field';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    errorText: error,
                    hintText: 'Enter email',
                    border: OutlineInputBorder(borderRadius: .circular(8)),
                  ),
                ),
                SizedBox(height: 30),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: validate,
                    child: Text('Submit'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
