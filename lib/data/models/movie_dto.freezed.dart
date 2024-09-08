// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MovieDTO _$MovieDTOFromJson(Map<String, dynamic> json) {
  return _MovieDTO.fromJson(json);
}

/// @nodoc
mixin _$MovieDTO {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'original_title')
  String get originalTitle => throw _privateConstructorUsedError;
  String get overview => throw _privateConstructorUsedError;
  @JsonKey(name: 'vote_average')
  double get voteAverage => throw _privateConstructorUsedError;
  @JsonKey(name: 'poster_path')
  String? get posterPath => throw _privateConstructorUsedError;
  @JsonKey(name: 'backdrop_path')
  String? get backdropPath => throw _privateConstructorUsedError;
  @JsonKey(name: 'genre_ids')
  List<int> get genreIds => throw _privateConstructorUsedError;
  @JsonKey(name: 'release_date')
  String get releaseDate => throw _privateConstructorUsedError;

  /// Serializes this MovieDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MovieDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MovieDTOCopyWith<MovieDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieDTOCopyWith<$Res> {
  factory $MovieDTOCopyWith(MovieDTO value, $Res Function(MovieDTO) then) =
      _$MovieDTOCopyWithImpl<$Res, MovieDTO>;
  @useResult
  $Res call(
      {int id,
      String title,
      @JsonKey(name: 'original_title') String originalTitle,
      String overview,
      @JsonKey(name: 'vote_average') double voteAverage,
      @JsonKey(name: 'poster_path') String? posterPath,
      @JsonKey(name: 'backdrop_path') String? backdropPath,
      @JsonKey(name: 'genre_ids') List<int> genreIds,
      @JsonKey(name: 'release_date') String releaseDate});
}

/// @nodoc
class _$MovieDTOCopyWithImpl<$Res, $Val extends MovieDTO>
    implements $MovieDTOCopyWith<$Res> {
  _$MovieDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MovieDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? originalTitle = null,
    Object? overview = null,
    Object? voteAverage = null,
    Object? posterPath = freezed,
    Object? backdropPath = freezed,
    Object? genreIds = null,
    Object? releaseDate = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      originalTitle: null == originalTitle
          ? _value.originalTitle
          : originalTitle // ignore: cast_nullable_to_non_nullable
              as String,
      overview: null == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
      voteAverage: null == voteAverage
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double,
      posterPath: freezed == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      backdropPath: freezed == backdropPath
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String?,
      genreIds: null == genreIds
          ? _value.genreIds
          : genreIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
      releaseDate: null == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MovieDTOImplCopyWith<$Res>
    implements $MovieDTOCopyWith<$Res> {
  factory _$$MovieDTOImplCopyWith(
          _$MovieDTOImpl value, $Res Function(_$MovieDTOImpl) then) =
      __$$MovieDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String title,
      @JsonKey(name: 'original_title') String originalTitle,
      String overview,
      @JsonKey(name: 'vote_average') double voteAverage,
      @JsonKey(name: 'poster_path') String? posterPath,
      @JsonKey(name: 'backdrop_path') String? backdropPath,
      @JsonKey(name: 'genre_ids') List<int> genreIds,
      @JsonKey(name: 'release_date') String releaseDate});
}

/// @nodoc
class __$$MovieDTOImplCopyWithImpl<$Res>
    extends _$MovieDTOCopyWithImpl<$Res, _$MovieDTOImpl>
    implements _$$MovieDTOImplCopyWith<$Res> {
  __$$MovieDTOImplCopyWithImpl(
      _$MovieDTOImpl _value, $Res Function(_$MovieDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of MovieDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? originalTitle = null,
    Object? overview = null,
    Object? voteAverage = null,
    Object? posterPath = freezed,
    Object? backdropPath = freezed,
    Object? genreIds = null,
    Object? releaseDate = null,
  }) {
    return _then(_$MovieDTOImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      originalTitle: null == originalTitle
          ? _value.originalTitle
          : originalTitle // ignore: cast_nullable_to_non_nullable
              as String,
      overview: null == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
      voteAverage: null == voteAverage
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double,
      posterPath: freezed == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      backdropPath: freezed == backdropPath
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String?,
      genreIds: null == genreIds
          ? _value._genreIds
          : genreIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
      releaseDate: null == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MovieDTOImpl implements _MovieDTO {
  const _$MovieDTOImpl(
      {required this.id,
      required this.title,
      @JsonKey(name: 'original_title') required this.originalTitle,
      required this.overview,
      @JsonKey(name: 'vote_average') required this.voteAverage,
      @JsonKey(name: 'poster_path') this.posterPath,
      @JsonKey(name: 'backdrop_path') this.backdropPath,
      @JsonKey(name: 'genre_ids') required final List<int> genreIds,
      @JsonKey(name: 'release_date') required this.releaseDate})
      : _genreIds = genreIds;

  factory _$MovieDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$MovieDTOImplFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  @JsonKey(name: 'original_title')
  final String originalTitle;
  @override
  final String overview;
  @override
  @JsonKey(name: 'vote_average')
  final double voteAverage;
  @override
  @JsonKey(name: 'poster_path')
  final String? posterPath;
  @override
  @JsonKey(name: 'backdrop_path')
  final String? backdropPath;
  final List<int> _genreIds;
  @override
  @JsonKey(name: 'genre_ids')
  List<int> get genreIds {
    if (_genreIds is EqualUnmodifiableListView) return _genreIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_genreIds);
  }

  @override
  @JsonKey(name: 'release_date')
  final String releaseDate;

  @override
  String toString() {
    return 'MovieDTO(id: $id, title: $title, originalTitle: $originalTitle, overview: $overview, voteAverage: $voteAverage, posterPath: $posterPath, backdropPath: $backdropPath, genreIds: $genreIds, releaseDate: $releaseDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MovieDTOImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.originalTitle, originalTitle) ||
                other.originalTitle == originalTitle) &&
            (identical(other.overview, overview) ||
                other.overview == overview) &&
            (identical(other.voteAverage, voteAverage) ||
                other.voteAverage == voteAverage) &&
            (identical(other.posterPath, posterPath) ||
                other.posterPath == posterPath) &&
            (identical(other.backdropPath, backdropPath) ||
                other.backdropPath == backdropPath) &&
            const DeepCollectionEquality().equals(other._genreIds, _genreIds) &&
            (identical(other.releaseDate, releaseDate) ||
                other.releaseDate == releaseDate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      originalTitle,
      overview,
      voteAverage,
      posterPath,
      backdropPath,
      const DeepCollectionEquality().hash(_genreIds),
      releaseDate);

  /// Create a copy of MovieDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MovieDTOImplCopyWith<_$MovieDTOImpl> get copyWith =>
      __$$MovieDTOImplCopyWithImpl<_$MovieDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MovieDTOImplToJson(
      this,
    );
  }
}

abstract class _MovieDTO implements MovieDTO {
  const factory _MovieDTO(
          {required final int id,
          required final String title,
          @JsonKey(name: 'original_title') required final String originalTitle,
          required final String overview,
          @JsonKey(name: 'vote_average') required final double voteAverage,
          @JsonKey(name: 'poster_path') final String? posterPath,
          @JsonKey(name: 'backdrop_path') final String? backdropPath,
          @JsonKey(name: 'genre_ids') required final List<int> genreIds,
          @JsonKey(name: 'release_date') required final String releaseDate}) =
      _$MovieDTOImpl;

  factory _MovieDTO.fromJson(Map<String, dynamic> json) =
      _$MovieDTOImpl.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  @JsonKey(name: 'original_title')
  String get originalTitle;
  @override
  String get overview;
  @override
  @JsonKey(name: 'vote_average')
  double get voteAverage;
  @override
  @JsonKey(name: 'poster_path')
  String? get posterPath;
  @override
  @JsonKey(name: 'backdrop_path')
  String? get backdropPath;
  @override
  @JsonKey(name: 'genre_ids')
  List<int> get genreIds;
  @override
  @JsonKey(name: 'release_date')
  String get releaseDate;

  /// Create a copy of MovieDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MovieDTOImplCopyWith<_$MovieDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
