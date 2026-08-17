import 'package:flutter_bloc/flutter_bloc.dart';

class DummiesCubit extends Cubit<bool> {
  // Use a Dart define to set the default state.
  // Usage: flutter run --dart-define=USE_DUMMIES=true
  static const bool _defaultMode = bool.fromEnvironment('USE_DUMMIES', defaultValue: false);

  DummiesCubit() : super(_defaultMode);

  void toggle() => emit(!state);
}
