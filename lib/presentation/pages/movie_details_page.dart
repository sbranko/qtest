import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myapp/domain/movies/entities/movie_bo.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myapp/presentation/bloc/movie_details_cubit.dart';

import '../../setup_locator.dart';

@RoutePage()
class MovieDetailsPage extends StatelessWidget {
  final int movieId;

  const MovieDetailsPage({ required this.movieId, });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<MovieDetailsCubit>()..fetchMovieDetails(movieId),
      child: Scaffold(
        backgroundColor: const Color(0xFF121212),

        body: BlocBuilder<MovieDetailsCubit, MovieDetailsState>(
          builder: (context, state) {
            if (state is Loading) {
              return const Center(child: CircularProgressIndicator());
              } else if (state is Loaded) {
              final movie = state.movieDetails;
              return SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Backdrop image
                    Stack(
                      children: [
                        Container(
                          width: double.infinity,
                          height: 300,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(24),
                              bottomRight: Radius.circular(24),
                            ),
                          ),
                          child: ClipRRect(
                            borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(24),
                              bottomRight: Radius.circular(24),
                            ),
                            child: Image.network(
                              movie.backdropUrl,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Positioned(
                          top: 40,
                          left: 16,
                          child: IconButton(
                            icon: const Icon(Icons.arrow_back, color: Colors.white),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ),
                      ],
                    ),

                    // Movie title and IMDb rating
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            movie.title,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Row(
                            children: [
                              const Icon(Icons.star, color: Colors.yellow, size: 16),
                              const SizedBox(width: 4),
                              Text(
                                '${movie.voteAverage} / 10 IMDb',
                                style: const TextStyle(color: Colors.white70, fontSize: 14),
                              ),
                            ],
                          ),
                          const SizedBox(height: 16),

                          // Genres
                          Wrap(
                            spacing: 8,
                            children: movie.genres
                                .map((genre) => GenreTag(genre: genre))
                                .toList(),
                          ),
                        ],
                      ),
                    ),

                    // Description
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Description',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            movie.overview,
                            style: const TextStyle(color: Colors.white70, fontSize: 14),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            } else if (state is Error) {
              return Center(child: Text('Error: ${state.message}'));
            }
            return const Center(child: Text('No movie data available.'));
          },
        ),
      ),
    );
  }
}

// Widget to display genre tags
class GenreTag extends StatelessWidget {
  final String genre;

  const GenreTag({required this.genre});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
      decoration: BoxDecoration(
        color: Colors.brown.withOpacity(0.3),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        genre,
        style: TextStyle(color: Colors.white, fontSize: 12.sp),
      ),
    );
  }
}
