import '../../domain/entities/game.dart';
import 'package:dart_mappable/dart_mappable.dart';

part 'game_model.mapper.dart';

@MappableClass(caseStyle: CaseStyle.snakeCase)
class GameModel with GameModelMappable{
  final int id;
  final String name;
  final DateTime? released;
  final String? backgroundImage;
  final int? metacritic;

  /// expect for detail screen specific field
  final List<GenreModel>? genres;
  final String? description;
  final List<ShortScreenshotModel>? shortScreenshots;

  GameModel({
    required this.id,
    required this.name,
    this.released,
    this.backgroundImage,
    this.metacritic,
    this.genres,
    this.description,
    this.shortScreenshots,
  });

  /// converts the data model to the domain entity
  /// mastiin the domain layer never knows about JSON or DTOs

  Game toEntity() {
    return Game(
      id: id,
      name: name,
      released: released,
      backgroundImage: backgroundImage,
      metacritic: metacritic,
      genres: genres?.map((e) => e.name).toList() ?? [],
      description: description,
      screenshots: shortScreenshots?.map((e) => e.image).toList() ?? [],
    );
  }

  factory GameModel.fromJson(Map<String, dynamic> mockJson) => GameModelMapper.fromMap(mockJson);
}

@MappableClass(caseStyle: CaseStyle.snakeCase)
class GenreModel with GenreModelMappable {
  final int id;
  final String name;

  GenreModel({
    required this.id,
    required this.name,
  });
}

@MappableClass(caseStyle: CaseStyle.snakeCase)
class ShortScreenshotModel with ShortScreenshotModelMappable {
  final int id;
  final String image;

  ShortScreenshotModel({
    required this.id,
    required this.image,
  });
}
