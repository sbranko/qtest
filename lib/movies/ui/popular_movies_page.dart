import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:auto_route/auto_route.dart';
import 'package:myapp/movies/business_objects/movie_bo.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myapp/core/router.dart';
import 'package:myapp/movies/blocs/movie_cubit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:cached_network_image/cached_network_image.dart';

// import '../blocs/favorite_movie_cubit.dart';
import '../blocs/network_cubit.dart';

@RoutePage()
class PopularMoviesPage extends StatefulWidget {
  const PopularMoviesPage({super.key});

  @override
  State<PopularMoviesPage> createState() => _PopularMoviesPageState();
}

class _PopularMoviesPageState extends State<PopularMoviesPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(0.0),
              child: Image.asset('assets/logo.png'),
            ),
          ],
        ),
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xFF1C1C2E),
      ),
      body:  BlocBuilder<MovieCubit, MovieState>(
          builder: (context, state) {
        if (state is Loading) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is Loaded) {
          return NotificationListener<ScrollNotification>(
            onNotification: (scrollInfo) {
              // Trigger fetching the next page when near the bottom
              if (context
                  .read<MovieCubit>()
                  .shouldFetchMoreMovies(scrollInfo, 200)) {
                context
                    .read<MovieCubit>()
                    .fetchPopularMovies(state.currentPage + 1);
              }
              return false;
            },
            child: RefreshIndicator(
              onRefresh: () async {
                // Pull-to-refresh action, reset page and refetch movies
                context.read<MovieCubit>().fetchPopularMovies(1);
              },
              child: Scrollbar(
                thumbVisibility: true, // Always show the scrollbar
                thickness: 6.0, // Adjust thickness of scrollbar
                radius: Radius.circular(10.r), // Optional: Customize the
                // shape of the scrollbar
                child: Container(
                  color: const Color(0xFF121212), // Dark background
                  padding: EdgeInsets.symmetric(
                      horizontal: 10.w, vertical: 10.h),
                  margin: const EdgeInsets.all(0.0),
                  child: ListView.builder(
                    primary: false,
                    itemCount: state.hasReachedMax
                        ? state.movies.length
                        : state.movies.length + 1,
                    itemBuilder: (context, index) {
                      if (index >= state.movies.length) {
                        return const Center(
                            child:
                            CircularProgressIndicator()); // Loading indicator
                      }
                      final movie = state.movies[index];
                      return InkWell(
                        child: MovieItem(
                          movie: movie,
                          page: state.currentPage,
                        ),
                        onTap: () => context.router
                            .push(MovieDetailsRoute(movieId: movie.id)),
                      );
                    },
                  ),
                ),
              ),
            ),
          );
        } else if (state is Error) {
          return Center(child: Text(state.message));
        }
        return Container();
      },
      ),

    );
  }
}

class MovieItem extends StatefulWidget {
  final MovieBO movie;
  final int page;
  bool isFavorite;

  MovieItem({
    super.key,
    required this.movie,
    required this.page,
    this.isFavorite = false,
  });

  @override
  State<MovieItem> createState() => _MovieItemState();
}

class _MovieItemState extends State<MovieItem> {
  void _toggleFavorite() {
    setState(() {
      widget.isFavorite = !widget.isFavorite; // Toggle the favorite status
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MovieCubit, MovieState>(
      builder: (context, state) {
        MovieBO? isFavorite =
            context.read<MovieCubit>().updatedMovie(widget.movie);
        print("da da ${isFavorite?.isFavorite}");

        return Container(
          margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
          decoration: BoxDecoration(
            color: const Color(0xFF1C1C2E),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: CachedNetworkImage(
                  imageUrl:
                      'https://image.tmdb.org/t/p/w500/${widget.movie.posterUrl}',
                  width: 100,
                  height: 140,
                  fit: BoxFit.cover,
                  placeholder: (context, url) => CircularProgressIndicator(),
                  // Placeholder while loading
                  errorWidget: (context, url, error) =>
                      Icon(Icons.error), // Displayed if there's an error
                ),

                // Image.network(
                //   'https://image.tmdb.org/t/p/w500/${widget.movie.posterUrl}',
                //   width: 100,
                //   height: 140,
                //   fit: BoxFit.cover,
                // ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Text(
                              widget.movie.title,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          isFavorite!.isFavorite
                              ? Padding(
                                  padding: const EdgeInsets.only(right: 16.0),
                                  child: InkWell(
                                    child: Container(
                                      padding:
                                          const EdgeInsets.all(10), // Adjust
                                      // padding to limit the clickable area
                                      child: SvgPicture.asset(
                                        'assets/icons/favorite_icon.svg',
                                        color: const Color(0xFFFFA726),
                                        height: 24,
                                        width: 18,
                                      ),
                                    ),
                                    onTap: () {
                                      // Call toggle function on Cubit/Bloc
                                      context
                                          .read<MovieCubit>()
                                          .toggleFavoriteMovie(
                                              widget.movie, widget.page);
                                      _toggleFavorite();
                                    },
                                  ),
                                )
                              : Padding(
                                  padding: EdgeInsets.only(right: 16.w),
                                  child: InkWell(
                                    child: Container(
                                      padding: EdgeInsets.all(10.r), // Adjust
                                      // padding
                                      // to limit the clickable area
                                      child: SvgPicture.asset(
                                        'assets/icons/unchecked_icon.svg',
                                        height: 18.h,
                                        width: 12.w,
                                      ),
                                    ),
                                    onTap: () {
                                      // Call toggle function on Cubit/Bloc
                                      context
                                          .read<MovieCubit>()
                                          .toggleFavoriteMovie(
                                              widget.movie, widget.page);
                                      _toggleFavorite();
                                    },
                                  ),
                                ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      Row(
                        children: [
                          const Icon(Icons.star,
                              color: Colors.yellow, size: 16),
                          const SizedBox(width: 4),
                          Text(
                            "${(widget.movie.voteAverage * 10).floor() / 10} / 10 IMDb",
                            style: const TextStyle(
                                color: Colors.white70, fontSize: 14),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      Wrap(
                        spacing: 6,
                        runSpacing: 6,
                        children: widget.movie.genres
                            .map((genre) => _buildGenreTag(genre))
                            .toList(),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildGenreTag(String genre) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: Colors.brown.withOpacity(0.2),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        genre,
        style: const TextStyle(color: Colors.white, fontSize: 12),
      ),
    );
  }
}

class CustomPageTransition {
  static Widget build(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation, Widget child) {
    const begin = Offset(1.0, 0.0); // Slide in from right to left
    const end = Offset.zero;
    const curve = Curves.easeInOut;

    final tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
    final offsetAnimation = animation.drive(tween);

    return SlideTransition(
      position: offsetAnimation,
      child: FadeTransition(
          opacity: animation, child: child), // Slide and Fade combination
    );
  }
}
