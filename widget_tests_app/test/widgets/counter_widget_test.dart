import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:widget_tests_app/widgets/counter_widget.dart';

void main() {
  group('Counter test', () {
    testWidgets('Increment in counter widget', (widgetTester) async {
      await widgetTester.pumpWidget(const MaterialApp(home: CounterWidget()));

      expect(find.text('0'), findsOneWidget);
      expect(find.text('1'), findsNothing);
      await widgetTester.tap(find.byIcon(Icons.add));
      await widgetTester.pumpAndSettle();
      expect(find.text('1'), findsOneWidget);
    });
    testWidgets('Decrement at zero should stay zero', (widgetTester) async {
      await widgetTester.pumpWidget(const MaterialApp(home: CounterWidget()));

      expect(find.text('0'), findsOneWidget);

      await widgetTester.tap(find.byIcon(Icons.remove));
      await widgetTester.pumpAndSettle();
      expect(find.text('0'), findsOneWidget);
    });
  });
}
