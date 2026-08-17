
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:videogames_list_mobile/features/games/presentation/pages/games_list_page.dart';

import '../../features/games/presentation/bloc/game_detail/game_detail_bloc.dart';
import '../../features/games/presentation/bloc/game_detail/game_detail_event.dart';
import '../../features/games/presentation/pages/game_detail_page.dart';
import '../../injection.dart';

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
      GoRoute(
        path: '/game/:id',
        name: 'gameDetail',
        builder: (context, state) {
          final id = int.tryParse(state.pathParameters['id'] ?? '') ?? 0;

          return BlocProvider(
            create: (_) => serviceLocator<GameDetailBloc>()..add(FetchGameDetail(id)),
            child: const GameDetailPage(),
          );
        },
      ),
    ],
    // Centralized error handling for unknown routes
    errorBuilder: (context, state) => Scaffold(
      appBar: AppBar(title: const Text('Page Not Found')),
      body: Center(child: Text(state.error?.toString() ?? 'Unknown error')),
    ),
  );
}