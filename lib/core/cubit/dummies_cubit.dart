import 'package:flutter_bloc/flutter_bloc.dart';

class DummiesCubit extends Cubit<bool> {
  DummiesCubit() : super(false);

  void toggle() => emit(!state);
}
