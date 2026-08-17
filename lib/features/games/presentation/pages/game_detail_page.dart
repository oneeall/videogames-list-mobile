import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/game_detail/game_detail_bloc.dart';
import '../bloc/game_detail/game_detail_state.dart';

class GameDetailPage extends StatelessWidget {
  const GameDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar title reacts to the state so it shows the name once loaded
      appBar: AppBar(
        title: BlocBuilder<GameDetailBloc, GameDetailState>(
          builder: (context, state) {
            if (state is GameDetailLoaded) {
              return Text(state.game.name, maxLines: 1, overflow: TextOverflow.ellipsis);
            }
            return const Text('Loading...');
          },
        ),
      ),
      body: BlocBuilder<GameDetailBloc, GameDetailState>(
        builder: (context, state) {
          if (state is GameDetailLoading) {
            return const Center(child: CircularProgressIndicator());
          }
          if (state is GameDetailError) {
            return Center(child: Text('Failed to load: ${state.message}'));
          }
          if (state is GameDetailLoaded) {
            final game = state.game;
            return SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Header Image
                  if (game.backgroundImage != null)
                    CachedNetworkImage(
                      imageUrl: game.backgroundImage!,
                      height: 250,
                      width: double.infinity,
                      fit: BoxFit.cover,
                      placeholder: (_, __) => Container(color: Colors.grey[900]),
                      errorWidget: (_, __, ___) => Container(color: Colors.grey[900]),
                    ),

                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Genres Section
                        if (game.genres.isNotEmpty) ...[
                          const Text('Genres', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                          const SizedBox(height: 8),
                          Wrap(
                            spacing: 8,
                            children: game.genres.map((g) => Chip(label: Text(g))).toList(),
                          ),
                          const SizedBox(height: 16),
                        ],

                        // Description Section
                        const Text('Description', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                        const SizedBox(height: 8),
                        Text(game.description ?? 'No description available.'),

                        // Screenshots Section
                        if (game.screenshots.isNotEmpty) ...[
                          const SizedBox(height: 24),
                          const Text('Screenshots', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                          const SizedBox(height: 8),
                          SizedBox(
                            height: 200,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: game.screenshots.length,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: const EdgeInsets.only(right: 8.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8),
                                    child: CachedNetworkImage(
                                      imageUrl: game.screenshots[index],
                                      fit: BoxFit.cover,
                                      width: 300,
                                      placeholder: (_, __) => Container(color: Colors.grey[900]),
                                      errorWidget: (_, __, ___) => Container(color: Colors.grey[900]),
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ],
                    ),
                  ),
                ],
              ),
            );
          }
          return const SizedBox.shrink();
        },
      ),
    );
  }
}