import 'package:videogames_list_mobile/core/utils/result.dart';
import 'package:videogames_list_mobile/features/games/domain/repositories/games_repository.dart';

import '../entities/game.dart';

/// Use case for fetching the latest PS5 games.
class GetLatestPs5Games {
  final GamesRepository repository;

  GetLatestPs5Games(this.repository);

  /// fetches a paginated list of the latest PS5 games
  /// [page] - page number (start at 1)
  Future<Result<List<Game>>> call({required int page}) async {
    return await repository.getLatestPs5Games(page: page);
  }
}
