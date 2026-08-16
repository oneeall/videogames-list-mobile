import 'package:videogames_list_mobile/core/constants/api_constants.dart';
import 'package:videogames_list_mobile/core/network/dio_client.dart';
import 'package:videogames_list_mobile/features/games/data/models/game_model.dart';

class GamesRemoteDataSource {
  final RawgDioClient rawgDioClient;

  GamesRemoteDataSource(this.rawgDioClient);

  Future<List<GameModel>> getPs5Games(int page) async {
    final response = await rawgDioClient.dio.get(
      '/games',
      queryParameters: {
        'platform': RawgApiConstants.ps5PlatformId,
        'ordering': '-released',
        'page': page,
        'page_size': RawgApiConstants.pageSize,
      },
    );

    /// get the list
    final result = response.data['results'] as List;

    return result.map((e) => GameModel.fromJson(e)).toList();
  }

  Future<GameModel> getGameDetails(int id) async {
    final response = await rawgDioClient.dio.get(
      '/games/$id',
    );
    return GameModel.fromJson(response.data);
  }
}
