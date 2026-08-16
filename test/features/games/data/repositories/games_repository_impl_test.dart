import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:videogames_list_mobile/core/error/failures.dart';
import 'package:videogames_list_mobile/core/utils/result.dart';
import 'package:videogames_list_mobile/features/games/data/datasources/games_remote_data_source.dart';
import 'package:videogames_list_mobile/features/games/data/models/game_model.dart';
import 'package:videogames_list_mobile/features/games/data/repositories/games_repository_impl.dart';
import 'package:videogames_list_mobile/features/games/domain/entities/game.dart';

class MockGamesRemoteDataSource extends Mock implements GamesRemoteDataSource {}

void main() {
  late MockGamesRemoteDataSource mockDataSource;
  late GamesRepositoryImpl repository;

  setUp(() {
    mockDataSource = MockGamesRemoteDataSource();
    repository = GamesRepositoryImpl(mockDataSource);
  });

  group('getLatestPs5Games', () {
    final tGameModels = [
      GameModel(id: 1, name: 'Returnal'),
      GameModel(id: 2, name: 'Ratchet & Clank'),
    ];
    final tGames = <Game>[
      const Game(id: 1, name: 'Returnal'),
      const Game(id: 2, name: 'Ratchet & Clank'),
    ];

    test(
      'should return Success with a list of Game entities when data source succeeds',
          () async {
        // Arrange
        when(() => mockDataSource.getPs5Games(any()))
            .thenAnswer((_) async => tGameModels);

        // Act
        final result = await repository.getLatestPs5Games(page: 1);

        // Assert
        expect(result, isA<Success<List<Game>>>());

        // Verify the data inside Success is the mapped entities
        final successResult = result as Success<List<Game>>;
        expect(successResult.data.length, 2);
        expect(successResult.data.first.id, tGames.first.id);
        verify(() => mockDataSource.getPs5Games(1)).called(1);
      },
    );

    test(
      'should return Error with NetworkFailure when a connection timeout occurs',
          () async {
        // Arrange
        when(() => mockDataSource.getPs5Games(any())).thenThrow(
          DioException(
            type: DioExceptionType.connectionTimeout,
            message: 'Connection Timeout', requestOptions: RequestOptions(),
          ),
        );

        // Act
        final result = await repository.getLatestPs5Games(page: 1);

        // Assert
        expect(result, isA<Error<List<Game>>>());

        final errorResult = result as Error<List<Game>>;
        expect(errorResult.failure, isA<NetworkFailure>());
      },
    );

    test(
      'should return Error with ServerFailure when a 500 HTTP error occurs',
          () async {
        // Arrange
        when(() => mockDataSource.getPs5Games(any())).thenThrow(
          DioException(
            requestOptions: RequestOptions(path: '/games'),
            response: Response(
              requestOptions: RequestOptions(path: '/games'),
              statusCode: 500,
            ),
            type: DioExceptionType.badResponse,
          ),
        );

        // Act
        final result = await repository.getLatestPs5Games(page: 1);

        // Assert
        expect(result, isA<Error<List<Game>>>());

        final errorResult = result as Error<List<Game>>;
        expect(errorResult.failure, isA<ServerFailure>());
      },
    );
  });
}