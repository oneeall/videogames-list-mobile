// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'games_list_state.dart';

class GamesListStateMapper extends ClassMapperBase<GamesListState> {
  GamesListStateMapper._();

  static GamesListStateMapper? _instance;
  static GamesListStateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = GamesListStateMapper._());
      GamesListInitialMapper.ensureInitialized();
      GamesListLoadingMapper.ensureInitialized();
      GamesListLoadedMapper.ensureInitialized();
      GamesListErrorMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'GamesListState';

  @override
  final MappableFields<GamesListState> fields = const {};

  static GamesListState _instantiate(DecodingData data) {
    throw MapperException.missingConstructor('GamesListState');
  }

  @override
  final Function instantiate = _instantiate;

  static GamesListState fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<GamesListState>(map);
  }

  static GamesListState fromJson(String json) {
    return ensureInitialized().decodeJson<GamesListState>(json);
  }
}

mixin GamesListStateMappable {
  String toJson();
  Map<String, dynamic> toMap();
  GamesListStateCopyWith<GamesListState, GamesListState, GamesListState>
  get copyWith;
}

abstract class GamesListStateCopyWith<$R, $In extends GamesListState, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call();
  GamesListStateCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class GamesListInitialMapper extends ClassMapperBase<GamesListInitial> {
  GamesListInitialMapper._();

  static GamesListInitialMapper? _instance;
  static GamesListInitialMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = GamesListInitialMapper._());
      GamesListStateMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'GamesListInitial';

  @override
  final MappableFields<GamesListInitial> fields = const {};

  static GamesListInitial _instantiate(DecodingData data) {
    return GamesListInitial();
  }

  @override
  final Function instantiate = _instantiate;

  static GamesListInitial fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<GamesListInitial>(map);
  }

  static GamesListInitial fromJson(String json) {
    return ensureInitialized().decodeJson<GamesListInitial>(json);
  }
}

mixin GamesListInitialMappable {
  String toJson() {
    return GamesListInitialMapper.ensureInitialized()
        .encodeJson<GamesListInitial>(this as GamesListInitial);
  }

  Map<String, dynamic> toMap() {
    return GamesListInitialMapper.ensureInitialized()
        .encodeMap<GamesListInitial>(this as GamesListInitial);
  }

  GamesListInitialCopyWith<GamesListInitial, GamesListInitial, GamesListInitial>
  get copyWith =>
      _GamesListInitialCopyWithImpl<GamesListInitial, GamesListInitial>(
        this as GamesListInitial,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return GamesListInitialMapper.ensureInitialized().stringifyValue(
      this as GamesListInitial,
    );
  }

  @override
  bool operator ==(Object other) {
    return GamesListInitialMapper.ensureInitialized().equalsValue(
      this as GamesListInitial,
      other,
    );
  }

  @override
  int get hashCode {
    return GamesListInitialMapper.ensureInitialized().hashValue(
      this as GamesListInitial,
    );
  }
}

extension GamesListInitialValueCopy<$R, $Out>
    on ObjectCopyWith<$R, GamesListInitial, $Out> {
  GamesListInitialCopyWith<$R, GamesListInitial, $Out>
  get $asGamesListInitial =>
      $base.as((v, t, t2) => _GamesListInitialCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class GamesListInitialCopyWith<$R, $In extends GamesListInitial, $Out>
    implements GamesListStateCopyWith<$R, $In, $Out> {
  @override
  $R call();
  GamesListInitialCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _GamesListInitialCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, GamesListInitial, $Out>
    implements GamesListInitialCopyWith<$R, GamesListInitial, $Out> {
  _GamesListInitialCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<GamesListInitial> $mapper =
      GamesListInitialMapper.ensureInitialized();
  @override
  $R call() => $apply(FieldCopyWithData({}));
  @override
  GamesListInitial $make(CopyWithData data) => GamesListInitial();

  @override
  GamesListInitialCopyWith<$R2, GamesListInitial, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _GamesListInitialCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class GamesListLoadingMapper extends ClassMapperBase<GamesListLoading> {
  GamesListLoadingMapper._();

  static GamesListLoadingMapper? _instance;
  static GamesListLoadingMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = GamesListLoadingMapper._());
      GamesListStateMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'GamesListLoading';

  @override
  final MappableFields<GamesListLoading> fields = const {};

  static GamesListLoading _instantiate(DecodingData data) {
    return GamesListLoading();
  }

  @override
  final Function instantiate = _instantiate;

  static GamesListLoading fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<GamesListLoading>(map);
  }

  static GamesListLoading fromJson(String json) {
    return ensureInitialized().decodeJson<GamesListLoading>(json);
  }
}

mixin GamesListLoadingMappable {
  String toJson() {
    return GamesListLoadingMapper.ensureInitialized()
        .encodeJson<GamesListLoading>(this as GamesListLoading);
  }

  Map<String, dynamic> toMap() {
    return GamesListLoadingMapper.ensureInitialized()
        .encodeMap<GamesListLoading>(this as GamesListLoading);
  }

  GamesListLoadingCopyWith<GamesListLoading, GamesListLoading, GamesListLoading>
  get copyWith =>
      _GamesListLoadingCopyWithImpl<GamesListLoading, GamesListLoading>(
        this as GamesListLoading,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return GamesListLoadingMapper.ensureInitialized().stringifyValue(
      this as GamesListLoading,
    );
  }

  @override
  bool operator ==(Object other) {
    return GamesListLoadingMapper.ensureInitialized().equalsValue(
      this as GamesListLoading,
      other,
    );
  }

  @override
  int get hashCode {
    return GamesListLoadingMapper.ensureInitialized().hashValue(
      this as GamesListLoading,
    );
  }
}

extension GamesListLoadingValueCopy<$R, $Out>
    on ObjectCopyWith<$R, GamesListLoading, $Out> {
  GamesListLoadingCopyWith<$R, GamesListLoading, $Out>
  get $asGamesListLoading =>
      $base.as((v, t, t2) => _GamesListLoadingCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class GamesListLoadingCopyWith<$R, $In extends GamesListLoading, $Out>
    implements GamesListStateCopyWith<$R, $In, $Out> {
  @override
  $R call();
  GamesListLoadingCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _GamesListLoadingCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, GamesListLoading, $Out>
    implements GamesListLoadingCopyWith<$R, GamesListLoading, $Out> {
  _GamesListLoadingCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<GamesListLoading> $mapper =
      GamesListLoadingMapper.ensureInitialized();
  @override
  $R call() => $apply(FieldCopyWithData({}));
  @override
  GamesListLoading $make(CopyWithData data) => GamesListLoading();

  @override
  GamesListLoadingCopyWith<$R2, GamesListLoading, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _GamesListLoadingCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class GamesListLoadedMapper extends ClassMapperBase<GamesListLoaded> {
  GamesListLoadedMapper._();

  static GamesListLoadedMapper? _instance;
  static GamesListLoadedMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = GamesListLoadedMapper._());
      GamesListStateMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'GamesListLoaded';

  static List<Game> _$games(GamesListLoaded v) => v.games;
  static const Field<GamesListLoaded, List<Game>> _f$games = Field(
    'games',
    _$games,
  );
  static bool _$hasReachedMax(GamesListLoaded v) => v.hasReachedMax;
  static const Field<GamesListLoaded, bool> _f$hasReachedMax = Field(
    'hasReachedMax',
    _$hasReachedMax,
  );
  static int _$currentPage(GamesListLoaded v) => v.currentPage;
  static const Field<GamesListLoaded, int> _f$currentPage = Field(
    'currentPage',
    _$currentPage,
    opt: true,
    def: 1,
  );

  @override
  final MappableFields<GamesListLoaded> fields = const {
    #games: _f$games,
    #hasReachedMax: _f$hasReachedMax,
    #currentPage: _f$currentPage,
  };

  static GamesListLoaded _instantiate(DecodingData data) {
    return GamesListLoaded(
      games: data.dec(_f$games),
      hasReachedMax: data.dec(_f$hasReachedMax),
      currentPage: data.dec(_f$currentPage),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static GamesListLoaded fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<GamesListLoaded>(map);
  }

  static GamesListLoaded fromJson(String json) {
    return ensureInitialized().decodeJson<GamesListLoaded>(json);
  }
}

mixin GamesListLoadedMappable {
  String toJson() {
    return GamesListLoadedMapper.ensureInitialized()
        .encodeJson<GamesListLoaded>(this as GamesListLoaded);
  }

  Map<String, dynamic> toMap() {
    return GamesListLoadedMapper.ensureInitialized().encodeMap<GamesListLoaded>(
      this as GamesListLoaded,
    );
  }

  GamesListLoadedCopyWith<GamesListLoaded, GamesListLoaded, GamesListLoaded>
  get copyWith =>
      _GamesListLoadedCopyWithImpl<GamesListLoaded, GamesListLoaded>(
        this as GamesListLoaded,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return GamesListLoadedMapper.ensureInitialized().stringifyValue(
      this as GamesListLoaded,
    );
  }

  @override
  bool operator ==(Object other) {
    return GamesListLoadedMapper.ensureInitialized().equalsValue(
      this as GamesListLoaded,
      other,
    );
  }

  @override
  int get hashCode {
    return GamesListLoadedMapper.ensureInitialized().hashValue(
      this as GamesListLoaded,
    );
  }
}

extension GamesListLoadedValueCopy<$R, $Out>
    on ObjectCopyWith<$R, GamesListLoaded, $Out> {
  GamesListLoadedCopyWith<$R, GamesListLoaded, $Out> get $asGamesListLoaded =>
      $base.as((v, t, t2) => _GamesListLoadedCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class GamesListLoadedCopyWith<$R, $In extends GamesListLoaded, $Out>
    implements GamesListStateCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, Game, ObjectCopyWith<$R, Game, Game>> get games;
  @override
  $R call({List<Game>? games, bool? hasReachedMax, int? currentPage});
  GamesListLoadedCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _GamesListLoadedCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, GamesListLoaded, $Out>
    implements GamesListLoadedCopyWith<$R, GamesListLoaded, $Out> {
  _GamesListLoadedCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<GamesListLoaded> $mapper =
      GamesListLoadedMapper.ensureInitialized();
  @override
  ListCopyWith<$R, Game, ObjectCopyWith<$R, Game, Game>> get games =>
      ListCopyWith(
        $value.games,
        (v, t) => ObjectCopyWith(v, $identity, t),
        (v) => call(games: v),
      );
  @override
  $R call({List<Game>? games, bool? hasReachedMax, int? currentPage}) => $apply(
    FieldCopyWithData({
      if (games != null) #games: games,
      if (hasReachedMax != null) #hasReachedMax: hasReachedMax,
      if (currentPage != null) #currentPage: currentPage,
    }),
  );
  @override
  GamesListLoaded $make(CopyWithData data) => GamesListLoaded(
    games: data.get(#games, or: $value.games),
    hasReachedMax: data.get(#hasReachedMax, or: $value.hasReachedMax),
    currentPage: data.get(#currentPage, or: $value.currentPage),
  );

  @override
  GamesListLoadedCopyWith<$R2, GamesListLoaded, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _GamesListLoadedCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class GamesListErrorMapper extends ClassMapperBase<GamesListError> {
  GamesListErrorMapper._();

  static GamesListErrorMapper? _instance;
  static GamesListErrorMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = GamesListErrorMapper._());
      GamesListStateMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'GamesListError';

  static String _$message(GamesListError v) => v.message;
  static const Field<GamesListError, String> _f$message = Field(
    'message',
    _$message,
  );
  static List<Game>? _$previousGames(GamesListError v) => v.previousGames;
  static const Field<GamesListError, List<Game>> _f$previousGames = Field(
    'previousGames',
    _$previousGames,
    opt: true,
  );
  static int? _$currentPage(GamesListError v) => v.currentPage;
  static const Field<GamesListError, int> _f$currentPage = Field(
    'currentPage',
    _$currentPage,
    opt: true,
  );

  @override
  final MappableFields<GamesListError> fields = const {
    #message: _f$message,
    #previousGames: _f$previousGames,
    #currentPage: _f$currentPage,
  };

  static GamesListError _instantiate(DecodingData data) {
    return GamesListError(
      message: data.dec(_f$message),
      previousGames: data.dec(_f$previousGames),
      currentPage: data.dec(_f$currentPage),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static GamesListError fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<GamesListError>(map);
  }

  static GamesListError fromJson(String json) {
    return ensureInitialized().decodeJson<GamesListError>(json);
  }
}

mixin GamesListErrorMappable {
  String toJson() {
    return GamesListErrorMapper.ensureInitialized().encodeJson<GamesListError>(
      this as GamesListError,
    );
  }

  Map<String, dynamic> toMap() {
    return GamesListErrorMapper.ensureInitialized().encodeMap<GamesListError>(
      this as GamesListError,
    );
  }

  GamesListErrorCopyWith<GamesListError, GamesListError, GamesListError>
  get copyWith => _GamesListErrorCopyWithImpl<GamesListError, GamesListError>(
    this as GamesListError,
    $identity,
    $identity,
  );
  @override
  String toString() {
    return GamesListErrorMapper.ensureInitialized().stringifyValue(
      this as GamesListError,
    );
  }

  @override
  bool operator ==(Object other) {
    return GamesListErrorMapper.ensureInitialized().equalsValue(
      this as GamesListError,
      other,
    );
  }

  @override
  int get hashCode {
    return GamesListErrorMapper.ensureInitialized().hashValue(
      this as GamesListError,
    );
  }
}

extension GamesListErrorValueCopy<$R, $Out>
    on ObjectCopyWith<$R, GamesListError, $Out> {
  GamesListErrorCopyWith<$R, GamesListError, $Out> get $asGamesListError =>
      $base.as((v, t, t2) => _GamesListErrorCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class GamesListErrorCopyWith<$R, $In extends GamesListError, $Out>
    implements GamesListStateCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, Game, ObjectCopyWith<$R, Game, Game>>? get previousGames;
  @override
  $R call({String? message, List<Game>? previousGames, int? currentPage});
  GamesListErrorCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _GamesListErrorCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, GamesListError, $Out>
    implements GamesListErrorCopyWith<$R, GamesListError, $Out> {
  _GamesListErrorCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<GamesListError> $mapper =
      GamesListErrorMapper.ensureInitialized();
  @override
  ListCopyWith<$R, Game, ObjectCopyWith<$R, Game, Game>>? get previousGames =>
      $value.previousGames != null
      ? ListCopyWith(
          $value.previousGames!,
          (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(previousGames: v),
        )
      : null;
  @override
  $R call({
    String? message,
    Object? previousGames = $none,
    Object? currentPage = $none,
  }) => $apply(
    FieldCopyWithData({
      if (message != null) #message: message,
      if (previousGames != $none) #previousGames: previousGames,
      if (currentPage != $none) #currentPage: currentPage,
    }),
  );
  @override
  GamesListError $make(CopyWithData data) => GamesListError(
    message: data.get(#message, or: $value.message),
    previousGames: data.get(#previousGames, or: $value.previousGames),
    currentPage: data.get(#currentPage, or: $value.currentPage),
  );

  @override
  GamesListErrorCopyWith<$R2, GamesListError, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _GamesListErrorCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

