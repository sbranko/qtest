import 'package:freezed_annotation/freezed_annotation.dart';

part 'genre_dto.freezed.dart';
part 'genre_dto.g.dart';

@freezed
class GenreDTO with _$GenreDTO {
  const factory GenreDTO({
    required int id,
    required String name,
  }) = _GenreDTO;

  factory GenreDTO.fromJson(Map<String, dynamic> json) => _$GenreDTOFromJson(json);
}

@freezed
class GenreListDTO with _$GenreListDTO {
  const factory GenreListDTO({
    required List<GenreDTO> genres,
  }) = _GenreListDTO;

  factory GenreListDTO.fromJson(Map<String, dynamic> json) => _$GenreListDTOFromJson(json);
}
