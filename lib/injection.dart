import 'package:get_it/get_it.dart';
import 'package:videogames_list_mobile/core/network/dio_client.dart';

// Basically GetIt instance but we name it serviceLocator
final serviceLocator = GetIt.instance;

void setupDependencies() {
  // Core
  serviceLocator.registerSingleton<RawgDioClient>(RawgDioClient());

  // will register repositories and blocs here..
}
