import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:widget_tests_app/widgets/text_field_widget.dart';

void main() {
  group('TextField widgets test', () {
    testWidgets('TestField must be filled with correct email', (
      widgetTester,
    ) async {
      await widgetTester.pumpWidget(MaterialApp(home: TextFieldWidget()));
      final textFormField = find.byType(TextFormField);
      await widgetTester.enterText(textFormField, 'abc2344@gmail.com');
      expect(find.text('abc2344@gmail.com'), findsOneWidget);
    });
  });
}
