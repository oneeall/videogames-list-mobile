import 'package:flutter_test/flutter_test.dart';
import 'package:videogames_list_mobile/features/games/data/models/game_model.dart';
import 'package:videogames_list_mobile/features/games/domain/entities/game.dart';

void main() {
  group('Game Model;', () {
    /// mock json response mimicking the RAWG API structure
    final Map<String, dynamic> mockJson = {
      'id': 3387,
      'name': 'The Witcher 3: Wild Hunt',
      'released': '2015-05-18',
      'background_image': 'https://media.rawg.io/media/games/618/618c86f5cd5e5d8a8d5d5a8d5e5d8a5.jpg',
      'metacritic': 92,
      'description': '<p>An action RPG set in a fantasy world.</p>',
      'genres': [
        {'id': 3, 'name': 'Action'},
        {'id': 5, 'name': 'RPG'},
      ],
      'short_screenshots': [
        {'id': -1, 'image': 'https://media.rawg.io/media/screenshots/1.jpg'},
        {'id': -2, 'image': 'https://media.rawg.io/media/screenshots/2.jpg'},
      ],
    };

    test('fromJson should correct to decode', () {
      /// Act
      final model = GameModel.fromJson(mockJson);

      /// Assert
      expect(model.id, 3387);
      expect(model.name, 'The Witcher 3: Wild Hunt');
      expect(model.released, DateTime(2015, 5, 18));
      expect(model.backgroundImage, startsWith('https://'));
      expect(model.metacritic, 92);

      // Verify nested lists decoded properly
      expect(model.genres, isNotNull);
      expect(model.genres!.length, 2);
      expect(model.genres!.first.name, 'Action');

      expect(model.shortScreenshots, isNotNull);
      expect(model.shortScreenshots!.length, 2);
    });

    test('toEntity should accurately map GameModel to domain Game entity', () {
      /// Arrange
      final model = GameModel.fromJson(mockJson);

      /// Act
      final entity = model.toEntity();

      /// Assert
      expect(entity, isA<Game>());
      expect(entity.id, model.id);
      expect(entity.name, model.name);
      expect(entity.released, model.released);
      expect(entity.backgroundImage, model.backgroundImage);
      expect(entity.metacritic, model.metacritic);
      expect(entity.description, model.description);

      // Assert nested objects were flattened to primitives (Strings)
      expect(entity.genres, isA<List<String>>());
      expect(entity.genres.length, 2);
      expect(entity.genres, containsAll(['Action', 'RPG']));

      expect(entity.screenshots, isA<List<String>>());
      expect(entity.screenshots.length, 2);
      expect(entity.screenshots.first, startsWith('https://'));
    });
  });
}
