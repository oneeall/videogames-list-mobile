// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'games_list_event.dart';

class GamesListEventMapper extends ClassMapperBase<GamesListEvent> {
  GamesListEventMapper._();

  static GamesListEventMapper? _instance;
  static GamesListEventMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = GamesListEventMapper._());
      FetchGamesMapper.ensureInitialized();
      FetchMoreGamesMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'GamesListEvent';

  @override
  final MappableFields<GamesListEvent> fields = const {};

  static GamesListEvent _instantiate(DecodingData data) {
    throw MapperException.missingConstructor('GamesListEvent');
  }

  @override
  final Function instantiate = _instantiate;

  static GamesListEvent fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<GamesListEvent>(map);
  }

  static GamesListEvent fromJson(String json) {
    return ensureInitialized().decodeJson<GamesListEvent>(json);
  }
}

mixin GamesListEventMappable {
  String toJson();
  Map<String, dynamic> toMap();
  GamesListEventCopyWith<GamesListEvent, GamesListEvent, GamesListEvent>
  get copyWith;
}

abstract class GamesListEventCopyWith<$R, $In extends GamesListEvent, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call();
  GamesListEventCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class FetchGamesMapper extends ClassMapperBase<FetchGames> {
  FetchGamesMapper._();

  static FetchGamesMapper? _instance;
  static FetchGamesMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = FetchGamesMapper._());
      GamesListEventMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'FetchGames';

  @override
  final MappableFields<FetchGames> fields = const {};

  static FetchGames _instantiate(DecodingData data) {
    return FetchGames();
  }

  @override
  final Function instantiate = _instantiate;

  static FetchGames fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<FetchGames>(map);
  }

  static FetchGames fromJson(String json) {
    return ensureInitialized().decodeJson<FetchGames>(json);
  }
}

mixin FetchGamesMappable {
  String toJson() {
    return FetchGamesMapper.ensureInitialized().encodeJson<FetchGames>(
      this as FetchGames,
    );
  }

  Map<String, dynamic> toMap() {
    return FetchGamesMapper.ensureInitialized().encodeMap<FetchGames>(
      this as FetchGames,
    );
  }

  FetchGamesCopyWith<FetchGames, FetchGames, FetchGames> get copyWith =>
      _FetchGamesCopyWithImpl<FetchGames, FetchGames>(
        this as FetchGames,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return FetchGamesMapper.ensureInitialized().stringifyValue(
      this as FetchGames,
    );
  }

  @override
  bool operator ==(Object other) {
    return FetchGamesMapper.ensureInitialized().equalsValue(
      this as FetchGames,
      other,
    );
  }

  @override
  int get hashCode {
    return FetchGamesMapper.ensureInitialized().hashValue(this as FetchGames);
  }
}

extension FetchGamesValueCopy<$R, $Out>
    on ObjectCopyWith<$R, FetchGames, $Out> {
  FetchGamesCopyWith<$R, FetchGames, $Out> get $asFetchGames =>
      $base.as((v, t, t2) => _FetchGamesCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class FetchGamesCopyWith<$R, $In extends FetchGames, $Out>
    implements GamesListEventCopyWith<$R, $In, $Out> {
  @override
  $R call();
  FetchGamesCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _FetchGamesCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, FetchGames, $Out>
    implements FetchGamesCopyWith<$R, FetchGames, $Out> {
  _FetchGamesCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<FetchGames> $mapper =
      FetchGamesMapper.ensureInitialized();
  @override
  $R call() => $apply(FieldCopyWithData({}));
  @override
  FetchGames $make(CopyWithData data) => FetchGames();

  @override
  FetchGamesCopyWith<$R2, FetchGames, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _FetchGamesCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class FetchMoreGamesMapper extends ClassMapperBase<FetchMoreGames> {
  FetchMoreGamesMapper._();

  static FetchMoreGamesMapper? _instance;
  static FetchMoreGamesMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = FetchMoreGamesMapper._());
      GamesListEventMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'FetchMoreGames';

  @override
  final MappableFields<FetchMoreGames> fields = const {};

  static FetchMoreGames _instantiate(DecodingData data) {
    return FetchMoreGames();
  }

  @override
  final Function instantiate = _instantiate;

  static FetchMoreGames fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<FetchMoreGames>(map);
  }

  static FetchMoreGames fromJson(String json) {
    return ensureInitialized().decodeJson<FetchMoreGames>(json);
  }
}

mixin FetchMoreGamesMappable {
  String toJson() {
    return FetchMoreGamesMapper.ensureInitialized().encodeJson<FetchMoreGames>(
      this as FetchMoreGames,
    );
  }

  Map<String, dynamic> toMap() {
    return FetchMoreGamesMapper.ensureInitialized().encodeMap<FetchMoreGames>(
      this as FetchMoreGames,
    );
  }

  FetchMoreGamesCopyWith<FetchMoreGames, FetchMoreGames, FetchMoreGames>
  get copyWith => _FetchMoreGamesCopyWithImpl<FetchMoreGames, FetchMoreGames>(
    this as FetchMoreGames,
    $identity,
    $identity,
  );
  @override
  String toString() {
    return FetchMoreGamesMapper.ensureInitialized().stringifyValue(
      this as FetchMoreGames,
    );
  }

  @override
  bool operator ==(Object other) {
    return FetchMoreGamesMapper.ensureInitialized().equalsValue(
      this as FetchMoreGames,
      other,
    );
  }

  @override
  int get hashCode {
    return FetchMoreGamesMapper.ensureInitialized().hashValue(
      this as FetchMoreGames,
    );
  }
}

extension FetchMoreGamesValueCopy<$R, $Out>
    on ObjectCopyWith<$R, FetchMoreGames, $Out> {
  FetchMoreGamesCopyWith<$R, FetchMoreGames, $Out> get $asFetchMoreGames =>
      $base.as((v, t, t2) => _FetchMoreGamesCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class FetchMoreGamesCopyWith<$R, $In extends FetchMoreGames, $Out>
    implements GamesListEventCopyWith<$R, $In, $Out> {
  @override
  $R call();
  FetchMoreGamesCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _FetchMoreGamesCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, FetchMoreGames, $Out>
    implements FetchMoreGamesCopyWith<$R, FetchMoreGames, $Out> {
  _FetchMoreGamesCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<FetchMoreGames> $mapper =
      FetchMoreGamesMapper.ensureInitialized();
  @override
  $R call() => $apply(FieldCopyWithData({}));
  @override
  FetchMoreGames $make(CopyWithData data) => FetchMoreGames();

  @override
  FetchMoreGamesCopyWith<$R2, FetchMoreGames, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _FetchMoreGamesCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

