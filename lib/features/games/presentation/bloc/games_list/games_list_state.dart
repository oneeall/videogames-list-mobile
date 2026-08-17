import 'package:dart_mappable/dart_mappable.dart';
import 'package:videogames_list_mobile/features/games/domain/entities/game.dart';

part 'games_list_state.mapper.dart';

@MappableClass()
sealed class GamesListState with GamesListStateMappable {
  const GamesListState();
}

@MappableClass()
class GamesListInitial extends GamesListState with GamesListInitialMappable {
  const GamesListInitial();
}

@MappableClass()
class GamesListLoading extends GamesListState with GamesListLoadingMappable {
  const GamesListLoading();
}

@MappableClass()
class GamesListLoaded extends GamesListState with GamesListLoadedMappable {
  final List<Game> games;
  final bool hasReachedMax;
  final int currentPage;

  const GamesListLoaded({
    required this.games,
    required this.hasReachedMax,
    this.currentPage = 1,
  });
}

@MappableClass()
class GamesListError extends GamesListState with GamesListErrorMappable {
  final String message;
  final List<Game>? previousGames;
  final int? currentPage;

  const GamesListError({
    required this.message,
    this.previousGames,
    this.currentPage,
  });
}