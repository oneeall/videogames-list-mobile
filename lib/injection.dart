import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

// Basically GetIt instance but we name it serviceLocator
final serviceLocator = GetIt.instance;

void setupDependencies() {
  // Core
  serviceLocator.registerSingleton<Dio>(Dio());

  // will register repositories and blocs here..
}
