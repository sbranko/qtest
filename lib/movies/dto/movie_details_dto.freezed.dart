// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_details_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MovieDetailsDTO _$MovieDetailsDTOFromJson(Map<String, dynamic> json) {
  return _MovieDetailsDTO.fromJson(json);
}

/// @nodoc
mixin _$MovieDetailsDTO {
  bool get adult => throw _privateConstructorUsedError;
  @JsonKey(name: 'backdrop_path')
  String? get backdropPath => throw _privateConstructorUsedError;
  @JsonKey(name: 'belongs_to_collection')
  BelongsToCollectionDTO? get belongsToCollection =>
      throw _privateConstructorUsedError;
  int get budget => throw _privateConstructorUsedError;
  List<GenreDTO>? get genres =>
      throw _privateConstructorUsedError; // Nullable list for genres
  String get homepage => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'imdb_id')
  String get imdbId => throw _privateConstructorUsedError;
  List<String>? get originCountry =>
      throw _privateConstructorUsedError; // Nullable list for origin_country
  @JsonKey(name: 'original_language')
  String get originalLanguage => throw _privateConstructorUsedError;
  @JsonKey(name: 'original_title')
  String get originalTitle => throw _privateConstructorUsedError;
  String get overview => throw _privateConstructorUsedError;
  double get popularity => throw _privateConstructorUsedError;
  @JsonKey(name: 'poster_path')
  String get posterPath => throw _privateConstructorUsedError;
  List<ProductionCompanyDTO>? get productionCompanies =>
      throw _privateConstructorUsedError; // Nullable list for production_companies
  List<ProductionCountryDTO>? get productionCountries =>
      throw _privateConstructorUsedError; // Nullable list for production_countries
  @JsonKey(name: 'release_date')
  String get releaseDate => throw _privateConstructorUsedError;
  int get revenue => throw _privateConstructorUsedError;
  int get runtime => throw _privateConstructorUsedError;
  List<SpokenLanguageDTO>? get spokenLanguages =>
      throw _privateConstructorUsedError; // Nullable list for spoken_languages
  String get status => throw _privateConstructorUsedError;
  String get tagline => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  bool get video => throw _privateConstructorUsedError;
  @JsonKey(name: 'vote_average')
  double get voteAverage => throw _privateConstructorUsedError;
  @JsonKey(name: 'vote_count')
  int get voteCount => throw _privateConstructorUsedError;

  /// Serializes this MovieDetailsDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MovieDetailsDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MovieDetailsDTOCopyWith<MovieDetailsDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieDetailsDTOCopyWith<$Res> {
  factory $MovieDetailsDTOCopyWith(
          MovieDetailsDTO value, $Res Function(MovieDetailsDTO) then) =
      _$MovieDetailsDTOCopyWithImpl<$Res, MovieDetailsDTO>;
  @useResult
  $Res call(
      {bool adult,
      @JsonKey(name: 'backdrop_path') String? backdropPath,
      @JsonKey(name: 'belongs_to_collection')
      BelongsToCollectionDTO? belongsToCollection,
      int budget,
      List<GenreDTO>? genres,
      String homepage,
      int id,
      @JsonKey(name: 'imdb_id') String imdbId,
      List<String>? originCountry,
      @JsonKey(name: 'original_language') String originalLanguage,
      @JsonKey(name: 'original_title') String originalTitle,
      String overview,
      double popularity,
      @JsonKey(name: 'poster_path') String posterPath,
      List<ProductionCompanyDTO>? productionCompanies,
      List<ProductionCountryDTO>? productionCountries,
      @JsonKey(name: 'release_date') String releaseDate,
      int revenue,
      int runtime,
      List<SpokenLanguageDTO>? spokenLanguages,
      String status,
      String tagline,
      String title,
      bool video,
      @JsonKey(name: 'vote_average') double voteAverage,
      @JsonKey(name: 'vote_count') int voteCount});

  $BelongsToCollectionDTOCopyWith<$Res>? get belongsToCollection;
}

/// @nodoc
class _$MovieDetailsDTOCopyWithImpl<$Res, $Val extends MovieDetailsDTO>
    implements $MovieDetailsDTOCopyWith<$Res> {
  _$MovieDetailsDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MovieDetailsDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adult = null,
    Object? backdropPath = freezed,
    Object? belongsToCollection = freezed,
    Object? budget = null,
    Object? genres = freezed,
    Object? homepage = null,
    Object? id = null,
    Object? imdbId = null,
    Object? originCountry = freezed,
    Object? originalLanguage = null,
    Object? originalTitle = null,
    Object? overview = null,
    Object? popularity = null,
    Object? posterPath = null,
    Object? productionCompanies = freezed,
    Object? productionCountries = freezed,
    Object? releaseDate = null,
    Object? revenue = null,
    Object? runtime = null,
    Object? spokenLanguages = freezed,
    Object? status = null,
    Object? tagline = null,
    Object? title = null,
    Object? video = null,
    Object? voteAverage = null,
    Object? voteCount = null,
  }) {
    return _then(_value.copyWith(
      adult: null == adult
          ? _value.adult
          : adult // ignore: cast_nullable_to_non_nullable
              as bool,
      backdropPath: freezed == backdropPath
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String?,
      belongsToCollection: freezed == belongsToCollection
          ? _value.belongsToCollection
          : belongsToCollection // ignore: cast_nullable_to_non_nullable
              as BelongsToCollectionDTO?,
      budget: null == budget
          ? _value.budget
          : budget // ignore: cast_nullable_to_non_nullable
              as int,
      genres: freezed == genres
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<GenreDTO>?,
      homepage: null == homepage
          ? _value.homepage
          : homepage // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      imdbId: null == imdbId
          ? _value.imdbId
          : imdbId // ignore: cast_nullable_to_non_nullable
              as String,
      originCountry: freezed == originCountry
          ? _value.originCountry
          : originCountry // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      originalLanguage: null == originalLanguage
          ? _value.originalLanguage
          : originalLanguage // ignore: cast_nullable_to_non_nullable
              as String,
      originalTitle: null == originalTitle
          ? _value.originalTitle
          : originalTitle // ignore: cast_nullable_to_non_nullable
              as String,
      overview: null == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
      popularity: null == popularity
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as double,
      posterPath: null == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String,
      productionCompanies: freezed == productionCompanies
          ? _value.productionCompanies
          : productionCompanies // ignore: cast_nullable_to_non_nullable
              as List<ProductionCompanyDTO>?,
      productionCountries: freezed == productionCountries
          ? _value.productionCountries
          : productionCountries // ignore: cast_nullable_to_non_nullable
              as List<ProductionCountryDTO>?,
      releaseDate: null == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String,
      revenue: null == revenue
          ? _value.revenue
          : revenue // ignore: cast_nullable_to_non_nullable
              as int,
      runtime: null == runtime
          ? _value.runtime
          : runtime // ignore: cast_nullable_to_non_nullable
              as int,
      spokenLanguages: freezed == spokenLanguages
          ? _value.spokenLanguages
          : spokenLanguages // ignore: cast_nullable_to_non_nullable
              as List<SpokenLanguageDTO>?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      tagline: null == tagline
          ? _value.tagline
          : tagline // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      video: null == video
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as bool,
      voteAverage: null == voteAverage
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double,
      voteCount: null == voteCount
          ? _value.voteCount
          : voteCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  /// Create a copy of MovieDetailsDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BelongsToCollectionDTOCopyWith<$Res>? get belongsToCollection {
    if (_value.belongsToCollection == null) {
      return null;
    }

    return $BelongsToCollectionDTOCopyWith<$Res>(_value.belongsToCollection!,
        (value) {
      return _then(_value.copyWith(belongsToCollection: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MovieDetailsDTOImplCopyWith<$Res>
    implements $MovieDetailsDTOCopyWith<$Res> {
  factory _$$MovieDetailsDTOImplCopyWith(_$MovieDetailsDTOImpl value,
          $Res Function(_$MovieDetailsDTOImpl) then) =
      __$$MovieDetailsDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool adult,
      @JsonKey(name: 'backdrop_path') String? backdropPath,
      @JsonKey(name: 'belongs_to_collection')
      BelongsToCollectionDTO? belongsToCollection,
      int budget,
      List<GenreDTO>? genres,
      String homepage,
      int id,
      @JsonKey(name: 'imdb_id') String imdbId,
      List<String>? originCountry,
      @JsonKey(name: 'original_language') String originalLanguage,
      @JsonKey(name: 'original_title') String originalTitle,
      String overview,
      double popularity,
      @JsonKey(name: 'poster_path') String posterPath,
      List<ProductionCompanyDTO>? productionCompanies,
      List<ProductionCountryDTO>? productionCountries,
      @JsonKey(name: 'release_date') String releaseDate,
      int revenue,
      int runtime,
      List<SpokenLanguageDTO>? spokenLanguages,
      String status,
      String tagline,
      String title,
      bool video,
      @JsonKey(name: 'vote_average') double voteAverage,
      @JsonKey(name: 'vote_count') int voteCount});

  @override
  $BelongsToCollectionDTOCopyWith<$Res>? get belongsToCollection;
}

/// @nodoc
class __$$MovieDetailsDTOImplCopyWithImpl<$Res>
    extends _$MovieDetailsDTOCopyWithImpl<$Res, _$MovieDetailsDTOImpl>
    implements _$$MovieDetailsDTOImplCopyWith<$Res> {
  __$$MovieDetailsDTOImplCopyWithImpl(
      _$MovieDetailsDTOImpl _value, $Res Function(_$MovieDetailsDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of MovieDetailsDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adult = null,
    Object? backdropPath = freezed,
    Object? belongsToCollection = freezed,
    Object? budget = null,
    Object? genres = freezed,
    Object? homepage = null,
    Object? id = null,
    Object? imdbId = null,
    Object? originCountry = freezed,
    Object? originalLanguage = null,
    Object? originalTitle = null,
    Object? overview = null,
    Object? popularity = null,
    Object? posterPath = null,
    Object? productionCompanies = freezed,
    Object? productionCountries = freezed,
    Object? releaseDate = null,
    Object? revenue = null,
    Object? runtime = null,
    Object? spokenLanguages = freezed,
    Object? status = null,
    Object? tagline = null,
    Object? title = null,
    Object? video = null,
    Object? voteAverage = null,
    Object? voteCount = null,
  }) {
    return _then(_$MovieDetailsDTOImpl(
      adult: null == adult
          ? _value.adult
          : adult // ignore: cast_nullable_to_non_nullable
              as bool,
      backdropPath: freezed == backdropPath
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String?,
      belongsToCollection: freezed == belongsToCollection
          ? _value.belongsToCollection
          : belongsToCollection // ignore: cast_nullable_to_non_nullable
              as BelongsToCollectionDTO?,
      budget: null == budget
          ? _value.budget
          : budget // ignore: cast_nullable_to_non_nullable
              as int,
      genres: freezed == genres
          ? _value._genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<GenreDTO>?,
      homepage: null == homepage
          ? _value.homepage
          : homepage // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      imdbId: null == imdbId
          ? _value.imdbId
          : imdbId // ignore: cast_nullable_to_non_nullable
              as String,
      originCountry: freezed == originCountry
          ? _value._originCountry
          : originCountry // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      originalLanguage: null == originalLanguage
          ? _value.originalLanguage
          : originalLanguage // ignore: cast_nullable_to_non_nullable
              as String,
      originalTitle: null == originalTitle
          ? _value.originalTitle
          : originalTitle // ignore: cast_nullable_to_non_nullable
              as String,
      overview: null == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
      popularity: null == popularity
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as double,
      posterPath: null == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String,
      productionCompanies: freezed == productionCompanies
          ? _value._productionCompanies
          : productionCompanies // ignore: cast_nullable_to_non_nullable
              as List<ProductionCompanyDTO>?,
      productionCountries: freezed == productionCountries
          ? _value._productionCountries
          : productionCountries // ignore: cast_nullable_to_non_nullable
              as List<ProductionCountryDTO>?,
      releaseDate: null == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String,
      revenue: null == revenue
          ? _value.revenue
          : revenue // ignore: cast_nullable_to_non_nullable
              as int,
      runtime: null == runtime
          ? _value.runtime
          : runtime // ignore: cast_nullable_to_non_nullable
              as int,
      spokenLanguages: freezed == spokenLanguages
          ? _value._spokenLanguages
          : spokenLanguages // ignore: cast_nullable_to_non_nullable
              as List<SpokenLanguageDTO>?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      tagline: null == tagline
          ? _value.tagline
          : tagline // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      video: null == video
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as bool,
      voteAverage: null == voteAverage
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double,
      voteCount: null == voteCount
          ? _value.voteCount
          : voteCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MovieDetailsDTOImpl implements _MovieDetailsDTO {
  const _$MovieDetailsDTOImpl(
      {required this.adult,
      @JsonKey(name: 'backdrop_path') required this.backdropPath,
      @JsonKey(name: 'belongs_to_collection') this.belongsToCollection,
      required this.budget,
      final List<GenreDTO>? genres,
      required this.homepage,
      required this.id,
      @JsonKey(name: 'imdb_id') required this.imdbId,
      final List<String>? originCountry,
      @JsonKey(name: 'original_language') required this.originalLanguage,
      @JsonKey(name: 'original_title') required this.originalTitle,
      required this.overview,
      required this.popularity,
      @JsonKey(name: 'poster_path') required this.posterPath,
      final List<ProductionCompanyDTO>? productionCompanies,
      final List<ProductionCountryDTO>? productionCountries,
      @JsonKey(name: 'release_date') required this.releaseDate,
      required this.revenue,
      required this.runtime,
      final List<SpokenLanguageDTO>? spokenLanguages,
      required this.status,
      required this.tagline,
      required this.title,
      required this.video,
      @JsonKey(name: 'vote_average') required this.voteAverage,
      @JsonKey(name: 'vote_count') required this.voteCount})
      : _genres = genres,
        _originCountry = originCountry,
        _productionCompanies = productionCompanies,
        _productionCountries = productionCountries,
        _spokenLanguages = spokenLanguages;

  factory _$MovieDetailsDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$MovieDetailsDTOImplFromJson(json);

  @override
  final bool adult;
  @override
  @JsonKey(name: 'backdrop_path')
  final String? backdropPath;
  @override
  @JsonKey(name: 'belongs_to_collection')
  final BelongsToCollectionDTO? belongsToCollection;
  @override
  final int budget;
  final List<GenreDTO>? _genres;
  @override
  List<GenreDTO>? get genres {
    final value = _genres;
    if (value == null) return null;
    if (_genres is EqualUnmodifiableListView) return _genres;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

// Nullable list for genres
  @override
  final String homepage;
  @override
  final int id;
  @override
  @JsonKey(name: 'imdb_id')
  final String imdbId;
  final List<String>? _originCountry;
  @override
  List<String>? get originCountry {
    final value = _originCountry;
    if (value == null) return null;
    if (_originCountry is EqualUnmodifiableListView) return _originCountry;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

// Nullable list for origin_country
  @override
  @JsonKey(name: 'original_language')
  final String originalLanguage;
  @override
  @JsonKey(name: 'original_title')
  final String originalTitle;
  @override
  final String overview;
  @override
  final double popularity;
  @override
  @JsonKey(name: 'poster_path')
  final String posterPath;
  final List<ProductionCompanyDTO>? _productionCompanies;
  @override
  List<ProductionCompanyDTO>? get productionCompanies {
    final value = _productionCompanies;
    if (value == null) return null;
    if (_productionCompanies is EqualUnmodifiableListView)
      return _productionCompanies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

// Nullable list for production_companies
  final List<ProductionCountryDTO>? _productionCountries;
// Nullable list for production_companies
  @override
  List<ProductionCountryDTO>? get productionCountries {
    final value = _productionCountries;
    if (value == null) return null;
    if (_productionCountries is EqualUnmodifiableListView)
      return _productionCountries;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

// Nullable list for production_countries
  @override
  @JsonKey(name: 'release_date')
  final String releaseDate;
  @override
  final int revenue;
  @override
  final int runtime;
  final List<SpokenLanguageDTO>? _spokenLanguages;
  @override
  List<SpokenLanguageDTO>? get spokenLanguages {
    final value = _spokenLanguages;
    if (value == null) return null;
    if (_spokenLanguages is EqualUnmodifiableListView) return _spokenLanguages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

// Nullable list for spoken_languages
  @override
  final String status;
  @override
  final String tagline;
  @override
  final String title;
  @override
  final bool video;
  @override
  @JsonKey(name: 'vote_average')
  final double voteAverage;
  @override
  @JsonKey(name: 'vote_count')
  final int voteCount;

  @override
  String toString() {
    return 'MovieDetailsDTO(adult: $adult, backdropPath: $backdropPath, belongsToCollection: $belongsToCollection, budget: $budget, genres: $genres, homepage: $homepage, id: $id, imdbId: $imdbId, originCountry: $originCountry, originalLanguage: $originalLanguage, originalTitle: $originalTitle, overview: $overview, popularity: $popularity, posterPath: $posterPath, productionCompanies: $productionCompanies, productionCountries: $productionCountries, releaseDate: $releaseDate, revenue: $revenue, runtime: $runtime, spokenLanguages: $spokenLanguages, status: $status, tagline: $tagline, title: $title, video: $video, voteAverage: $voteAverage, voteCount: $voteCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MovieDetailsDTOImpl &&
            (identical(other.adult, adult) || other.adult == adult) &&
            (identical(other.backdropPath, backdropPath) ||
                other.backdropPath == backdropPath) &&
            (identical(other.belongsToCollection, belongsToCollection) ||
                other.belongsToCollection == belongsToCollection) &&
            (identical(other.budget, budget) || other.budget == budget) &&
            const DeepCollectionEquality().equals(other._genres, _genres) &&
            (identical(other.homepage, homepage) ||
                other.homepage == homepage) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.imdbId, imdbId) || other.imdbId == imdbId) &&
            const DeepCollectionEquality()
                .equals(other._originCountry, _originCountry) &&
            (identical(other.originalLanguage, originalLanguage) ||
                other.originalLanguage == originalLanguage) &&
            (identical(other.originalTitle, originalTitle) ||
                other.originalTitle == originalTitle) &&
            (identical(other.overview, overview) ||
                other.overview == overview) &&
            (identical(other.popularity, popularity) ||
                other.popularity == popularity) &&
            (identical(other.posterPath, posterPath) ||
                other.posterPath == posterPath) &&
            const DeepCollectionEquality()
                .equals(other._productionCompanies, _productionCompanies) &&
            const DeepCollectionEquality()
                .equals(other._productionCountries, _productionCountries) &&
            (identical(other.releaseDate, releaseDate) ||
                other.releaseDate == releaseDate) &&
            (identical(other.revenue, revenue) || other.revenue == revenue) &&
            (identical(other.runtime, runtime) || other.runtime == runtime) &&
            const DeepCollectionEquality()
                .equals(other._spokenLanguages, _spokenLanguages) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.tagline, tagline) || other.tagline == tagline) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.video, video) || other.video == video) &&
            (identical(other.voteAverage, voteAverage) ||
                other.voteAverage == voteAverage) &&
            (identical(other.voteCount, voteCount) ||
                other.voteCount == voteCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        adult,
        backdropPath,
        belongsToCollection,
        budget,
        const DeepCollectionEquality().hash(_genres),
        homepage,
        id,
        imdbId,
        const DeepCollectionEquality().hash(_originCountry),
        originalLanguage,
        originalTitle,
        overview,
        popularity,
        posterPath,
        const DeepCollectionEquality().hash(_productionCompanies),
        const DeepCollectionEquality().hash(_productionCountries),
        releaseDate,
        revenue,
        runtime,
        const DeepCollectionEquality().hash(_spokenLanguages),
        status,
        tagline,
        title,
        video,
        voteAverage,
        voteCount
      ]);

  /// Create a copy of MovieDetailsDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MovieDetailsDTOImplCopyWith<_$MovieDetailsDTOImpl> get copyWith =>
      __$$MovieDetailsDTOImplCopyWithImpl<_$MovieDetailsDTOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MovieDetailsDTOImplToJson(
      this,
    );
  }
}

abstract class _MovieDetailsDTO implements MovieDetailsDTO {
  const factory _MovieDetailsDTO(
          {required final bool adult,
          @JsonKey(name: 'backdrop_path') required final String? backdropPath,
          @JsonKey(name: 'belongs_to_collection')
          final BelongsToCollectionDTO? belongsToCollection,
          required final int budget,
          final List<GenreDTO>? genres,
          required final String homepage,
          required final int id,
          @JsonKey(name: 'imdb_id') required final String imdbId,
          final List<String>? originCountry,
          @JsonKey(name: 'original_language')
          required final String originalLanguage,
          @JsonKey(name: 'original_title') required final String originalTitle,
          required final String overview,
          required final double popularity,
          @JsonKey(name: 'poster_path') required final String posterPath,
          final List<ProductionCompanyDTO>? productionCompanies,
          final List<ProductionCountryDTO>? productionCountries,
          @JsonKey(name: 'release_date') required final String releaseDate,
          required final int revenue,
          required final int runtime,
          final List<SpokenLanguageDTO>? spokenLanguages,
          required final String status,
          required final String tagline,
          required final String title,
          required final bool video,
          @JsonKey(name: 'vote_average') required final double voteAverage,
          @JsonKey(name: 'vote_count') required final int voteCount}) =
      _$MovieDetailsDTOImpl;

  factory _MovieDetailsDTO.fromJson(Map<String, dynamic> json) =
      _$MovieDetailsDTOImpl.fromJson;

  @override
  bool get adult;
  @override
  @JsonKey(name: 'backdrop_path')
  String? get backdropPath;
  @override
  @JsonKey(name: 'belongs_to_collection')
  BelongsToCollectionDTO? get belongsToCollection;
  @override
  int get budget;
  @override
  List<GenreDTO>? get genres; // Nullable list for genres
  @override
  String get homepage;
  @override
  int get id;
  @override
  @JsonKey(name: 'imdb_id')
  String get imdbId;
  @override
  List<String>? get originCountry; // Nullable list for origin_country
  @override
  @JsonKey(name: 'original_language')
  String get originalLanguage;
  @override
  @JsonKey(name: 'original_title')
  String get originalTitle;
  @override
  String get overview;
  @override
  double get popularity;
  @override
  @JsonKey(name: 'poster_path')
  String get posterPath;
  @override
  List<ProductionCompanyDTO>?
      get productionCompanies; // Nullable list for production_companies
  @override
  List<ProductionCountryDTO>?
      get productionCountries; // Nullable list for production_countries
  @override
  @JsonKey(name: 'release_date')
  String get releaseDate;
  @override
  int get revenue;
  @override
  int get runtime;
  @override
  List<SpokenLanguageDTO>?
      get spokenLanguages; // Nullable list for spoken_languages
  @override
  String get status;
  @override
  String get tagline;
  @override
  String get title;
  @override
  bool get video;
  @override
  @JsonKey(name: 'vote_average')
  double get voteAverage;
  @override
  @JsonKey(name: 'vote_count')
  int get voteCount;

  /// Create a copy of MovieDetailsDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MovieDetailsDTOImplCopyWith<_$MovieDetailsDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BelongsToCollectionDTO _$BelongsToCollectionDTOFromJson(
    Map<String, dynamic> json) {
  return _BelongsToCollectionDTO.fromJson(json);
}

/// @nodoc
mixin _$BelongsToCollectionDTO {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'poster_path')
  String? get posterPath => throw _privateConstructorUsedError;
  @JsonKey(name: 'backdrop_path')
  String? get backdropPath => throw _privateConstructorUsedError;

  /// Serializes this BelongsToCollectionDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BelongsToCollectionDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BelongsToCollectionDTOCopyWith<BelongsToCollectionDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BelongsToCollectionDTOCopyWith<$Res> {
  factory $BelongsToCollectionDTOCopyWith(BelongsToCollectionDTO value,
          $Res Function(BelongsToCollectionDTO) then) =
      _$BelongsToCollectionDTOCopyWithImpl<$Res, BelongsToCollectionDTO>;
  @useResult
  $Res call(
      {int id,
      String name,
      @JsonKey(name: 'poster_path') String? posterPath,
      @JsonKey(name: 'backdrop_path') String? backdropPath});
}

/// @nodoc
class _$BelongsToCollectionDTOCopyWithImpl<$Res,
        $Val extends BelongsToCollectionDTO>
    implements $BelongsToCollectionDTOCopyWith<$Res> {
  _$BelongsToCollectionDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BelongsToCollectionDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? posterPath = freezed,
    Object? backdropPath = freezed,
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
      posterPath: freezed == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      backdropPath: freezed == backdropPath
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BelongsToCollectionDTOImplCopyWith<$Res>
    implements $BelongsToCollectionDTOCopyWith<$Res> {
  factory _$$BelongsToCollectionDTOImplCopyWith(
          _$BelongsToCollectionDTOImpl value,
          $Res Function(_$BelongsToCollectionDTOImpl) then) =
      __$$BelongsToCollectionDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      @JsonKey(name: 'poster_path') String? posterPath,
      @JsonKey(name: 'backdrop_path') String? backdropPath});
}

/// @nodoc
class __$$BelongsToCollectionDTOImplCopyWithImpl<$Res>
    extends _$BelongsToCollectionDTOCopyWithImpl<$Res,
        _$BelongsToCollectionDTOImpl>
    implements _$$BelongsToCollectionDTOImplCopyWith<$Res> {
  __$$BelongsToCollectionDTOImplCopyWithImpl(
      _$BelongsToCollectionDTOImpl _value,
      $Res Function(_$BelongsToCollectionDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of BelongsToCollectionDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? posterPath = freezed,
    Object? backdropPath = freezed,
  }) {
    return _then(_$BelongsToCollectionDTOImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      posterPath: freezed == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      backdropPath: freezed == backdropPath
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BelongsToCollectionDTOImpl implements _BelongsToCollectionDTO {
  const _$BelongsToCollectionDTOImpl(
      {required this.id,
      required this.name,
      @JsonKey(name: 'poster_path') required this.posterPath,
      @JsonKey(name: 'backdrop_path') required this.backdropPath});

  factory _$BelongsToCollectionDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$BelongsToCollectionDTOImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  @JsonKey(name: 'poster_path')
  final String? posterPath;
  @override
  @JsonKey(name: 'backdrop_path')
  final String? backdropPath;

  @override
  String toString() {
    return 'BelongsToCollectionDTO(id: $id, name: $name, posterPath: $posterPath, backdropPath: $backdropPath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BelongsToCollectionDTOImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.posterPath, posterPath) ||
                other.posterPath == posterPath) &&
            (identical(other.backdropPath, backdropPath) ||
                other.backdropPath == backdropPath));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, posterPath, backdropPath);

  /// Create a copy of BelongsToCollectionDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BelongsToCollectionDTOImplCopyWith<_$BelongsToCollectionDTOImpl>
      get copyWith => __$$BelongsToCollectionDTOImplCopyWithImpl<
          _$BelongsToCollectionDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BelongsToCollectionDTOImplToJson(
      this,
    );
  }
}

abstract class _BelongsToCollectionDTO implements BelongsToCollectionDTO {
  const factory _BelongsToCollectionDTO(
      {required final int id,
      required final String name,
      @JsonKey(name: 'poster_path') required final String? posterPath,
      @JsonKey(name: 'backdrop_path')
      required final String? backdropPath}) = _$BelongsToCollectionDTOImpl;

  factory _BelongsToCollectionDTO.fromJson(Map<String, dynamic> json) =
      _$BelongsToCollectionDTOImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(name: 'poster_path')
  String? get posterPath;
  @override
  @JsonKey(name: 'backdrop_path')
  String? get backdropPath;

  /// Create a copy of BelongsToCollectionDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BelongsToCollectionDTOImplCopyWith<_$BelongsToCollectionDTOImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ProductionCompanyDTO _$ProductionCompanyDTOFromJson(Map<String, dynamic> json) {
  return _ProductionCompanyDTO.fromJson(json);
}

/// @nodoc
mixin _$ProductionCompanyDTO {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'logo_path')
  String? get logoPath => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'origin_country')
  String get originCountry => throw _privateConstructorUsedError;

  /// Serializes this ProductionCompanyDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductionCompanyDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductionCompanyDTOCopyWith<ProductionCompanyDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductionCompanyDTOCopyWith<$Res> {
  factory $ProductionCompanyDTOCopyWith(ProductionCompanyDTO value,
          $Res Function(ProductionCompanyDTO) then) =
      _$ProductionCompanyDTOCopyWithImpl<$Res, ProductionCompanyDTO>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'logo_path') String? logoPath,
      String name,
      @JsonKey(name: 'origin_country') String originCountry});
}

/// @nodoc
class _$ProductionCompanyDTOCopyWithImpl<$Res,
        $Val extends ProductionCompanyDTO>
    implements $ProductionCompanyDTOCopyWith<$Res> {
  _$ProductionCompanyDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductionCompanyDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? logoPath = freezed,
    Object? name = null,
    Object? originCountry = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      logoPath: freezed == logoPath
          ? _value.logoPath
          : logoPath // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      originCountry: null == originCountry
          ? _value.originCountry
          : originCountry // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductionCompanyDTOImplCopyWith<$Res>
    implements $ProductionCompanyDTOCopyWith<$Res> {
  factory _$$ProductionCompanyDTOImplCopyWith(_$ProductionCompanyDTOImpl value,
          $Res Function(_$ProductionCompanyDTOImpl) then) =
      __$$ProductionCompanyDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'logo_path') String? logoPath,
      String name,
      @JsonKey(name: 'origin_country') String originCountry});
}

/// @nodoc
class __$$ProductionCompanyDTOImplCopyWithImpl<$Res>
    extends _$ProductionCompanyDTOCopyWithImpl<$Res, _$ProductionCompanyDTOImpl>
    implements _$$ProductionCompanyDTOImplCopyWith<$Res> {
  __$$ProductionCompanyDTOImplCopyWithImpl(_$ProductionCompanyDTOImpl _value,
      $Res Function(_$ProductionCompanyDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductionCompanyDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? logoPath = freezed,
    Object? name = null,
    Object? originCountry = null,
  }) {
    return _then(_$ProductionCompanyDTOImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      logoPath: freezed == logoPath
          ? _value.logoPath
          : logoPath // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      originCountry: null == originCountry
          ? _value.originCountry
          : originCountry // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductionCompanyDTOImpl implements _ProductionCompanyDTO {
  const _$ProductionCompanyDTOImpl(
      {required this.id,
      @JsonKey(name: 'logo_path') required this.logoPath,
      required this.name,
      @JsonKey(name: 'origin_country') required this.originCountry});

  factory _$ProductionCompanyDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductionCompanyDTOImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'logo_path')
  final String? logoPath;
  @override
  final String name;
  @override
  @JsonKey(name: 'origin_country')
  final String originCountry;

  @override
  String toString() {
    return 'ProductionCompanyDTO(id: $id, logoPath: $logoPath, name: $name, originCountry: $originCountry)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductionCompanyDTOImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.logoPath, logoPath) ||
                other.logoPath == logoPath) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.originCountry, originCountry) ||
                other.originCountry == originCountry));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, logoPath, name, originCountry);

  /// Create a copy of ProductionCompanyDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductionCompanyDTOImplCopyWith<_$ProductionCompanyDTOImpl>
      get copyWith =>
          __$$ProductionCompanyDTOImplCopyWithImpl<_$ProductionCompanyDTOImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductionCompanyDTOImplToJson(
      this,
    );
  }
}

abstract class _ProductionCompanyDTO implements ProductionCompanyDTO {
  const factory _ProductionCompanyDTO(
      {required final int id,
      @JsonKey(name: 'logo_path') required final String? logoPath,
      required final String name,
      @JsonKey(name: 'origin_country')
      required final String originCountry}) = _$ProductionCompanyDTOImpl;

  factory _ProductionCompanyDTO.fromJson(Map<String, dynamic> json) =
      _$ProductionCompanyDTOImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'logo_path')
  String? get logoPath;
  @override
  String get name;
  @override
  @JsonKey(name: 'origin_country')
  String get originCountry;

  /// Create a copy of ProductionCompanyDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductionCompanyDTOImplCopyWith<_$ProductionCompanyDTOImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ProductionCountryDTO _$ProductionCountryDTOFromJson(Map<String, dynamic> json) {
  return _ProductionCountryDTO.fromJson(json);
}

/// @nodoc
mixin _$ProductionCountryDTO {
  @JsonKey(name: 'iso_3166_1')
  String get iso31661 => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  /// Serializes this ProductionCountryDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductionCountryDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductionCountryDTOCopyWith<ProductionCountryDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductionCountryDTOCopyWith<$Res> {
  factory $ProductionCountryDTOCopyWith(ProductionCountryDTO value,
          $Res Function(ProductionCountryDTO) then) =
      _$ProductionCountryDTOCopyWithImpl<$Res, ProductionCountryDTO>;
  @useResult
  $Res call({@JsonKey(name: 'iso_3166_1') String iso31661, String name});
}

/// @nodoc
class _$ProductionCountryDTOCopyWithImpl<$Res,
        $Val extends ProductionCountryDTO>
    implements $ProductionCountryDTOCopyWith<$Res> {
  _$ProductionCountryDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductionCountryDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? iso31661 = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      iso31661: null == iso31661
          ? _value.iso31661
          : iso31661 // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductionCountryDTOImplCopyWith<$Res>
    implements $ProductionCountryDTOCopyWith<$Res> {
  factory _$$ProductionCountryDTOImplCopyWith(_$ProductionCountryDTOImpl value,
          $Res Function(_$ProductionCountryDTOImpl) then) =
      __$$ProductionCountryDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'iso_3166_1') String iso31661, String name});
}

/// @nodoc
class __$$ProductionCountryDTOImplCopyWithImpl<$Res>
    extends _$ProductionCountryDTOCopyWithImpl<$Res, _$ProductionCountryDTOImpl>
    implements _$$ProductionCountryDTOImplCopyWith<$Res> {
  __$$ProductionCountryDTOImplCopyWithImpl(_$ProductionCountryDTOImpl _value,
      $Res Function(_$ProductionCountryDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductionCountryDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? iso31661 = null,
    Object? name = null,
  }) {
    return _then(_$ProductionCountryDTOImpl(
      iso31661: null == iso31661
          ? _value.iso31661
          : iso31661 // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductionCountryDTOImpl implements _ProductionCountryDTO {
  const _$ProductionCountryDTOImpl(
      {@JsonKey(name: 'iso_3166_1') required this.iso31661,
      required this.name});

  factory _$ProductionCountryDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductionCountryDTOImplFromJson(json);

  @override
  @JsonKey(name: 'iso_3166_1')
  final String iso31661;
  @override
  final String name;

  @override
  String toString() {
    return 'ProductionCountryDTO(iso31661: $iso31661, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductionCountryDTOImpl &&
            (identical(other.iso31661, iso31661) ||
                other.iso31661 == iso31661) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, iso31661, name);

  /// Create a copy of ProductionCountryDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductionCountryDTOImplCopyWith<_$ProductionCountryDTOImpl>
      get copyWith =>
          __$$ProductionCountryDTOImplCopyWithImpl<_$ProductionCountryDTOImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductionCountryDTOImplToJson(
      this,
    );
  }
}

abstract class _ProductionCountryDTO implements ProductionCountryDTO {
  const factory _ProductionCountryDTO(
      {@JsonKey(name: 'iso_3166_1') required final String iso31661,
      required final String name}) = _$ProductionCountryDTOImpl;

  factory _ProductionCountryDTO.fromJson(Map<String, dynamic> json) =
      _$ProductionCountryDTOImpl.fromJson;

  @override
  @JsonKey(name: 'iso_3166_1')
  String get iso31661;
  @override
  String get name;

  /// Create a copy of ProductionCountryDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductionCountryDTOImplCopyWith<_$ProductionCountryDTOImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SpokenLanguageDTO _$SpokenLanguageDTOFromJson(Map<String, dynamic> json) {
  return _SpokenLanguageDTO.fromJson(json);
}

/// @nodoc
mixin _$SpokenLanguageDTO {
  @JsonKey(name: 'english_name')
  String get englishName => throw _privateConstructorUsedError;
  @JsonKey(name: 'iso_639_1')
  String get iso6391 => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  /// Serializes this SpokenLanguageDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SpokenLanguageDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SpokenLanguageDTOCopyWith<SpokenLanguageDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpokenLanguageDTOCopyWith<$Res> {
  factory $SpokenLanguageDTOCopyWith(
          SpokenLanguageDTO value, $Res Function(SpokenLanguageDTO) then) =
      _$SpokenLanguageDTOCopyWithImpl<$Res, SpokenLanguageDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: 'english_name') String englishName,
      @JsonKey(name: 'iso_639_1') String iso6391,
      String name});
}

/// @nodoc
class _$SpokenLanguageDTOCopyWithImpl<$Res, $Val extends SpokenLanguageDTO>
    implements $SpokenLanguageDTOCopyWith<$Res> {
  _$SpokenLanguageDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SpokenLanguageDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? englishName = null,
    Object? iso6391 = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      englishName: null == englishName
          ? _value.englishName
          : englishName // ignore: cast_nullable_to_non_nullable
              as String,
      iso6391: null == iso6391
          ? _value.iso6391
          : iso6391 // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SpokenLanguageDTOImplCopyWith<$Res>
    implements $SpokenLanguageDTOCopyWith<$Res> {
  factory _$$SpokenLanguageDTOImplCopyWith(_$SpokenLanguageDTOImpl value,
          $Res Function(_$SpokenLanguageDTOImpl) then) =
      __$$SpokenLanguageDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'english_name') String englishName,
      @JsonKey(name: 'iso_639_1') String iso6391,
      String name});
}

/// @nodoc
class __$$SpokenLanguageDTOImplCopyWithImpl<$Res>
    extends _$SpokenLanguageDTOCopyWithImpl<$Res, _$SpokenLanguageDTOImpl>
    implements _$$SpokenLanguageDTOImplCopyWith<$Res> {
  __$$SpokenLanguageDTOImplCopyWithImpl(_$SpokenLanguageDTOImpl _value,
      $Res Function(_$SpokenLanguageDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of SpokenLanguageDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? englishName = null,
    Object? iso6391 = null,
    Object? name = null,
  }) {
    return _then(_$SpokenLanguageDTOImpl(
      englishName: null == englishName
          ? _value.englishName
          : englishName // ignore: cast_nullable_to_non_nullable
              as String,
      iso6391: null == iso6391
          ? _value.iso6391
          : iso6391 // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SpokenLanguageDTOImpl implements _SpokenLanguageDTO {
  const _$SpokenLanguageDTOImpl(
      {@JsonKey(name: 'english_name') required this.englishName,
      @JsonKey(name: 'iso_639_1') required this.iso6391,
      required this.name});

  factory _$SpokenLanguageDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$SpokenLanguageDTOImplFromJson(json);

  @override
  @JsonKey(name: 'english_name')
  final String englishName;
  @override
  @JsonKey(name: 'iso_639_1')
  final String iso6391;
  @override
  final String name;

  @override
  String toString() {
    return 'SpokenLanguageDTO(englishName: $englishName, iso6391: $iso6391, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpokenLanguageDTOImpl &&
            (identical(other.englishName, englishName) ||
                other.englishName == englishName) &&
            (identical(other.iso6391, iso6391) || other.iso6391 == iso6391) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, englishName, iso6391, name);

  /// Create a copy of SpokenLanguageDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SpokenLanguageDTOImplCopyWith<_$SpokenLanguageDTOImpl> get copyWith =>
      __$$SpokenLanguageDTOImplCopyWithImpl<_$SpokenLanguageDTOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SpokenLanguageDTOImplToJson(
      this,
    );
  }
}

abstract class _SpokenLanguageDTO implements SpokenLanguageDTO {
  const factory _SpokenLanguageDTO(
      {@JsonKey(name: 'english_name') required final String englishName,
      @JsonKey(name: 'iso_639_1') required final String iso6391,
      required final String name}) = _$SpokenLanguageDTOImpl;

  factory _SpokenLanguageDTO.fromJson(Map<String, dynamic> json) =
      _$SpokenLanguageDTOImpl.fromJson;

  @override
  @JsonKey(name: 'english_name')
  String get englishName;
  @override
  @JsonKey(name: 'iso_639_1')
  String get iso6391;
  @override
  String get name;

  /// Create a copy of SpokenLanguageDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SpokenLanguageDTOImplCopyWith<_$SpokenLanguageDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
