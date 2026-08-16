// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'game_model.dart';

class GameModelMapper extends ClassMapperBase<GameModel> {
  GameModelMapper._();

  static GameModelMapper? _instance;
  static GameModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = GameModelMapper._());
      GenreModelMapper.ensureInitialized();
      ShortScreenshotModelMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'GameModel';

  static int _$id(GameModel v) => v.id;
  static const Field<GameModel, int> _f$id = Field('id', _$id);
  static String _$name(GameModel v) => v.name;
  static const Field<GameModel, String> _f$name = Field('name', _$name);
  static DateTime? _$released(GameModel v) => v.released;
  static const Field<GameModel, DateTime> _f$released = Field(
    'released',
    _$released,
    opt: true,
  );
  static String? _$backgroundImage(GameModel v) => v.backgroundImage;
  static const Field<GameModel, String> _f$backgroundImage = Field(
    'backgroundImage',
    _$backgroundImage,
    key: r'background_image',
    opt: true,
  );
  static int? _$metacritic(GameModel v) => v.metacritic;
  static const Field<GameModel, int> _f$metacritic = Field(
    'metacritic',
    _$metacritic,
    opt: true,
  );
  static List<GenreModel>? _$genres(GameModel v) => v.genres;
  static const Field<GameModel, List<GenreModel>> _f$genres = Field(
    'genres',
    _$genres,
    opt: true,
  );
  static String? _$description(GameModel v) => v.description;
  static const Field<GameModel, String> _f$description = Field(
    'description',
    _$description,
    opt: true,
  );
  static List<ShortScreenshotModel>? _$shortScreenshots(GameModel v) =>
      v.shortScreenshots;
  static const Field<GameModel, List<ShortScreenshotModel>>
  _f$shortScreenshots = Field(
    'shortScreenshots',
    _$shortScreenshots,
    key: r'short_screenshots',
    opt: true,
  );

  @override
  final MappableFields<GameModel> fields = const {
    #id: _f$id,
    #name: _f$name,
    #released: _f$released,
    #backgroundImage: _f$backgroundImage,
    #metacritic: _f$metacritic,
    #genres: _f$genres,
    #description: _f$description,
    #shortScreenshots: _f$shortScreenshots,
  };

  static GameModel _instantiate(DecodingData data) {
    return GameModel(
      id: data.dec(_f$id),
      name: data.dec(_f$name),
      released: data.dec(_f$released),
      backgroundImage: data.dec(_f$backgroundImage),
      metacritic: data.dec(_f$metacritic),
      genres: data.dec(_f$genres),
      description: data.dec(_f$description),
      shortScreenshots: data.dec(_f$shortScreenshots),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static GameModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<GameModel>(map);
  }

  static GameModel fromJson(String json) {
    return ensureInitialized().decodeJson<GameModel>(json);
  }
}

mixin GameModelMappable {
  String toJson() {
    return GameModelMapper.ensureInitialized().encodeJson<GameModel>(
      this as GameModel,
    );
  }

  Map<String, dynamic> toMap() {
    return GameModelMapper.ensureInitialized().encodeMap<GameModel>(
      this as GameModel,
    );
  }

  GameModelCopyWith<GameModel, GameModel, GameModel> get copyWith =>
      _GameModelCopyWithImpl<GameModel, GameModel>(
        this as GameModel,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return GameModelMapper.ensureInitialized().stringifyValue(
      this as GameModel,
    );
  }

  @override
  bool operator ==(Object other) {
    return GameModelMapper.ensureInitialized().equalsValue(
      this as GameModel,
      other,
    );
  }

  @override
  int get hashCode {
    return GameModelMapper.ensureInitialized().hashValue(this as GameModel);
  }
}

extension GameModelValueCopy<$R, $Out> on ObjectCopyWith<$R, GameModel, $Out> {
  GameModelCopyWith<$R, GameModel, $Out> get $asGameModel =>
      $base.as((v, t, t2) => _GameModelCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class GameModelCopyWith<$R, $In extends GameModel, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, GenreModel, GenreModelCopyWith<$R, GenreModel, GenreModel>>?
  get genres;
  ListCopyWith<
    $R,
    ShortScreenshotModel,
    ShortScreenshotModelCopyWith<$R, ShortScreenshotModel, ShortScreenshotModel>
  >?
  get shortScreenshots;
  $R call({
    int? id,
    String? name,
    DateTime? released,
    String? backgroundImage,
    int? metacritic,
    List<GenreModel>? genres,
    String? description,
    List<ShortScreenshotModel>? shortScreenshots,
  });
  GameModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _GameModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, GameModel, $Out>
    implements GameModelCopyWith<$R, GameModel, $Out> {
  _GameModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<GameModel> $mapper =
      GameModelMapper.ensureInitialized();
  @override
  ListCopyWith<$R, GenreModel, GenreModelCopyWith<$R, GenreModel, GenreModel>>?
  get genres => $value.genres != null
      ? ListCopyWith(
          $value.genres!,
          (v, t) => v.copyWith.$chain(t),
          (v) => call(genres: v),
        )
      : null;
  @override
  ListCopyWith<
    $R,
    ShortScreenshotModel,
    ShortScreenshotModelCopyWith<$R, ShortScreenshotModel, ShortScreenshotModel>
  >?
  get shortScreenshots => $value.shortScreenshots != null
      ? ListCopyWith(
          $value.shortScreenshots!,
          (v, t) => v.copyWith.$chain(t),
          (v) => call(shortScreenshots: v),
        )
      : null;
  @override
  $R call({
    int? id,
    String? name,
    Object? released = $none,
    Object? backgroundImage = $none,
    Object? metacritic = $none,
    Object? genres = $none,
    Object? description = $none,
    Object? shortScreenshots = $none,
  }) => $apply(
    FieldCopyWithData({
      if (id != null) #id: id,
      if (name != null) #name: name,
      if (released != $none) #released: released,
      if (backgroundImage != $none) #backgroundImage: backgroundImage,
      if (metacritic != $none) #metacritic: metacritic,
      if (genres != $none) #genres: genres,
      if (description != $none) #description: description,
      if (shortScreenshots != $none) #shortScreenshots: shortScreenshots,
    }),
  );
  @override
  GameModel $make(CopyWithData data) => GameModel(
    id: data.get(#id, or: $value.id),
    name: data.get(#name, or: $value.name),
    released: data.get(#released, or: $value.released),
    backgroundImage: data.get(#backgroundImage, or: $value.backgroundImage),
    metacritic: data.get(#metacritic, or: $value.metacritic),
    genres: data.get(#genres, or: $value.genres),
    description: data.get(#description, or: $value.description),
    shortScreenshots: data.get(#shortScreenshots, or: $value.shortScreenshots),
  );

  @override
  GameModelCopyWith<$R2, GameModel, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _GameModelCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class GenreModelMapper extends ClassMapperBase<GenreModel> {
  GenreModelMapper._();

  static GenreModelMapper? _instance;
  static GenreModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = GenreModelMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'GenreModel';

  static int _$id(GenreModel v) => v.id;
  static const Field<GenreModel, int> _f$id = Field('id', _$id);
  static String _$name(GenreModel v) => v.name;
  static const Field<GenreModel, String> _f$name = Field('name', _$name);

  @override
  final MappableFields<GenreModel> fields = const {#id: _f$id, #name: _f$name};

  static GenreModel _instantiate(DecodingData data) {
    return GenreModel(id: data.dec(_f$id), name: data.dec(_f$name));
  }

  @override
  final Function instantiate = _instantiate;

  static GenreModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<GenreModel>(map);
  }

  static GenreModel fromJson(String json) {
    return ensureInitialized().decodeJson<GenreModel>(json);
  }
}

mixin GenreModelMappable {
  String toJson() {
    return GenreModelMapper.ensureInitialized().encodeJson<GenreModel>(
      this as GenreModel,
    );
  }

  Map<String, dynamic> toMap() {
    return GenreModelMapper.ensureInitialized().encodeMap<GenreModel>(
      this as GenreModel,
    );
  }

  GenreModelCopyWith<GenreModel, GenreModel, GenreModel> get copyWith =>
      _GenreModelCopyWithImpl<GenreModel, GenreModel>(
        this as GenreModel,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return GenreModelMapper.ensureInitialized().stringifyValue(
      this as GenreModel,
    );
  }

  @override
  bool operator ==(Object other) {
    return GenreModelMapper.ensureInitialized().equalsValue(
      this as GenreModel,
      other,
    );
  }

  @override
  int get hashCode {
    return GenreModelMapper.ensureInitialized().hashValue(this as GenreModel);
  }
}

extension GenreModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, GenreModel, $Out> {
  GenreModelCopyWith<$R, GenreModel, $Out> get $asGenreModel =>
      $base.as((v, t, t2) => _GenreModelCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class GenreModelCopyWith<$R, $In extends GenreModel, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({int? id, String? name});
  GenreModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _GenreModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, GenreModel, $Out>
    implements GenreModelCopyWith<$R, GenreModel, $Out> {
  _GenreModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<GenreModel> $mapper =
      GenreModelMapper.ensureInitialized();
  @override
  $R call({int? id, String? name}) => $apply(
    FieldCopyWithData({if (id != null) #id: id, if (name != null) #name: name}),
  );
  @override
  GenreModel $make(CopyWithData data) => GenreModel(
    id: data.get(#id, or: $value.id),
    name: data.get(#name, or: $value.name),
  );

  @override
  GenreModelCopyWith<$R2, GenreModel, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _GenreModelCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class ShortScreenshotModelMapper extends ClassMapperBase<ShortScreenshotModel> {
  ShortScreenshotModelMapper._();

  static ShortScreenshotModelMapper? _instance;
  static ShortScreenshotModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ShortScreenshotModelMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'ShortScreenshotModel';

  static int _$id(ShortScreenshotModel v) => v.id;
  static const Field<ShortScreenshotModel, int> _f$id = Field('id', _$id);
  static String _$image(ShortScreenshotModel v) => v.image;
  static const Field<ShortScreenshotModel, String> _f$image = Field(
    'image',
    _$image,
  );

  @override
  final MappableFields<ShortScreenshotModel> fields = const {
    #id: _f$id,
    #image: _f$image,
  };

  static ShortScreenshotModel _instantiate(DecodingData data) {
    return ShortScreenshotModel(id: data.dec(_f$id), image: data.dec(_f$image));
  }

  @override
  final Function instantiate = _instantiate;

  static ShortScreenshotModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ShortScreenshotModel>(map);
  }

  static ShortScreenshotModel fromJson(String json) {
    return ensureInitialized().decodeJson<ShortScreenshotModel>(json);
  }
}

mixin ShortScreenshotModelMappable {
  String toJson() {
    return ShortScreenshotModelMapper.ensureInitialized()
        .encodeJson<ShortScreenshotModel>(this as ShortScreenshotModel);
  }

  Map<String, dynamic> toMap() {
    return ShortScreenshotModelMapper.ensureInitialized()
        .encodeMap<ShortScreenshotModel>(this as ShortScreenshotModel);
  }

  ShortScreenshotModelCopyWith<
    ShortScreenshotModel,
    ShortScreenshotModel,
    ShortScreenshotModel
  >
  get copyWith =>
      _ShortScreenshotModelCopyWithImpl<
        ShortScreenshotModel,
        ShortScreenshotModel
      >(this as ShortScreenshotModel, $identity, $identity);
  @override
  String toString() {
    return ShortScreenshotModelMapper.ensureInitialized().stringifyValue(
      this as ShortScreenshotModel,
    );
  }

  @override
  bool operator ==(Object other) {
    return ShortScreenshotModelMapper.ensureInitialized().equalsValue(
      this as ShortScreenshotModel,
      other,
    );
  }

  @override
  int get hashCode {
    return ShortScreenshotModelMapper.ensureInitialized().hashValue(
      this as ShortScreenshotModel,
    );
  }
}

extension ShortScreenshotModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ShortScreenshotModel, $Out> {
  ShortScreenshotModelCopyWith<$R, ShortScreenshotModel, $Out>
  get $asShortScreenshotModel => $base.as(
    (v, t, t2) => _ShortScreenshotModelCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class ShortScreenshotModelCopyWith<
  $R,
  $In extends ShortScreenshotModel,
  $Out
>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({int? id, String? image});
  ShortScreenshotModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _ShortScreenshotModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ShortScreenshotModel, $Out>
    implements ShortScreenshotModelCopyWith<$R, ShortScreenshotModel, $Out> {
  _ShortScreenshotModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ShortScreenshotModel> $mapper =
      ShortScreenshotModelMapper.ensureInitialized();
  @override
  $R call({int? id, String? image}) => $apply(
    FieldCopyWithData({
      if (id != null) #id: id,
      if (image != null) #image: image,
    }),
  );
  @override
  ShortScreenshotModel $make(CopyWithData data) => ShortScreenshotModel(
    id: data.get(#id, or: $value.id),
    image: data.get(#image, or: $value.image),
  );

  @override
  ShortScreenshotModelCopyWith<$R2, ShortScreenshotModel, $Out2>
  $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _ShortScreenshotModelCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

