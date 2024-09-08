import 'package:freezed_annotation/freezed_annotation.dart';

import 'genre_dto.dart';

part 'movie_details_dto.freezed.dart';
part 'movie_details_dto.g.dart';

@freezed
class MovieDetailsDTO with _$MovieDetailsDTO {
  const factory MovieDetailsDTO({
    required bool adult,
    @JsonKey(name: 'backdrop_path') required String? backdropPath,
    @JsonKey(name: 'belongs_to_collection') BelongsToCollectionDTO? belongsToCollection,
    required int budget,
    List<GenreDTO>? genres,  // Nullable list for genres
    required String homepage,
    required int id,
    @JsonKey(name: 'imdb_id') required String imdbId,
    List<String>? originCountry,  // Nullable list for origin_country
    @JsonKey(name: 'original_language') required String originalLanguage,
    @JsonKey(name: 'original_title') required String originalTitle,
    required String overview,
    required double popularity,
    @JsonKey(name: 'poster_path') required String posterPath,
    List<ProductionCompanyDTO>? productionCompanies,  // Nullable list for production_companies
    List<ProductionCountryDTO>? productionCountries,  // Nullable list for production_countries
    @JsonKey(name: 'release_date') required String releaseDate,
    required int revenue,
    required int runtime,
    List<SpokenLanguageDTO>? spokenLanguages,  // Nullable list for spoken_languages
    required String status,
    required String tagline,
    required String title,
    required bool video,
    @JsonKey(name: 'vote_average') required double voteAverage,
    @JsonKey(name: 'vote_count') required int voteCount,
  }) = _MovieDetailsDTO;

  factory MovieDetailsDTO.fromJson(Map<String, dynamic> json) => _$MovieDetailsDTOFromJson(json);
}


@freezed
class BelongsToCollectionDTO with _$BelongsToCollectionDTO {
  const factory BelongsToCollectionDTO({
    required int id,
    required String name,
    @JsonKey(name: 'poster_path') required String? posterPath,
    @JsonKey(name: 'backdrop_path') required String? backdropPath,
  }) = _BelongsToCollectionDTO;

  factory BelongsToCollectionDTO.fromJson(Map<String, dynamic> json) => _$BelongsToCollectionDTOFromJson(json);
}


@freezed
class ProductionCompanyDTO with _$ProductionCompanyDTO {
  const factory ProductionCompanyDTO({
    required int id,
    @JsonKey(name: 'logo_path') required String? logoPath,
    required String name,
    @JsonKey(name: 'origin_country') required String originCountry,
  }) = _ProductionCompanyDTO;

  factory ProductionCompanyDTO.fromJson(Map<String, dynamic> json) => _$ProductionCompanyDTOFromJson(json);
}

@freezed
class ProductionCountryDTO with _$ProductionCountryDTO {
  const factory ProductionCountryDTO({
    @JsonKey(name: 'iso_3166_1') required String iso31661,
    required String name,
  }) = _ProductionCountryDTO;

  factory ProductionCountryDTO.fromJson(Map<String, dynamic> json) => _$ProductionCountryDTOFromJson(json);
}

@freezed
class SpokenLanguageDTO with _$SpokenLanguageDTO {
  const factory SpokenLanguageDTO({
    @JsonKey(name: 'english_name') required String englishName,
    @JsonKey(name: 'iso_639_1') required String iso6391,
    required String name,
  }) = _SpokenLanguageDTO;

  factory SpokenLanguageDTO.fromJson(Map<String, dynamic> json) => _$SpokenLanguageDTOFromJson(json);
}
