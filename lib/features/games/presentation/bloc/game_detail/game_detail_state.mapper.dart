// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'game_detail_state.dart';

class GameDetailStateMapper extends ClassMapperBase<GameDetailState> {
  GameDetailStateMapper._();

  static GameDetailStateMapper? _instance;
  static GameDetailStateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = GameDetailStateMapper._());
      GameDetailInitialMapper.ensureInitialized();
      GameDetailLoadingMapper.ensureInitialized();
      GameDetailLoadedMapper.ensureInitialized();
      GameDetailErrorMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'GameDetailState';

  @override
  final MappableFields<GameDetailState> fields = const {};

  static GameDetailState _instantiate(DecodingData data) {
    throw MapperException.missingConstructor('GameDetailState');
  }

  @override
  final Function instantiate = _instantiate;

  static GameDetailState fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<GameDetailState>(map);
  }

  static GameDetailState fromJson(String json) {
    return ensureInitialized().decodeJson<GameDetailState>(json);
  }
}

mixin GameDetailStateMappable {
  String toJson();
  Map<String, dynamic> toMap();
  GameDetailStateCopyWith<GameDetailState, GameDetailState, GameDetailState>
  get copyWith;
}

abstract class GameDetailStateCopyWith<$R, $In extends GameDetailState, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call();
  GameDetailStateCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class GameDetailInitialMapper extends ClassMapperBase<GameDetailInitial> {
  GameDetailInitialMapper._();

  static GameDetailInitialMapper? _instance;
  static GameDetailInitialMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = GameDetailInitialMapper._());
      GameDetailStateMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'GameDetailInitial';

  @override
  final MappableFields<GameDetailInitial> fields = const {};

  static GameDetailInitial _instantiate(DecodingData data) {
    return GameDetailInitial();
  }

  @override
  final Function instantiate = _instantiate;

  static GameDetailInitial fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<GameDetailInitial>(map);
  }

  static GameDetailInitial fromJson(String json) {
    return ensureInitialized().decodeJson<GameDetailInitial>(json);
  }
}

mixin GameDetailInitialMappable {
  String toJson() {
    return GameDetailInitialMapper.ensureInitialized()
        .encodeJson<GameDetailInitial>(this as GameDetailInitial);
  }

  Map<String, dynamic> toMap() {
    return GameDetailInitialMapper.ensureInitialized()
        .encodeMap<GameDetailInitial>(this as GameDetailInitial);
  }

  GameDetailInitialCopyWith<
    GameDetailInitial,
    GameDetailInitial,
    GameDetailInitial
  >
  get copyWith =>
      _GameDetailInitialCopyWithImpl<GameDetailInitial, GameDetailInitial>(
        this as GameDetailInitial,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return GameDetailInitialMapper.ensureInitialized().stringifyValue(
      this as GameDetailInitial,
    );
  }

  @override
  bool operator ==(Object other) {
    return GameDetailInitialMapper.ensureInitialized().equalsValue(
      this as GameDetailInitial,
      other,
    );
  }

  @override
  int get hashCode {
    return GameDetailInitialMapper.ensureInitialized().hashValue(
      this as GameDetailInitial,
    );
  }
}

extension GameDetailInitialValueCopy<$R, $Out>
    on ObjectCopyWith<$R, GameDetailInitial, $Out> {
  GameDetailInitialCopyWith<$R, GameDetailInitial, $Out>
  get $asGameDetailInitial => $base.as(
    (v, t, t2) => _GameDetailInitialCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class GameDetailInitialCopyWith<
  $R,
  $In extends GameDetailInitial,
  $Out
>
    implements GameDetailStateCopyWith<$R, $In, $Out> {
  @override
  $R call();
  GameDetailInitialCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _GameDetailInitialCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, GameDetailInitial, $Out>
    implements GameDetailInitialCopyWith<$R, GameDetailInitial, $Out> {
  _GameDetailInitialCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<GameDetailInitial> $mapper =
      GameDetailInitialMapper.ensureInitialized();
  @override
  $R call() => $apply(FieldCopyWithData({}));
  @override
  GameDetailInitial $make(CopyWithData data) => GameDetailInitial();

  @override
  GameDetailInitialCopyWith<$R2, GameDetailInitial, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _GameDetailInitialCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class GameDetailLoadingMapper extends ClassMapperBase<GameDetailLoading> {
  GameDetailLoadingMapper._();

  static GameDetailLoadingMapper? _instance;
  static GameDetailLoadingMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = GameDetailLoadingMapper._());
      GameDetailStateMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'GameDetailLoading';

  @override
  final MappableFields<GameDetailLoading> fields = const {};

  static GameDetailLoading _instantiate(DecodingData data) {
    return GameDetailLoading();
  }

  @override
  final Function instantiate = _instantiate;

  static GameDetailLoading fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<GameDetailLoading>(map);
  }

  static GameDetailLoading fromJson(String json) {
    return ensureInitialized().decodeJson<GameDetailLoading>(json);
  }
}

mixin GameDetailLoadingMappable {
  String toJson() {
    return GameDetailLoadingMapper.ensureInitialized()
        .encodeJson<GameDetailLoading>(this as GameDetailLoading);
  }

  Map<String, dynamic> toMap() {
    return GameDetailLoadingMapper.ensureInitialized()
        .encodeMap<GameDetailLoading>(this as GameDetailLoading);
  }

  GameDetailLoadingCopyWith<
    GameDetailLoading,
    GameDetailLoading,
    GameDetailLoading
  >
  get copyWith =>
      _GameDetailLoadingCopyWithImpl<GameDetailLoading, GameDetailLoading>(
        this as GameDetailLoading,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return GameDetailLoadingMapper.ensureInitialized().stringifyValue(
      this as GameDetailLoading,
    );
  }

  @override
  bool operator ==(Object other) {
    return GameDetailLoadingMapper.ensureInitialized().equalsValue(
      this as GameDetailLoading,
      other,
    );
  }

  @override
  int get hashCode {
    return GameDetailLoadingMapper.ensureInitialized().hashValue(
      this as GameDetailLoading,
    );
  }
}

extension GameDetailLoadingValueCopy<$R, $Out>
    on ObjectCopyWith<$R, GameDetailLoading, $Out> {
  GameDetailLoadingCopyWith<$R, GameDetailLoading, $Out>
  get $asGameDetailLoading => $base.as(
    (v, t, t2) => _GameDetailLoadingCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class GameDetailLoadingCopyWith<
  $R,
  $In extends GameDetailLoading,
  $Out
>
    implements GameDetailStateCopyWith<$R, $In, $Out> {
  @override
  $R call();
  GameDetailLoadingCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _GameDetailLoadingCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, GameDetailLoading, $Out>
    implements GameDetailLoadingCopyWith<$R, GameDetailLoading, $Out> {
  _GameDetailLoadingCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<GameDetailLoading> $mapper =
      GameDetailLoadingMapper.ensureInitialized();
  @override
  $R call() => $apply(FieldCopyWithData({}));
  @override
  GameDetailLoading $make(CopyWithData data) => GameDetailLoading();

  @override
  GameDetailLoadingCopyWith<$R2, GameDetailLoading, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _GameDetailLoadingCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class GameDetailLoadedMapper extends ClassMapperBase<GameDetailLoaded> {
  GameDetailLoadedMapper._();

  static GameDetailLoadedMapper? _instance;
  static GameDetailLoadedMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = GameDetailLoadedMapper._());
      GameDetailStateMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'GameDetailLoaded';

  static Game _$game(GameDetailLoaded v) => v.game;
  static const Field<GameDetailLoaded, Game> _f$game = Field('game', _$game);

  @override
  final MappableFields<GameDetailLoaded> fields = const {#game: _f$game};

  static GameDetailLoaded _instantiate(DecodingData data) {
    return GameDetailLoaded(data.dec(_f$game));
  }

  @override
  final Function instantiate = _instantiate;

  static GameDetailLoaded fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<GameDetailLoaded>(map);
  }

  static GameDetailLoaded fromJson(String json) {
    return ensureInitialized().decodeJson<GameDetailLoaded>(json);
  }
}

mixin GameDetailLoadedMappable {
  String toJson() {
    return GameDetailLoadedMapper.ensureInitialized()
        .encodeJson<GameDetailLoaded>(this as GameDetailLoaded);
  }

  Map<String, dynamic> toMap() {
    return GameDetailLoadedMapper.ensureInitialized()
        .encodeMap<GameDetailLoaded>(this as GameDetailLoaded);
  }

  GameDetailLoadedCopyWith<GameDetailLoaded, GameDetailLoaded, GameDetailLoaded>
  get copyWith =>
      _GameDetailLoadedCopyWithImpl<GameDetailLoaded, GameDetailLoaded>(
        this as GameDetailLoaded,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return GameDetailLoadedMapper.ensureInitialized().stringifyValue(
      this as GameDetailLoaded,
    );
  }

  @override
  bool operator ==(Object other) {
    return GameDetailLoadedMapper.ensureInitialized().equalsValue(
      this as GameDetailLoaded,
      other,
    );
  }

  @override
  int get hashCode {
    return GameDetailLoadedMapper.ensureInitialized().hashValue(
      this as GameDetailLoaded,
    );
  }
}

extension GameDetailLoadedValueCopy<$R, $Out>
    on ObjectCopyWith<$R, GameDetailLoaded, $Out> {
  GameDetailLoadedCopyWith<$R, GameDetailLoaded, $Out>
  get $asGameDetailLoaded =>
      $base.as((v, t, t2) => _GameDetailLoadedCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class GameDetailLoadedCopyWith<$R, $In extends GameDetailLoaded, $Out>
    implements GameDetailStateCopyWith<$R, $In, $Out> {
  @override
  $R call({Game? game});
  GameDetailLoadedCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _GameDetailLoadedCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, GameDetailLoaded, $Out>
    implements GameDetailLoadedCopyWith<$R, GameDetailLoaded, $Out> {
  _GameDetailLoadedCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<GameDetailLoaded> $mapper =
      GameDetailLoadedMapper.ensureInitialized();
  @override
  $R call({Game? game}) =>
      $apply(FieldCopyWithData({if (game != null) #game: game}));
  @override
  GameDetailLoaded $make(CopyWithData data) =>
      GameDetailLoaded(data.get(#game, or: $value.game));

  @override
  GameDetailLoadedCopyWith<$R2, GameDetailLoaded, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _GameDetailLoadedCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class GameDetailErrorMapper extends ClassMapperBase<GameDetailError> {
  GameDetailErrorMapper._();

  static GameDetailErrorMapper? _instance;
  static GameDetailErrorMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = GameDetailErrorMapper._());
      GameDetailStateMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'GameDetailError';

  static String _$message(GameDetailError v) => v.message;
  static const Field<GameDetailError, String> _f$message = Field(
    'message',
    _$message,
  );

  @override
  final MappableFields<GameDetailError> fields = const {#message: _f$message};

  static GameDetailError _instantiate(DecodingData data) {
    return GameDetailError(data.dec(_f$message));
  }

  @override
  final Function instantiate = _instantiate;

  static GameDetailError fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<GameDetailError>(map);
  }

  static GameDetailError fromJson(String json) {
    return ensureInitialized().decodeJson<GameDetailError>(json);
  }
}

mixin GameDetailErrorMappable {
  String toJson() {
    return GameDetailErrorMapper.ensureInitialized()
        .encodeJson<GameDetailError>(this as GameDetailError);
  }

  Map<String, dynamic> toMap() {
    return GameDetailErrorMapper.ensureInitialized().encodeMap<GameDetailError>(
      this as GameDetailError,
    );
  }

  GameDetailErrorCopyWith<GameDetailError, GameDetailError, GameDetailError>
  get copyWith =>
      _GameDetailErrorCopyWithImpl<GameDetailError, GameDetailError>(
        this as GameDetailError,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return GameDetailErrorMapper.ensureInitialized().stringifyValue(
      this as GameDetailError,
    );
  }

  @override
  bool operator ==(Object other) {
    return GameDetailErrorMapper.ensureInitialized().equalsValue(
      this as GameDetailError,
      other,
    );
  }

  @override
  int get hashCode {
    return GameDetailErrorMapper.ensureInitialized().hashValue(
      this as GameDetailError,
    );
  }
}

extension GameDetailErrorValueCopy<$R, $Out>
    on ObjectCopyWith<$R, GameDetailError, $Out> {
  GameDetailErrorCopyWith<$R, GameDetailError, $Out> get $asGameDetailError =>
      $base.as((v, t, t2) => _GameDetailErrorCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class GameDetailErrorCopyWith<$R, $In extends GameDetailError, $Out>
    implements GameDetailStateCopyWith<$R, $In, $Out> {
  @override
  $R call({String? message});
  GameDetailErrorCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _GameDetailErrorCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, GameDetailError, $Out>
    implements GameDetailErrorCopyWith<$R, GameDetailError, $Out> {
  _GameDetailErrorCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<GameDetailError> $mapper =
      GameDetailErrorMapper.ensureInitialized();
  @override
  $R call({String? message}) =>
      $apply(FieldCopyWithData({if (message != null) #message: message}));
  @override
  GameDetailError $make(CopyWithData data) =>
      GameDetailError(data.get(#message, or: $value.message));

  @override
  GameDetailErrorCopyWith<$R2, GameDetailError, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _GameDetailErrorCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

