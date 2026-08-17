import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:network_image_mock/network_image_mock.dart';
import 'package:videogames_list_mobile/features/games/domain/entities/game.dart';
import 'package:videogames_list_mobile/features/games/presentation/widgets/game_card.dart';

void main() {
  group('GameCard Widget', () {
    final tGame = Game(
      id: 1,
      name: 'Returnal',
      released: DateTime(2021, 4, 30),
      backgroundImage: 'https://example.com/image.jpg',
      metacritic: 86,
    );

    testWidgets('renders name, formatted date, and score correctly',
          (tester) async {
        // Arrange & Act
        // mockNetworkImagesFor intercepts HTTP calls for CachedNetworkImage
        await mockNetworkImagesFor(() async {
          await tester.pumpWidget(
            MaterialApp(
              home: Scaffold(
                body: GameCard(game: tGame, onTap: () {}),
              ),
            ),
          );
        });

        // Wait for animations and image placeholders to settle
        await tester.pumpAndSettle();

        // Assert
        expect(find.text('Returnal'), findsOneWidget);
        expect(find.text('Apr 30, 2021'), findsOneWidget);
        expect(find.text('86'), findsOneWidget);
      },
    );

    testWidgets('invokes onTap callback when tapped',
          (tester) async {
        // Arrange
        var tapped = false;

        await mockNetworkImagesFor(() async {
          await tester.pumpWidget(
            MaterialApp(
              home: Scaffold(
                body: GameCard(
                  game: tGame,
                  onTap: () => tapped = true,
                ),
              ),
            ),
          );
        });
        await tester.pumpAndSettle();

        // Act
        await tester.tap(find.byType(GameCard));
        await tester.pump();

        // Assert
        expect(tapped, isTrue);
      },
    );

    testWidgets('handles missing release date and metacritic score gracefully',
          (tester) async {
        // Arrange
        final incompleteGame = Game(
          id: 2,
          name: 'Unannounced Game',
          released: null,
          backgroundImage: null,
          metacritic: null,
        );

        await mockNetworkImagesFor(() async {
          await tester.pumpWidget(
            MaterialApp(
              home: Scaffold(
                body: GameCard(game: incompleteGame, onTap: () {}),
              ),
            ),
          );
        });
        await tester.pumpAndSettle();

        // Assert
        expect(find.text('Unannounced Game'), findsOneWidget);
        expect(find.text('TBA'), findsOneWidget);
        expect(find.text('N/A'), findsOneWidget);
      },
    );
  });
}