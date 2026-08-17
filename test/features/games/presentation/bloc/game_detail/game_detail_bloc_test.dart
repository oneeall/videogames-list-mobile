import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:videogames_list_mobile/core/error/failures.dart';
import 'package:videogames_list_mobile/core/utils/result.dart';
import 'package:videogames_list_mobile/features/games/domain/entities/game.dart';
import 'package:videogames_list_mobile/features/games/domain/usecases/get_game_details.dart';
import 'package:videogames_list_mobile/features/games/presentation/bloc/game_detail/game_detail_bloc.dart';
import 'package:videogames_list_mobile/features/games/presentation/bloc/game_detail/game_detail_event.dart';
import 'package:videogames_list_mobile/features/games/presentation/bloc/game_detail/game_detail_state.dart';


class MockGetGameDetails extends Mock implements GetGameDetails {}

void main() {
  late MockGetGameDetails mockUseCase;

  setUp(() {
    mockUseCase = MockGetGameDetails();
  });

  const tId = 1;
  const tGame = Game(
    id: 1,
    name: 'Returnal',
    description: 'A roguelike shooter.',
    genres: ['Action', 'Shooter'],
  );

  group('GameDetailBloc', () {
    blocTest<GameDetailBloc, GameDetailState>(
      'emits [Initial, Loading, Loaded] when FetchGameDetail succeeds',
      build: () {
        when(() => mockUseCase(tId)).thenAnswer((_) async => const Success(tGame));
        return GameDetailBloc(getGameDetails: mockUseCase);
      },
      act: (bloc) => bloc.add(const FetchGameDetail(tId)),
      expect: () => [
        const GameDetailInitial(),
        const GameDetailLoading(),
        const GameDetailLoaded(tGame),
      ],
      verify: (_) {
        verify(() => mockUseCase(tId)).called(1);
      },
    );

    blocTest<GameDetailBloc, GameDetailState>(
      'emits [Initial, Loading, Error] when FetchGameDetail fails',
      build: () {
        when(() => mockUseCase(tId))
            .thenAnswer((_) async => const Error(ServerFailure('Game not found')));
        return GameDetailBloc(getGameDetails: mockUseCase);
      },
      act: (bloc) => bloc.add(const FetchGameDetail(tId)),
      expect: () => [
        const GameDetailInitial(),
        const GameDetailLoading(),
        const GameDetailError('Game not found'),
      ],
      verify: (_) {
        verify(() => mockUseCase(tId)).called(1);
      },
    );
  });
}