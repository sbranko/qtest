// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'genre_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GenreDTOImpl _$$GenreDTOImplFromJson(Map<String, dynamic> json) =>
    _$GenreDTOImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
    );

Map<String, dynamic> _$$GenreDTOImplToJson(_$GenreDTOImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

_$GenreListDTOImpl _$$GenreListDTOImplFromJson(Map<String, dynamic> json) =>
    _$GenreListDTOImpl(
      genres: (json['genres'] as List<dynamic>)
          .map((e) => GenreDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$GenreListDTOImplToJson(_$GenreListDTOImpl instance) =>
    <String, dynamic>{
      'genres': instance.genres,
    };
