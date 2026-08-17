import 'package:flutter/material.dart';
import 'package:videogames_list_mobile/features/games/domain/entities/game.dart';
import 'package:videogames_list_mobile/features/games/presentation/widgets/game_card.dart';

class GamesListPage extends StatefulWidget {
  const GamesListPage({Key? key}) : super(key: key);

  @override
  State<GamesListPage> createState() => _GamesListPageState();
}

class _GamesListPageState extends State<GamesListPage> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();

  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Latest PS5 Games')),
      body: GridView.builder(
        controller: _scrollController,
        padding: const EdgeInsets.all(8),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.7,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
        ),
        itemCount: 10,
        itemBuilder: (context, index) {
          return GameCard(
            game: Game(id: index, name: 'Game $index'),
            onTap: () {

            },
          );
        },
      ),
    );
  }
}