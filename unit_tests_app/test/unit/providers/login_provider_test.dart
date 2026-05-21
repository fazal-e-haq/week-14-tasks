import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:unit_tests_app/providers/login_provider.dart';
import 'package:unit_tests_app/services/api_service.dart';

import 'login_provider_test.mocks.dart';

void main() {
  late MockApiService mockApiService;
  late LoginProvider loginProvider;

  setUp(() {
    mockApiService = MockApiService();
    loginProvider = LoginProvider(mockApiService);
  });

  test('Login correctly', () async {
    when(
      mockApiService.login('testing@gmail.com', 'testing123'),
    ).thenAnswer((realInvocation) async => 'Login Success');

    await loginProvider.login('testing@gmail.com', 'testing123');

    expect(loginProvider.message, 'Login Success');
    expect(loginProvider.isLoading, false);
  });
}
