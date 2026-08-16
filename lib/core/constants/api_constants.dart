class RawgApiConstants {
  static const String baseUrl = 'https://api.rawg.io/api';
  static const int ps5PlatformId = 187;

  /// Passed via --dart-define=RAWG_API_KEY=XXX
  /// Prevent no hard-code api key
  static const String apiKey = String.fromEnvironment(
    'RAWG_API_KEY',
    defaultValue:
        '96ce35c844ec40458f1b56cc62037d3c', /// TODO: only test purpose
  );
}
