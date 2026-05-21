import 'package:flutter_test/flutter_test.dart';
import 'package:unit_tests_app/models/user_model.dart';

void main() {
  group('UserModel testing', () {
    test('Testing user model data toJson', () {
      final user = UserModel(
        name: 'Ali',
        age: 22,
        height: 5.8,
        email: 'ali3453@gmail.com',
      );
      final json = user.toJson();
      expect(json['name'], 'Ali');
      expect(json['age'], 22);
      expect(json['email'], 'ali3453@gmail.com');
      expect(json['height'], 5.8);
    });
    test('fromJson should create a valid object', () {
      final json = {
        'name': 'Alian',
        'age': 23,
        'height': 6.0,
        'email': 'alian3232@gmail.com',
      };
      final user = UserModel.fromjson(json);
      expect(user.name, 'Alian');
      expect(user.age, 23);
      expect(user.height, 6.0);
      expect(user.email, 'alian3232@gmail.com');
    });
  });
}
