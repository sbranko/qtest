import 'package:myapp/data/models/movie_details_dto.dart';

class MovieDetailsBO {
  final int id;
  final String title;
  final String overview;
  final String posterUrl;
  final String backdropUrl;
  final String releaseDate;
  final double voteAverage;
  final int voteCount;
  final List<String> genres;
  final String tagline;
  final int runtime;
  final String status;
  final String homepage;

  MovieDetailsBO({
    required this.id,
    required this.title,
    required this.overview,
    required this.posterUrl,
    required this.backdropUrl,
    required this.releaseDate,
    required this.voteAverage,
    required this.voteCount,
    required this.genres,
    required this.tagline,
    required this.runtime,
    required this.status,
    required this.homepage,
  });

  // Utility method to create MovieDetailsBO from MovieDetails DTO
  factory MovieDetailsBO.fromDTO(MovieDetailsDTO dto) {
    return MovieDetailsBO(
      id: dto.id,
      title: dto.title,
      overview: dto.overview,
      posterUrl: 'https://image.tmdb.org/t/p/w500${dto.posterPath}',
      backdropUrl: 'https://image.tmdb.org/t/p/w500${dto.backdropPath}',
      releaseDate: dto.releaseDate ?? '',
      voteAverage: dto.voteAverage ?? 0.0,
      voteCount: dto.voteCount ?? 0,
      genres: dto.genres!.map((genre) => genre.name).toList(),
      tagline: dto.tagline,
      runtime: dto.runtime,
      status: dto.status,
      homepage: dto.homepage,
    );
  }
}
