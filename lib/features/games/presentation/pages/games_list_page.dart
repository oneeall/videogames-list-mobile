import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:videogames_list_mobile/core/cubit/dummies_cubit.dart';
import 'package:go_router/go_router.dart';
import 'package:videogames_list_mobile/features/games/presentation/bloc/games_list/games_list_event.dart';
import 'package:videogames_list_mobile/features/games/presentation/bloc/games_list/games_list_state.dart';
import 'package:videogames_list_mobile/features/games/presentation/widgets/game_card.dart';

import '../bloc/games_list/games_list_bloc.dart';

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

    _scrollController.addListener(_onScroll);
    // Trigger initial fetch if the bloc starts in the initial state
    if (context.read<GamesListBloc>().state is GamesListInitial) {
      context.read<GamesListBloc>().add(FetchGames());
    }
  }

  bool get _isBottom {
    if (!_scrollController.hasClients) return false;
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.offset;
    // hint: Trigger pagination when the user reaches 90% of the way down
    return currentScroll >= (maxScroll * 0.9);
  }

  void _onScroll() {
    if (_isBottom) {
      _fetchMore();
    }
  }

  void _fetchMore() {
    final state = context.read<GamesListBloc>().state;
    final hasReachedMax = state is GamesListLoaded
        ? state.hasReachedMax
        : false;
    final isLoading = state is GamesListLoading;

    if (!hasReachedMax && !isLoading) {
      context.read<GamesListBloc>().add(FetchMoreGames());
    }
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Latest PS5 Games'),
        actions: [
          BlocBuilder<DummiesCubit, bool>(
            builder: (context, isDummiesMode) {
              return Row(
                children: [
                  const Text('Dummies'),
                  Switch(
                    value: isDummiesMode,
                    onChanged: (value) {
                      context.read<DummiesCubit>().toggle();
                      // Refresh the list when toggling
                      context.read<GamesListBloc>().add(FetchGames());
                    },
                  ),
                ],
              );
            },
          ),
        ],
      ),
      body: BlocConsumer<GamesListBloc, GamesListState>(
        listener: (context, state) {
          if (state is GamesListLoaded && !state.hasReachedMax) {
            // hint: Check if the content is scrollable after the frame is rendered
            WidgetsBinding.instance.addPostFrameCallback((_) {
              if (_scrollController.hasClients &&
                  _scrollController.position.maxScrollExtent <= 0) {
                _fetchMore();
              }
            });
          }
        },
        builder: (context, state) {
          if (state is GamesListLoading) {
            return const Center(child: CircularProgressIndicator());
          }

          if (state is GamesListError && state.previousGames == null) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(state.message),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () {
                      context.read<GamesListBloc>().add(FetchGames());
                    },
                    child: const Text('Retry'),
                  ),
                ],
              ),
            );
          }

          if (state is GamesListLoaded ||
              (state is GamesListError && state.previousGames != null)) {
            final games = state is GamesListLoaded
                ? state.games
                : (state as GamesListError).previousGames!;

            final hasReachedMax = state is GamesListLoaded
                ? state.hasReachedMax
                : false;

            final isPaginationError = state is GamesListError;

            return CustomScrollView(
              controller: _scrollController,
              slivers: [
                SliverPadding(
                  padding: const EdgeInsets.all(8),
                  sliver: SliverGrid(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: 0.7,
                          crossAxisSpacing: 8,
                          mainAxisSpacing: 8,
                        ),
                    delegate: SliverChildBuilderDelegate(
                      (context, index) =>
                          GameCard(game: games[index], onTap: () {
                            context.push('/game/${games[index].id}');
                          }),
                      childCount: games.length,
                    ),
                  ),
                ),
                if (!hasReachedMax)
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 24),
                      child: Center(
                        child: isPaginationError
                            ? Column(
                                children: [
                                  Text(
                                    state.message,
                                    textAlign: TextAlign.center,
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      context.read<GamesListBloc>().add(
                                        FetchMoreGames(),
                                      );
                                    },
                                    child: const Text('Retry'),
                                  ),
                                ],
                              )
                            : const CircularProgressIndicator(),
                      ),
                    ),
                  ),
              ],
            );
          }

          // fallback for prevent error
          return const Center(child: Text('Something went wrong'));
        },
      ),
    );
  }
}
