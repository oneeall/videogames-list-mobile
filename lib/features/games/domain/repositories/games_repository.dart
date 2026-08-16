import 'package:videogames_list_mobile/core/utils/result.dart';

import '../entities/game.dart';

/// Contract defining the data operations for Games
abstract class GamesRepository {
  /// fetches a paginated list of the latest PS5 games
  /// [page] - page number (start at 1)
  Future<Result<List<Game>>> getLatestPs5Games({int page = 1});
  /// fetches detailed information about a game specific
  /// [id] - game id
  Future<Result<Game>> getGameDetails(int id);
}