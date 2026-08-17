// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'game_detail_event.dart';

class GameDetailEventMapper extends ClassMapperBase<GameDetailEvent> {
  GameDetailEventMapper._();

  static GameDetailEventMapper? _instance;
  static GameDetailEventMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = GameDetailEventMapper._());
      FetchGameDetailMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'GameDetailEvent';

  @override
  final MappableFields<GameDetailEvent> fields = const {};

  static GameDetailEvent _instantiate(DecodingData data) {
    throw MapperException.missingConstructor('GameDetailEvent');
  }

  @override
  final Function instantiate = _instantiate;

  static GameDetailEvent fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<GameDetailEvent>(map);
  }

  static GameDetailEvent fromJson(String json) {
    return ensureInitialized().decodeJson<GameDetailEvent>(json);
  }
}

mixin GameDetailEventMappable {
  String toJson();
  Map<String, dynamic> toMap();
  GameDetailEventCopyWith<GameDetailEvent, GameDetailEvent, GameDetailEvent>
  get copyWith;
}

abstract class GameDetailEventCopyWith<$R, $In extends GameDetailEvent, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call();
  GameDetailEventCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class FetchGameDetailMapper extends ClassMapperBase<FetchGameDetail> {
  FetchGameDetailMapper._();

  static FetchGameDetailMapper? _instance;
  static FetchGameDetailMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = FetchGameDetailMapper._());
      GameDetailEventMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'FetchGameDetail';

  static int _$id(FetchGameDetail v) => v.id;
  static const Field<FetchGameDetail, int> _f$id = Field('id', _$id);

  @override
  final MappableFields<FetchGameDetail> fields = const {#id: _f$id};

  static FetchGameDetail _instantiate(DecodingData data) {
    return FetchGameDetail(data.dec(_f$id));
  }

  @override
  final Function instantiate = _instantiate;

  static FetchGameDetail fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<FetchGameDetail>(map);
  }

  static FetchGameDetail fromJson(String json) {
    return ensureInitialized().decodeJson<FetchGameDetail>(json);
  }
}

mixin FetchGameDetailMappable {
  String toJson() {
    return FetchGameDetailMapper.ensureInitialized()
        .encodeJson<FetchGameDetail>(this as FetchGameDetail);
  }

  Map<String, dynamic> toMap() {
    return FetchGameDetailMapper.ensureInitialized().encodeMap<FetchGameDetail>(
      this as FetchGameDetail,
    );
  }

  FetchGameDetailCopyWith<FetchGameDetail, FetchGameDetail, FetchGameDetail>
  get copyWith =>
      _FetchGameDetailCopyWithImpl<FetchGameDetail, FetchGameDetail>(
        this as FetchGameDetail,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return FetchGameDetailMapper.ensureInitialized().stringifyValue(
      this as FetchGameDetail,
    );
  }

  @override
  bool operator ==(Object other) {
    return FetchGameDetailMapper.ensureInitialized().equalsValue(
      this as FetchGameDetail,
      other,
    );
  }

  @override
  int get hashCode {
    return FetchGameDetailMapper.ensureInitialized().hashValue(
      this as FetchGameDetail,
    );
  }
}

extension FetchGameDetailValueCopy<$R, $Out>
    on ObjectCopyWith<$R, FetchGameDetail, $Out> {
  FetchGameDetailCopyWith<$R, FetchGameDetail, $Out> get $asFetchGameDetail =>
      $base.as((v, t, t2) => _FetchGameDetailCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class FetchGameDetailCopyWith<$R, $In extends FetchGameDetail, $Out>
    implements GameDetailEventCopyWith<$R, $In, $Out> {
  @override
  $R call({int? id});
  FetchGameDetailCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _FetchGameDetailCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, FetchGameDetail, $Out>
    implements FetchGameDetailCopyWith<$R, FetchGameDetail, $Out> {
  _FetchGameDetailCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<FetchGameDetail> $mapper =
      FetchGameDetailMapper.ensureInitialized();
  @override
  $R call({int? id}) => $apply(FieldCopyWithData({if (id != null) #id: id}));
  @override
  FetchGameDetail $make(CopyWithData data) =>
      FetchGameDetail(data.get(#id, or: $value.id));

  @override
  FetchGameDetailCopyWith<$R2, FetchGameDetail, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _FetchGameDetailCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

