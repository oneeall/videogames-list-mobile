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
    // for any(named: 'page') if not explicitly mocked
    registerFallbackValue(0);
  });

  final tGamesPage1 = [
    const Game(id: 1, name: 'Returnal'),
    const Game(id: 2, name: 'Ratchet & Clank'),
  ];
  final tGamesPage2 = [
    const Game(id: 3, name: 'Demon\'s Souls'),
    const Game(id: 4, name: 'Spider-Man 2'),
  ];

  group('GamesListBloc', () {
    blocTest<GamesListBloc, GamesListState>(
      'emits [Initial, Loading, Loaded] when FetchGames succeeds',
      build: () {
        // Mock the UseCase to return a Success result
        when(() => mockUseCase(page: any(named: 'page')))
            .thenAnswer((_) async => Success(tGamesPage1));
        return GamesListBloc(getLatestPs5Games: mockUseCase);
      },
      act: (bloc) => bloc.add(const FetchGames()),
      expect: () => [
        const GamesListInitial(),
        const GamesListLoading(),
        GamesListLoaded(games: tGamesPage1, hasReachedMax: false),
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

  group('GamesListBloc - Pagination (FetchMoreGames)', () {
    blocTest<GamesListBloc, GamesListState>(
      'emits [Loaded with appended games] when FetchMore succeeds',
      build: () {
        // Mock page 1 (just in case) and page 2
        when(() => mockUseCase(page: 1))
            .thenAnswer((_) async => Success(tGamesPage1));
        when(() => mockUseCase(page: 2))
            .thenAnswer((_) async => Success(tGamesPage2));
        return GamesListBloc(getLatestPs5Games: mockUseCase);
      },
      // Start the test as if page 1 is already loaded
      seed: () => GamesListLoaded(games: tGamesPage1, hasReachedMax: false),
      act: (bloc) => bloc.add(const FetchMoreGames()),
      expect: () => [
        // Appends page 2 games to page 1 games
        GamesListLoaded(
          games: [...tGamesPage1, ...tGamesPage2],
          hasReachedMax: false,
          currentPage: 2,
        ),
      ],
      verify: (_) {
        verify(() => mockUseCase(page: 2)).called(1);
      },
    );

    blocTest<GamesListBloc, GamesListState>(
      'emits [Loaded with hasReachedMax=true] when FetchMore returns empty list',
      build: () {
        when(() => mockUseCase(page: 2))
            .thenAnswer((_) async => const Success([]));
        return GamesListBloc(getLatestPs5Games: mockUseCase);
      },
      seed: () => GamesListLoaded(games: tGamesPage1, hasReachedMax: false),
      act: (bloc) => bloc.add(const FetchMoreGames()),
      expect: () => [
        // Returns the same games, but hasReachedMax flips to true
        GamesListLoaded(
          games: tGamesPage1,
          hasReachedMax: true,
          currentPage: 2,
        ),
      ],
    );

    blocTest<GamesListBloc, GamesListState>(
      'emits [Error with previousGames] when FetchMore fails',
      build: () {
        when(() => mockUseCase(page: 2))
            .thenAnswer((_) async => const Error(NetworkFailure()));
        return GamesListBloc(getLatestPs5Games: mockUseCase);
      },
      seed: () => GamesListLoaded(games: tGamesPage1, hasReachedMax: false),
      act: (bloc) => bloc.add(const FetchMoreGames()),
      expect: () => [
        // Emits error, but passes the previous games so UI can show a "Retry" button
        GamesListError(
          message: 'Network Failure',
          previousGames: tGamesPage1,
          currentPage: 1,
        ),
      ],
      verify: (_) {
        // Verify it tried page 2
        verify(() => mockUseCase(page: 2)).called(1);
      },
    );

    blocTest<GamesListBloc, GamesListState>(
      'does nothing when FetchMore is called but hasReachedMax is true',
      build: () {
        when(() => mockUseCase(page: any(named: 'page')))
            .thenAnswer((_) async => const Success([]));
        return GamesListBloc(getLatestPs5Games: mockUseCase);
      },
      // Seed with hasReachedMax: true
      seed: () => GamesListLoaded(games: tGamesPage1, hasReachedMax: true),
      act: (bloc) => bloc.add(const FetchMoreGames()),
      // Expect NO state changes
      expect: () => [],
      verify: (_) {
        // Verify the use case was NEVER called
        verifyNever(() => mockUseCase(page: any(named: 'page')));
      },
    );
  });
}
