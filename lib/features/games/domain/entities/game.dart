class Game {
  final int id;
  final String name;
  final DateTime? released;
  final String? backgroundImage;
  final int? metacritic;

  // detail screen specific field
  final List<String> genres;
  final String? description;
  final List<String> screenshots;

  const Game({
    required this.id,
    required this.name,
    this.released,
    this.backgroundImage,
    this.metacritic,
    this.genres = const [],
    this.description,
    this.screenshots = const [],
  });
}
