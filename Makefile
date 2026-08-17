.PHONY: setup generate run test test-int clean

# Install dependencies and generate all necessary code
setup:
	flutter pub get
	dart run build_runner build --delete-conflicting-outputs

# Generate code for dart_mappable and other generators
generate:
	dart run build_runner build --delete-conflicting-outputs

# Run the application
run:
	flutter run

# Run all unit and widget tests
test:
	flutter test

# Run integration tests with Dummies Mode enabled (bypasses real API)
test-int:
	flutter test integration_test/app_test.dart --dart-define=USE_DUMMIES=true

# Clean the project
clean:
	flutter clean
	flutter pub get
