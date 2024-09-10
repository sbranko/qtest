// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../movies/db/favorite_movie.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class FavoriteMovieAdapter extends TypeAdapter<FavoriteMovie> {
  @override
  final int typeId = 0;

  @override
  FavoriteMovie read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return FavoriteMovie(
      id: fields[0] as int,
      title: fields[1] as String,
      originalTitle: fields[2] as String,
      overview: fields[3] as String,
      voteAverage: fields[4] as double,
      posterUrl: fields[5] as String,
      backdropUrl: fields[6] as String,
      genres: (fields[7] as List).cast<String>(),
      releaseDate: fields[8] as String,
      isFavorite: fields[9] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, FavoriteMovie obj) {
    writer
      ..writeByte(10)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.title)
      ..writeByte(2)
      ..write(obj.originalTitle)
      ..writeByte(3)
      ..write(obj.overview)
      ..writeByte(4)
      ..write(obj.voteAverage)
      ..writeByte(5)
      ..write(obj.posterUrl)
      ..writeByte(6)
      ..write(obj.backdropUrl)
      ..writeByte(7)
      ..write(obj.genres)
      ..writeByte(8)
      ..write(obj.releaseDate)
      ..writeByte(9)
      ..write(obj.isFavorite);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FavoriteMovieAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
