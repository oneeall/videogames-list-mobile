import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:videogames_list_mobile/core/error/failures.dart';
import 'package:videogames_list_mobile/core/utils/result.dart';
import 'package:videogames_list_mobile/features/games/domain/entities/game.dart';
import 'package:videogames_list_mobile/features/games/domain/usecases/get_latest_ps5_games.dart';
import 'package:videogames_list_mobile/features/games/presentation/bloc/games_list/games_list_bloc.dart';
import 'package:videogames_list_mobile/features/games/presentation/bloc/games_list/games_list_event.dart';
import 'package:videogames_list_mobile/features/games/presentation/bloc/games_list/games_list_state.dart';

class MockGetLatestPs5Games extends Mock implements GetLatestPs5Games {}

void main() {
  late MockGetLatestPs5Games mockUseCase;

  setUp(() {
    mockUseCase = MockGetLatestPs5Games();
  });

  final tGames = [
    const Game(id: 1, name: 'Returnal'),
    const Game(id: 2, name: 'Ratchet & Clank'),
  ];

  group('GamesListBloc', () {
    blocTest<GamesListBloc, GamesListState>(
      'emits [Initial, Loading, Loaded] when FetchGames succeeds',
      build: () {
        // Mock the UseCase to return a Success result
        when(() => mockUseCase(page: any(named: 'page')))
            .thenAnswer((_) async => Success(tGames));
        return GamesListBloc(getLatestPs5Games: mockUseCase);
      },
      act: (bloc) => bloc.add(const FetchGames()),
      expect: () => [
        const GamesListInitial(),
        const GamesListLoading(),
        GamesListLoaded(games: tGames, hasReachedMax: false),
      ],
      verify: (_) {
        verify(() => mockUseCase(page: 1)).called(1);
      },
    );

    blocTest<GamesListBloc, GamesListState>(
      'emits [Initial, Loading, Error] when FetchGames fails',
      build: () {
        // Mock the UseCase to return an Error result
        when(() => mockUseCase(page: any(named: 'page')))
            .thenAnswer((_) async => const Error(ServerFailure('API Down')));
        return GamesListBloc(getLatestPs5Games: mockUseCase);
      },
      act: (bloc) => bloc.add(const FetchGames()),
      expect: () => [
        const GamesListInitial(),
        const GamesListLoading(),
        const GamesListError(message: 'API Down'),
      ],
    );
  });
}