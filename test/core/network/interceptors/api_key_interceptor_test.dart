import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:videogames_list_mobile/core/network/interceptors/api_key_interceptor.dart';

class MockRequestInterceptorHandler extends Mock implements RequestInterceptorHandler{}

void main() {
  late ApiKeyInterceptor interceptor;
  late MockRequestInterceptorHandler mockHandler;

  setUp(() {
    interceptor = ApiKeyInterceptor();
    mockHandler = MockRequestInterceptorHandler();
  });

  group('test: api key interceptor', () {
    test('should add API key to query parameters on request', () {
      /// arrange
      /// create a dummy RequestOptions
      final requestOptions = RequestOptions(
        path: '/games',
      );

      /// act
      /// trigger the interceptor onRequest method
      interceptor.onRequest(requestOptions, mockHandler);

      /// assert
      /// verify the API key was added to the query parameters
      expect(requestOptions.queryParameters['key'], isNotNull);
      expect(requestOptions.queryParameters['key'], isA<String>());

      /// verify that the handler was called to continue the request chain
      verify(() => mockHandler.next(requestOptions)).called(1);
    });
  });
}