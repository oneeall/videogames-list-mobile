import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:videogames_list_mobile/injection.dart';

void main() {
  group('Service Locator', () {
    setUp(() {
      // Prevent duplicate registration, do reset each test
      serviceLocator.reset();
    });

    test('smoke test: should resolve core dependencies without throwing', () {
      // 1. Arrange Act
      // call the setup
      setupDependencies();
      // 2. Assert
      expect(serviceLocator.isRegistered<Dio>(), isTrue);

      // try to actual resolve it. if it fails, the test fails.
      final dio = serviceLocator<Dio>();
      expect(dio, isA<Dio>());
    });
  });
}