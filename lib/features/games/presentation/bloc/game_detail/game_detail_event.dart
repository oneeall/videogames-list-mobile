import 'package:dart_mappable/dart_mappable.dart';

part 'game_detail_event.mapper.dart';

@MappableClass()
sealed class GameDetailEvent with GameDetailEventMappable {
  const GameDetailEvent();
}

@MappableClass()
class FetchGameDetail extends GameDetailEvent with FetchGameDetailMappable {
  final int id;
  const FetchGameDetail(this.id);
}