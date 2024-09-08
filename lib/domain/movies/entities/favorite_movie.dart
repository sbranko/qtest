import 'package:hive/hive.dart';

import 'movie_bo.dart';

part 'favorite_movie.g.dart'; // This is needed for code generation

@HiveType(typeId: 0) // Define a unique typeId for Hive
class FavoriteMovie extends HiveObject {
  @HiveField(0)
  final int id;

  @HiveField(1)
  final String title;

  @HiveField(2)
  final String originalTitle;

  @HiveField(3)
  final String overview;

  @HiveField(4)
  final double voteAverage;

  @HiveField(5)
  final String posterUrl;

  @HiveField(6)
  final String backdropUrl;

  @HiveField(7)
  final List<String> genres;

  @HiveField(8)
  final String releaseDate;

  @HiveField(9)
  final bool isFavorite;

  FavoriteMovie({
    required this.id,
    required this.title,
    required this.originalTitle,
    required this.overview,
    required this.voteAverage,
    required this.posterUrl,
    required this.backdropUrl,
    required this.genres,
    required this.releaseDate,
    required this.isFavorite,
  });
  MovieBO toBO() {
    return MovieBO(
      id: this.id,
      title: this.title,
      posterUrl: this.posterUrl,
      voteAverage: this.voteAverage,
      genres: this.genres,
      overview: this.overview,
      isFavorite: this.isFavorite, originalTitle: this.originalTitle,
      backdropUrl: this.backdropUrl, releaseDate: this.releaseDate,
    );
  }
}
