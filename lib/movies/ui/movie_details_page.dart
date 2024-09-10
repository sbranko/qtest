import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myapp/movies/blocs/movie_cubit.dart';
import 'package:myapp/movies/blocs/movie_details_cubit.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:myapp/setup_locator.dart';

import '../blocs/favorite_movie_cubit.dart';

@RoutePage()
class MovieDetailsPage extends StatefulWidget {
  final int movieId;

  const MovieDetailsPage({super.key,  required this.movieId, });

  @override
  State<MovieDetailsPage> createState() => _MovieDetailsPageState();
}

class _MovieDetailsPageState extends State<MovieDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<MovieDetailsCubit>()..fetchMovieDetails(widget.movieId),
      child: WillPopScope(
        onWillPop: () async {
          // Call fetchFavoriteMovies() before going back
          context.read<FavoriteMovieCubit>().fetchFavoriteMovies();
          return true; // Allows the back navigation to proceed
        },
        child: Scaffold(
          backgroundColor: const Color(0xFF121212),
          body: BlocBuilder<MovieDetailsCubit, MovieDetailsState>(
            builder: (context, state) {
              if (state is LoadingDetails) {
                return const Center(child: CircularProgressIndicator());
                } else if (state is LoadedDetails) {
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
                                context.read<FavoriteMovieCubit>().fetchFavoriteMovies();
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
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Text(
                                    movie.title,
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 8,),
                                Padding(
                                  padding: const EdgeInsets.only(right: 16.0),
                                  child: InkWell(
                                    child:
                                    SvgPicture.asset(
                                      'assets/icons/favorite_icon.svg',
                                      color:   movie.isFavorite
                                          ? const Color(0xFFFFA726)
                                          : Colors.white70,
                                      height: 24,
                                    ),
                                    onTap: () {
                                      context.read<MovieDetailsCubit>()
                                          .toggleFavoriteMovie(movie);
                                      setState(() {
                                        movie.isFavorite = !movie.isFavorite;
                                      });

                                    },
                                  ),
                                ),
                                // isFavorite!.isFavorite ?
                                // Padding(
                                //   padding: const EdgeInsets.only(right: 16.0),
                                //   child: InkWell(
                                //     child:
                                //     Container(
                                //       padding: EdgeInsets.all(20), // Adjust
                                //       // padding to limit the clickable area
                                //       child: SvgPicture.asset(
                                //         'assets/icons/favorite_icon.svg',
                                //         color:
                                //         const Color(0xFFFFA726),
                                //         height: 24,
                                //         width: 18,
                                //       ),
                                //     ),
                                //     onTap: () {
                                //       // Call toggle function on Cubit/Bloc
                                //       context.read<MovieCubit>().toggleFavoriteMovie
                                //         (widget.movie, widget.page);
                                //       _toggleFavorite();
                                //     },
                                //   ),
                                // ):
                                // Padding(
                                //   padding: const EdgeInsets.only(right: 16.0),
                                //   child: InkWell(
                                //     child:
                                //     Container(
                                //       padding: EdgeInsets.all(20), // Adjust padding
                                //       // to limit the clickable area
                                //       child: SvgPicture.asset(
                                //         'assets/icons/unchecked_icon.svg',
                                //         height: 18,
                                //         width: 12,
                                //       ),
                                //     ),
                                //     onTap: () {
                                //       // Call toggle function on Cubit/Bloc
                                //       context.read<MovieCubit>().toggleFavoriteMovie
                                //         (movie, 0);
                                //       _toggleFavorite();
                                //     },
                                //   ),
                                // ),
                              ],
                            ),
                            const SizedBox(height: 8),
                            Row(
                              children: [
                                const Icon(Icons.star, color: Colors.yellow, size: 16),
                                const SizedBox(width: 4),
                                Text(
                                  "${(movie.voteAverage * 10).floor() / 10} / 10 IMDb",
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
              } else if (state is ErrorDetails) {
                return Center(child: Text('Error: ${state.message}'));
              }
              return const Center(child: Text('No movie data available.'));
            },
          ),
        ),
      ),
    );
  }
}

// Widget to display genre tags
class GenreTag extends StatelessWidget {
  final String genre;

  const GenreTag({super.key, required this.genre});

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
