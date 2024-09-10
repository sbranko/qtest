// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'genre_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GenreDTO _$GenreDTOFromJson(Map<String, dynamic> json) {
  return _GenreDTO.fromJson(json);
}

/// @nodoc
mixin _$GenreDTO {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  /// Serializes this GenreDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GenreDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GenreDTOCopyWith<GenreDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenreDTOCopyWith<$Res> {
  factory $GenreDTOCopyWith(GenreDTO value, $Res Function(GenreDTO) then) =
      _$GenreDTOCopyWithImpl<$Res, GenreDTO>;
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class _$GenreDTOCopyWithImpl<$Res, $Val extends GenreDTO>
    implements $GenreDTOCopyWith<$Res> {
  _$GenreDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GenreDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GenreDTOImplCopyWith<$Res>
    implements $GenreDTOCopyWith<$Res> {
  factory _$$GenreDTOImplCopyWith(
          _$GenreDTOImpl value, $Res Function(_$GenreDTOImpl) then) =
      __$$GenreDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class __$$GenreDTOImplCopyWithImpl<$Res>
    extends _$GenreDTOCopyWithImpl<$Res, _$GenreDTOImpl>
    implements _$$GenreDTOImplCopyWith<$Res> {
  __$$GenreDTOImplCopyWithImpl(
      _$GenreDTOImpl _value, $Res Function(_$GenreDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of GenreDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$GenreDTOImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GenreDTOImpl implements _GenreDTO {
  const _$GenreDTOImpl({required this.id, required this.name});

  factory _$GenreDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$GenreDTOImplFromJson(json);

  @override
  final int id;
  @override
  final String name;

  @override
  String toString() {
    return 'GenreDTO(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GenreDTOImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  /// Create a copy of GenreDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GenreDTOImplCopyWith<_$GenreDTOImpl> get copyWith =>
      __$$GenreDTOImplCopyWithImpl<_$GenreDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GenreDTOImplToJson(
      this,
    );
  }
}

abstract class _GenreDTO implements GenreDTO {
  const factory _GenreDTO({required final int id, required final String name}) =
      _$GenreDTOImpl;

  factory _GenreDTO.fromJson(Map<String, dynamic> json) =
      _$GenreDTOImpl.fromJson;

  @override
  int get id;
  @override
  String get name;

  /// Create a copy of GenreDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GenreDTOImplCopyWith<_$GenreDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GenreListDTO _$GenreListDTOFromJson(Map<String, dynamic> json) {
  return _GenreListDTO.fromJson(json);
}

/// @nodoc
mixin _$GenreListDTO {
  List<GenreDTO> get genres => throw _privateConstructorUsedError;

  /// Serializes this GenreListDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GenreListDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GenreListDTOCopyWith<GenreListDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenreListDTOCopyWith<$Res> {
  factory $GenreListDTOCopyWith(
          GenreListDTO value, $Res Function(GenreListDTO) then) =
      _$GenreListDTOCopyWithImpl<$Res, GenreListDTO>;
  @useResult
  $Res call({List<GenreDTO> genres});
}

/// @nodoc
class _$GenreListDTOCopyWithImpl<$Res, $Val extends GenreListDTO>
    implements $GenreListDTOCopyWith<$Res> {
  _$GenreListDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GenreListDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? genres = null,
  }) {
    return _then(_value.copyWith(
      genres: null == genres
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<GenreDTO>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GenreListDTOImplCopyWith<$Res>
    implements $GenreListDTOCopyWith<$Res> {
  factory _$$GenreListDTOImplCopyWith(
          _$GenreListDTOImpl value, $Res Function(_$GenreListDTOImpl) then) =
      __$$GenreListDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<GenreDTO> genres});
}

/// @nodoc
class __$$GenreListDTOImplCopyWithImpl<$Res>
    extends _$GenreListDTOCopyWithImpl<$Res, _$GenreListDTOImpl>
    implements _$$GenreListDTOImplCopyWith<$Res> {
  __$$GenreListDTOImplCopyWithImpl(
      _$GenreListDTOImpl _value, $Res Function(_$GenreListDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of GenreListDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? genres = null,
  }) {
    return _then(_$GenreListDTOImpl(
      genres: null == genres
          ? _value._genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<GenreDTO>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GenreListDTOImpl implements _GenreListDTO {
  const _$GenreListDTOImpl({required final List<GenreDTO> genres})
      : _genres = genres;

  factory _$GenreListDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$GenreListDTOImplFromJson(json);

  final List<GenreDTO> _genres;
  @override
  List<GenreDTO> get genres {
    if (_genres is EqualUnmodifiableListView) return _genres;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_genres);
  }

  @override
  String toString() {
    return 'GenreListDTO(genres: $genres)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GenreListDTOImpl &&
            const DeepCollectionEquality().equals(other._genres, _genres));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_genres));

  /// Create a copy of GenreListDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GenreListDTOImplCopyWith<_$GenreListDTOImpl> get copyWith =>
      __$$GenreListDTOImplCopyWithImpl<_$GenreListDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GenreListDTOImplToJson(
      this,
    );
  }
}

abstract class _GenreListDTO implements GenreListDTO {
  const factory _GenreListDTO({required final List<GenreDTO> genres}) =
      _$GenreListDTOImpl;

  factory _GenreListDTO.fromJson(Map<String, dynamic> json) =
      _$GenreListDTOImpl.fromJson;

  @override
  List<GenreDTO> get genres;

  /// Create a copy of GenreListDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GenreListDTOImplCopyWith<_$GenreListDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
