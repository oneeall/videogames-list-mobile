import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:videogames_list_mobile/core/error/failures.dart';
import 'package:videogames_list_mobile/core/utils/result.dart';
import 'package:videogames_list_mobile/features/games/domain/entities/game.dart';
import 'package:videogames_list_mobile/features/games/domain/repositories/games_repository.dart';
import 'package:videogames_list_mobile/features/games/domain/usecases/get_game_details.dart';

class MockGamesRepository extends Mock implements GamesRepository {}

void main() {
  late MockGamesRepository mockRepository;
  late GetGameDetails usecase;

  setUp(() {
    mockRepository = MockGamesRepository();
    usecase = GetGameDetails(mockRepository);
  });

  const tId = 1;
  const tGame = Game(
    id: 1,
    name: 'Returnal',
    description: 'A roguelike shooter.',
    genres: ['Action', 'Shooter'],
  );

  group('GetGameDetails Use Case', () {
    test(
      'should return Success with Game entity when repository call succeeds',
          () async {
        // Arrange
        when(() => mockRepository.getGameDetails(tId))
            .thenAnswer((_) async => const Success(tGame));

        // Act
        final result = await usecase(tId);

        // Assert
        expect(result, isA<Success<Game>>());
        expect((result as Success<Game>).data, tGame);
        verify(() => mockRepository.getGameDetails(tId)).called(1);
        verifyNoMoreInteractions(mockRepository);
      },
    );

    test(
      'should return Error with Failure when repository call fails',
          () async {
        // Arrange
        const failure = ServerFailure('Game not found');
        when(() => mockRepository.getGameDetails(tId))
            .thenAnswer((_) async => const Error(failure));

        // Act
        final result = await usecase(tId);

        // Assert
        expect(result, isA<Error<Game>>());
        expect((result as Error<Game>).failure, failure);
        verify(() => mockRepository.getGameDetails(tId)).called(1);
        verifyNoMoreInteractions(mockRepository);
      },
    );
  });
}