import 'package:videogames_list_mobile/core/utils/result.dart';
import 'package:videogames_list_mobile/features/games/domain/entities/game.dart';
import 'package:videogames_list_mobile/features/games/domain/repositories/games_repository.dart';

class GetGameDetails {
  final GamesRepository repository;

  GetGameDetails(this.repository);

  /// Executes the use case.
  /// [id] - The unique identifier of the game.
  Future<Result<Game>> call(int id) async {
    return await repository.getGameDetails(id);
  }
}