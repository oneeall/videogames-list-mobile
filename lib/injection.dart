import 'package:get_it/get_it.dart';
import 'package:videogames_list_mobile/core/navigation/app_router.dart';
import 'package:videogames_list_mobile/core/network/dio_client.dart';

// Basically GetIt instance but we name it serviceLocator
final serviceLocator = GetIt.instance;

void setupDependencies() {
  // Core
  ///TODO change dioclient to lazy
  serviceLocator.registerSingleton<RawgDioClient>(RawgDioClient());
  serviceLocator.registerLazySingleton<AppRouter>(() => AppRouter());
  // will register repositories and blocs here..
}
