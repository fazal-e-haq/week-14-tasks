import 'package:flutter_test/flutter_test.dart';
import 'package:unit_tests_app/utils/validator.dart';

void main() {
  group('Validator testing for email and password', () {
    test('valid email return true ', () {

      final email = Validator().isEmailValid('abc2323@gmail.com');

      expect(email, true);
    });
    test('invalid email return false ', () {
      final validator = Validator();
      final email = validator.isEmailValid('abc2323@gmail');

      expect(email, false);
    });

    test('valid password return true', () {
       final password = Validator().isPasswordValid('abc2323sd');

      expect(password, true);
    });
    test('invalid password return false', () {

      final password = Validator().isPasswordValid('abc232');

      expect(password, false);
    });
  });
}
