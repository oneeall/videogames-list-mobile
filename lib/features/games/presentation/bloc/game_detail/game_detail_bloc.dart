import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:videogames_list_mobile/core/utils/result.dart';
import 'package:videogames_list_mobile/features/games/domain/usecases/get_game_details.dart';
import 'game_detail_event.dart';
import 'game_detail_state.dart';

class GameDetailBloc extends Bloc<GameDetailEvent, GameDetailState> {
  final GetGameDetails getGameDetails;

  GameDetailBloc({required this.getGameDetails}) : super(const GameDetailInitial()) {
    on<FetchGameDetail>(_onFetchGameDetail);
  }

  Future<void> _onFetchGameDetail(FetchGameDetail event, Emitter<GameDetailState> emit) async {
    emit(const GameDetailInitial());

    emit(const GameDetailLoading());
    final result = await getGameDetails(event.id);

    switch (result) {
      case Success(:final data):
        emit(GameDetailLoaded(data));
      case Error(:final failure):
        emit(GameDetailError(failure.message, event.id));
    }
  }
}