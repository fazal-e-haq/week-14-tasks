import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:widget_tests_app/widgets/counter_widget.dart';
import 'package:widget_tests_app/widgets/text_field_widget.dart';

void main() {
  group('Testing screen switching ', () {
    testWidgets('On tap to show another screen', (widgetTester) async {
      await widgetTester.pumpWidget(MaterialApp(home: CounterWidget()));

      expect(find.byType(CounterWidget), findsOneWidget);

      await widgetTester.tap(find.byType(TextButton));
      await widgetTester.pumpAndSettle();
      expect(find.byType(TextFieldWidget), findsOneWidget);
    });
  });
}
