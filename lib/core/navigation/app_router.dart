
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  GoRouter get router => _goRouter;


  late final GoRouter _goRouter = GoRouter(
    initialLocation: '/',
    debugLogDiagnostics: true, // Logs route changes in debug mode
    routes: [
      GoRoute(
        path: '/',
        name: 'home',
        builder: (context, state) => Scaffold(
          appBar: AppBar(title: const Text('Home')),
          body: const Center(child: Text('Home Page')),
        ),
      ),
    ],
    // Centralized error handling for unknown routes
    errorBuilder: (context, state) => Scaffold(
      appBar: AppBar(title: const Text('Page Not Found')),
      body: Center(child: Text(state.error?.toString() ?? 'Unknown error')),
    ),
  );
}