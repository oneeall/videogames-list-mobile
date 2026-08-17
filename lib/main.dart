import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/cubit/dummies_cubit.dart';
import 'core/navigation/app_router.dart';
import 'features/games/presentation/bloc/games_list/games_list_bloc.dart';
import 'injection.dart';

void main() {
  setupDependencies();
  runApp(const PS5GamesApp());
}

class PS5GamesApp extends StatelessWidget {
  const PS5GamesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider.value(value: serviceLocator<DummiesCubit>()),
        BlocProvider(create: (_) => serviceLocator<GamesListBloc>()),
      ],
      child: MaterialApp.router(
        title: 'PS5 Games',
        theme: ThemeData(useMaterial3: true, colorSchemeSeed: Colors.blue),
        darkTheme: ThemeData.dark(useMaterial3: true),
        // Retrieve the router from the service locator
        routerConfig: serviceLocator<AppRouter>().router,
      ),
    );
  }
}
