import 'package:dart_mappable/dart_mappable.dart';

part 'games_list_event.mapper.dart';

@MappableClass()
sealed class GamesListEvent with GamesListEventMappable {
  const GamesListEvent();
}

@MappableClass()
class FetchGames extends GamesListEvent with FetchGamesMappable {
  const FetchGames();
}

@MappableClass()
class FetchMoreGames extends GamesListEvent with FetchMoreGamesMappable {
  const FetchMoreGames();
}