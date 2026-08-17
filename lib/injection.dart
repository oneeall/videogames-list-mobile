import 'package:get_it/get_it.dart';
import 'package:videogames_list_mobile/core/cubit/dummies_cubit.dart';
import 'package:videogames_list_mobile/core/navigation/app_router.dart';
import 'package:videogames_list_mobile/core/network/dio_client.dart';
import 'package:videogames_list_mobile/features/games/data/datasources/games_remote_data_source.dart';
import 'package:videogames_list_mobile/features/games/presentation/bloc/games_list/games_list_bloc.dart';

import 'features/games/data/repositories/games_repository_impl.dart';
import 'features/games/domain/repositories/games_repository.dart';
import 'features/games/domain/usecases/get_game_details.dart';
import 'features/games/domain/usecases/get_latest_ps5_games.dart';
import 'features/games/presentation/bloc/game_detail/game_detail_bloc.dart';

// Basically GetIt instance but we name it serviceLocator
final serviceLocator = GetIt.instance;

void setupDependencies() {
  // Core
  ///TODO change dioclient to lazy
  serviceLocator.registerSingleton<RawgDioClient>(RawgDioClient());
  serviceLocator.registerLazySingleton<AppRouter>(() => AppRouter());
  serviceLocator.registerSingleton<DummiesCubit>(DummiesCubit());
  // will register repositories and blocs here..

  // Data
  serviceLocator.registerLazySingleton<GamesRemoteDataSource>(
    () => GamesRemoteDataSource(
      serviceLocator<RawgDioClient>(),
      serviceLocator<DummiesCubit>(),
    ),
  );
  serviceLocator.registerLazySingleton<GamesRepository>(
    () => GamesRepositoryImpl(serviceLocator<GamesRemoteDataSource>()),
  );

  // Domain
  serviceLocator.registerLazySingleton(() => GetLatestPs5Games(serviceLocator<GamesRepository>()));
  serviceLocator.registerLazySingleton(() => GetGameDetails(serviceLocator<GamesRepository>()));

  // Presentation
  serviceLocator.registerFactory(
    () => GamesListBloc(getLatestPs5Games: serviceLocator()),
  );
  serviceLocator.registerFactory(() => GameDetailBloc(getGameDetails: serviceLocator()));
}
