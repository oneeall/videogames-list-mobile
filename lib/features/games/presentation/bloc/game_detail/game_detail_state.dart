import 'package:dart_mappable/dart_mappable.dart';

import '../../../domain/entities/game.dart';

part 'game_detail_state.mapper.dart';

@MappableClass()
sealed class GameDetailState with GameDetailStateMappable {
  const GameDetailState();
}

@MappableClass()
class GameDetailInitial extends GameDetailState with GameDetailInitialMappable {
  const GameDetailInitial();
}

@MappableClass()
class GameDetailLoading extends GameDetailState with GameDetailLoadingMappable {
  const GameDetailLoading();
}

@MappableClass()
class GameDetailLoaded extends GameDetailState with GameDetailLoadedMappable {
  final Game game;

  const GameDetailLoaded(this.game);
}

@MappableClass()
class GameDetailError extends GameDetailState with GameDetailErrorMappable {
  final String message;
  final int gameId;

  const GameDetailError(this.message, this.gameId);
}
