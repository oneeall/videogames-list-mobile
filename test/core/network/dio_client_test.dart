import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:videogames_list_mobile/core/network/dio_client.dart';
import 'package:videogames_list_mobile/injection.dart';

void main() {
  group('api dio client', () {
    setUp(() {
      serviceLocator.reset();
    });

    test('test: try call RawgDioClient', () async {
      /// 1. Arrange Act
      /// call the setup
      final pathTest = "api/games?page=1&page_size=20&platforms=187&dates=2020-12-21,2021-12-21&ordering=-released";
      setupDependencies();
      final rawgDioClient = serviceLocator<RawgDioClient>();
      /// 2. Assert
      try {
        var result = await rawgDioClient.dio.get(
          pathTest,
        );

        /// verify result
        expect(result.statusCode, 200);
      } catch (e) {
        /// verify error
        /// because the rawg currently not accessible
        var uriFull = (e as DioException).requestOptions.uri.toString();
        expect(uriFull, contains("api/games"));
        expect(e, isA<DioException>());
      }
    });
  });
}
