import 'package:flutter/material.dart';

import 'core/navigation/app_router.dart';
import 'injection.dart';

void main() {
  setupDependencies();
  runApp(const PS5GamesApp());
}


class PS5GamesApp extends StatelessWidget {
  const PS5GamesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'PS5 Games',
      theme: ThemeData(useMaterial3: true, colorSchemeSeed: Colors.blue),
      darkTheme: ThemeData.dark(useMaterial3: true),
      // Retrieve the router from the service locator
      routerConfig: serviceLocator<AppRouter>().router,
      // Provide the GamesListBloc globally for the home page
      builder: (context, child) {
       return child!;
      },
    );
  }
}

