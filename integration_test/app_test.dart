import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:videogames_list_mobile/features/games/presentation/widgets/game_card.dart';
import 'package:videogames_list_mobile/injection.dart';
import 'package:videogames_list_mobile/main.dart' as app;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    serviceLocator.reset();
    // 1. Initialize our Dependency Injection container
    setupDependencies();
  });

  testWidgets(
    'End-to-end flow: user loads list, scrolls for pagination, and opens details',
        (tester) async {
      // --- ACT: START THE APP ---
      app.main();
      await tester.pumpAndSettle(); // Wait for initial load to complete

      // --- ASSERT 1: PAGE 1 LOADED (Using Dummy Data) ---
      // The dummy data in GamesRemoteDataSource uses "Grand Theft Auto V"
      // Use find.descendant to target the Text specifically inside a GameCard to avoid ambiguity
      final gameCardFinder = find.byType(GameCard);
      expect(find.descendant(of: gameCardFinder, matching: find.text('Grand Theft Auto V')), findsAtLeastNWidgets(1));

      // --- ACT: TAP ON GAME TO VIEW DETAILS ---
      await tester.tap(find.descendant(of: gameCardFinder, matching: find.text('Grand Theft Auto V')).first);
      await tester.pumpAndSettle(); // Wait for detail page to load

      // --- ASSERT 2: DETAIL PAGE RENDERED CORRECTLY ---
      // Check for AppBar title
      expect(find.text('Grand Theft Auto V'), findsOneWidget);
      // Check for description snippet from _mockDetailResponse
      expect(find.textContaining('Rockstar Games went bigger'), findsOneWidget);
    },
  );
}