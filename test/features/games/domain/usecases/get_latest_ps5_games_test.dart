import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:videogames_list_mobile/features/games/domain/entities/game.dart';
import 'package:videogames_list_mobile/features/games/domain/repositories/games_repository.dart';
import 'package:videogames_list_mobile/features/games/domain/usecases/get_latest_ps5_games.dart';

/// create a mock class for repository
class MockGamesRepository extends Mock implements GamesRepository{}


void main() {
  late MockGamesRepository mockGamesRepository;
  late GetLatestPs5Games getLatestPs5GamesUseCase;
  
  /// setup runs before every test
  setUp(() {
    mockGamesRepository = MockGamesRepository();
    getLatestPs5GamesUseCase = GetLatestPs5Games(mockGamesRepository);
  });
  
  group('GetLatestPs5Games use case', () {
    final tGames = <Game>[
      Game(id: 1, name: 'Game 1'),
      Game(id: 2, name: 'Game 2'),
    ];

    test(
      'should get a list of games from the repo when called',
        () async {
          /// arrange
          when(() => mockGamesRepository.getLatestPs5Games(page: any(named: 'page'))).thenAnswer((_) async => tGames);

          /// act
          final result = await getLatestPs5GamesUseCase(page: 1);

          /// assert
          /// verify the use case returned the data
          expect(result, tGames);

          /// verify the repository was called
          verify(() => mockGamesRepository.getLatestPs5Games(page: 1)).called(1);

        }
    );
  });
}