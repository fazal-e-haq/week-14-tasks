import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:integration_tests_app/main.dart' as app;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('Complete App test', (widgetTester) async {
    app.main();
    await widgetTester.pumpAndSettle(Duration(seconds: 2));

    expect(find.byKey(Key('signUp_email')), findsOneWidget);

    await widgetTester.enterText(
      find.byKey(Key('signUp_email')),
      'test2311@gmail.com',
    );
    await widgetTester.enterText(
      find.byKey(Key('signUp_password')),
      '24132413',
    );
    await widgetTester.tap(find.byKey(Key('signUp_button')));
    await widgetTester.pumpAndSettle(Duration(seconds: 2));
    // login
    expect(find.byKey(Key('signIn_email')), findsOneWidget);
    await widgetTester.enterText(
      find.byKey(Key('signIn_email')),
      'test2311@gmail.com',
    );
    await widgetTester.enterText(
      find.byKey(Key('signIn_password')),
      '24132413',
    );
    await widgetTester.tap(find.byKey(Key('signIn_button')));
    await widgetTester.pumpAndSettle(Duration(seconds: 2));

    //home
    expect(find.byType(IconButton), findsOneWidget);
    // add to cart

    await widgetTester.tap(find.text('Add to cart'));
    await widgetTester.pumpAndSettle(Duration(seconds: 2));
    expect(find.text('Cart : 1'), findsOneWidget);

    // cart

    await widgetTester.tap(find.byType(IconButton));
    await widgetTester.pumpAndSettle(Duration(seconds: 2));
    expect(find.text('Your cart'), findsOneWidget);

    // checkout
    await widgetTester.tap(find.text('Check out'));
    await widgetTester.pumpAndSettle(Duration(seconds: 2));
    expect(find.text('Order Confirmed 🎉'), findsOneWidget);
  });
}
