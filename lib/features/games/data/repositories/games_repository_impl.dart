import 'package:dio/dio.dart';
import 'package:videogames_list_mobile/core/error/failures.dart';
import 'package:videogames_list_mobile/core/utils/result.dart';
import 'package:videogames_list_mobile/features/games/data/datasources/games_remote_data_source.dart';
import 'package:videogames_list_mobile/features/games/domain/entities/game.dart';
import 'package:videogames_list_mobile/features/games/domain/repositories/games_repository.dart';

class GamesRepositoryImpl implements GamesRepository {
  final GamesRemoteDataSource remoteDataSource;

  GamesRepositoryImpl(this.remoteDataSource);

  @override
  Future<Result<Game>> getGameDetails(int id) async {
    return _handleError(() async {
      final model = await remoteDataSource.getGameDetails(id);
      return model.toEntity();
    });
  }

  @override
  Future<Result<List<Game>>> getLatestPs5Games({int page = 1}) async {
    return _handleError(() async {
      final models = await remoteDataSource.getPs5Games(page);
      return models.map((e) => e.toEntity()).toList();
    });
  }

  Future<Result<T>> _handleError<T>(Future<T> Function() call) async {
    try {
      final result = await call();
      return Success(result);
    } on DioException catch (e) {
      // Map Dio network/connection errors
      if (e.type == DioExceptionType.connectionTimeout ||
          e.type == DioExceptionType.connectionError ||
          e.type == DioExceptionType.receiveTimeout) {
        return const Error(NetworkFailure());
      }
      // Map Dio HTTP status errors
      else if (e.response?.statusCode != null) {
        return Error(
          ServerFailure('Server responded with ${e.response?.statusCode}'),
        );
      }
      // Fallback
      else {
        return Error(ServerFailure(e.message ?? 'Unknown error'));
      }
    } catch (e) {
      return Error(ParseFailure(e.toString()));
    }
  }
}
