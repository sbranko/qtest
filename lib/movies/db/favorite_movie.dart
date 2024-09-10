import 'package:hive/hive.dart';

import '../business_objects/movie_bo.dart';

part '../../../movies/db/favorite_movie.g.dart'; // This is needed for code
// generation

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
      id: id,
      title: title,
      posterUrl: posterUrl,
      voteAverage: voteAverage,
      genres: genres,
      overview: overview,
      isFavorite: isFavorite, originalTitle: originalTitle,
      backdropUrl: backdropUrl, releaseDate: releaseDate,
    );
  }
}
