# Videogames List Mobile

A Flutter application that displays the latest PS5 games using the RAWG API. This project demonstrates modern Android development practices, Clean Architecture, and robust state management.

## 🏗 Architecture

The project follows **Clean Architecture** principles, separating concerns into three main layers:

*   **Data Layer**: Handles data retrieval from the RAWG API and local data sources. Includes Models (DTOs) and Repositories implementations.
*   **Domain Layer**: Contains the core business logic. Includes Entities, Use Cases, and Repository interfaces.
*   **Presentation Layer**: UI logic and state management using the **BLoC/Cubit** pattern.

## 🛠 Tech Stack

*   **State Management**: `flutter_bloc`
*   **Networking**: `dio`
*   **Serialization**: `dart_mappable` (Annotation-based JSON serialization)
*   **Dependency Injection**: `get_it`
*   **Navigation**: `go_router`
*   **Testing**: `integration_test`, `mockito`, `http_mock_adapter`

## 🚀 Getting Started

### Prerequisites
*   Flutter SDK: `3.47.0` (Stable Channel)
*   A RAWG API Key (Get one at [rawg.io/apidocs](https://rawg.io/apidocs))

### Environment Setup
Create a `.env` file or use `--dart-define` for your API key. The app currently uses an `ApiKeyInterceptor` to inject the key into requests.

## 🛠 Commands (Makefile)

For convenience, a `Makefile` is provided for common tasks.

| Command | Description |
| :--- | :--- |
| `make setup` | Install dependencies and generate code |
| `make generate` | Run build_runner to generate `dart_mappable` files |
| `make run` | Run the app in debug mode |
| `make test` | Run all unit and widget tests |
| `make test-int` | Run integration tests using **Dummies Mode** |

## 🧪 Testing

### Unit Tests
```bash
flutter test
```

### Integration Tests
To run integration tests while bypassing the real API (useful when the API is down or for CI/CD), we use a custom flag:
```bash
flutter test integration_test/app_test.dart --dart-define=USE_DUMMIES=true
```

You can view the execution of the integration test here:
[Screen Record Integration Test](docs/integration_test/screen_records/screen_record_integration_test.webm)

## 📦 Data Mapping
This project uses `dart_mappable`. If you modify any models in `lib/features/games/data/models/`, you must regenerate the mapping code:
```bash
dart run build_runner build --delete-conflicting-outputs
```
