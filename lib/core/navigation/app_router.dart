
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:videogames_list_mobile/features/games/presentation/pages/games_list_page.dart';

class AppRouter {
  GoRouter get router => _goRouter;


  late final GoRouter _goRouter = GoRouter(
    initialLocation: '/',
    debugLogDiagnostics: true, // Logs route changes in debug mode
    routes: [
      GoRoute(
        path: '/',
        name: 'home',
        builder: (context, state) => GamesListPage(),
      ),
    ],
    // Centralized error handling for unknown routes
    errorBuilder: (context, state) => Scaffold(
      appBar: AppBar(title: const Text('Page Not Found')),
      body: Center(child: Text(state.error?.toString() ?? 'Unknown error')),
    ),
  );
}