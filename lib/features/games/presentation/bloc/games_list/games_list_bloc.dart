import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:videogames_list_mobile/core/utils/result.dart';
import 'package:videogames_list_mobile/features/games/domain/entities/game.dart';
import 'package:videogames_list_mobile/features/games/domain/usecases/get_latest_ps5_games.dart';

import 'games_list_event.dart';
import 'games_list_state.dart';

class GamesListBloc extends Bloc<GamesListEvent, GamesListState> {
  final GetLatestPs5Games getLatestPs5Games;

  int _currentPage = 1;
  bool _hasReachedMax = false;

  GamesListBloc({required this.getLatestPs5Games})
    : super(const GamesListInitial()) {
    on<FetchGames>(_onFetchGames);
    on<FetchMoreGames>(_onFetchMoreGames);
  }

  void _onFetchGames(FetchGames event, Emitter<GamesListState> emit) async {
    emit(const GamesListInitial());


    _currentPage = 1;
    _hasReachedMax = false;

    emit(const GamesListLoading());
    final result = await getLatestPs5Games(page: _currentPage);

    switch (result) {
      case Success(data: final games):
        _hasReachedMax = games.isEmpty; // expect if empty, we have reached max
        emit(
          GamesListLoaded(
            games: games,
            hasReachedMax: _hasReachedMax,
            currentPage: _currentPage,
          ),
        );
      case Error(failure: final failure):
        emit(GamesListError(message: failure.message));
    }
  }

  void _onFetchMoreGames(
    FetchMoreGames event,
    Emitter<GamesListState> emit,
  ) async {
    final currentState = state;

    int pageToFetch;
    List<Game> currentGames;

    if (currentState is GamesListLoaded) {
      if (currentState.hasReachedMax) return;
      pageToFetch = currentState.currentPage + 1;
      currentGames = currentState.games;
    } else if (currentState is GamesListError &&
        currentState.previousGames != null) {
      pageToFetch = (currentState.currentPage ?? 1) + 1;
      currentGames = currentState.previousGames!;
    } else {
      return;
    }

    final result = await getLatestPs5Games(page: pageToFetch);

    switch (result) {
      case Success(data: final games):
        emit(
          GamesListLoaded(
            games: [...currentGames, ...games],
            hasReachedMax: games.isEmpty,
            currentPage: pageToFetch,
          ),
        );
      case Error(failure: final failure):
        emit(
          GamesListError(
            message: failure.message,
            previousGames: currentGames,
            currentPage: pageToFetch - 1,
          ),
        );
    }
  }
}
