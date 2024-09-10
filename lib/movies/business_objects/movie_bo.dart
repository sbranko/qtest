import 'package:myapp/data/models/genre_dto.dart';

import '../../../data/models/movie_dto.dart';

class MovieBO {
  final int id;
  final String title;
  final String originalTitle;
  final String overview;
  final double voteAverage;
  final String posterUrl;
  final String backdropUrl;
  final List<String> genres;
  final String releaseDate;
   bool isFavorite;

  MovieBO({
    required this.id,
    required this.title,
    required this.originalTitle,
    required this.overview,
    required this.voteAverage,
    required this.posterUrl,
    required this.backdropUrl,
    required this.genres,
    required this.releaseDate,
    this.isFavorite = false,
  });

  // A utility to convert from DTO (Data Transfer Object) to BO
  factory MovieBO.fromDTO(MovieDTO dto, GenreListDTO genre) {
    return MovieBO(
      id: dto.id,
      title: dto.title,
      originalTitle: dto.originalTitle,
      overview: dto.overview,
      voteAverage: dto.voteAverage,
      posterUrl: 'https://image.tmdb.org/t/p/w500${dto.posterPath}',
      backdropUrl: 'https://image.tmdb.org/t/p/w500${dto.backdropPath}',
      genres: dto.genreIds.map((id) => _mapGenreIdToName(id, genre)).toList(),
      releaseDate: dto.releaseDate,
    );
  }

  // Helper method to map genre IDs to names
  static String _mapGenreIdToName(int genreId, GenreListDTO genre) {
    // final genreMap = {
    //   28: 'Action',
    //   35: 'Comedy',
    //   18: 'Drama',
    //   12: 'Adventure',
    //   16: 'Animation',
    //   35: 'Comedy',
    //   80: 'Crime',
    //   99: 'Documentary',
    //   10751: 'Family',
    //   14: 'Fantasy',
    //   36: 'History',
    //   27: 'Horror',
    //   10402: 'Music',
    //   9648: 'Mystery',
    //   10749: 'Romance',
    //   878: 'Science Fiction',
    //   10770: 'TV Movie',
    //   53: 'Thriller',
    //   10752: 'War',
    //   37: 'Western',
    // };
    Map<int, String> genreMap = {
      for (var genre in genre.genres) genre.id: genre.name
    };
    return genreMap[genreId] ?? 'Unknown';
  }
}
