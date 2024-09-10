// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:hive/hive.dart';
// import 'package:myapp/data/models/movie_dto.dart';
// import 'package:auto_route/auto_route.dart';
// import 'package:myapp/presentation/bloc/favorite_movie_cubit.dart';
//
// import '../../setup_locator.dart';
//
// @RoutePage()
// class FavoritesPage extends StatefulWidget {
//   @override
//   State<FavoritesPage> createState() => _FavoritesPageState();
// }
//
// class _FavoritesPageState extends State<FavoritesPage>
//     with AutomaticKeepAliveClientMixin {
//   @override
//   Widget build(BuildContext context) {
//     super.build(context);
//     // Fetch favorite movies when page is built
//     context.read<FavoriteMovieCubit>().fetchFavoriteMovies();
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Favorite Movies'),
//         backgroundColor: Colors.black87,
//       ),
//       body: BlocBuilder<FavoriteMovieCubit, FavoriteMovieState>(
//         builder: (context, state) {
//           if (state is Loaded) {
//             if (state.favoriteMovies.isEmpty) {
//               return const Center(
//                 child: Text(
//                   'No favorite movies yet!',
//                   style: TextStyle(color: Colors.white),
//                 ),
//               );
//             }
//
//             return ListView.builder(
//               itemCount: state.favoriteMovies.length,
//               itemBuilder: (context, index) {
//                 final movie = state.favoriteMovies[index];
//                 return ListTile(
//                   leading: Image.network(
//                     'https://image.tmdb.org/t/p/w500/${movie.posterUrl}',
//                     width: 50,
//                     fit: BoxFit.cover,
//                   ),
//                   title: Text(movie.title,
//                       style: const TextStyle(color: Colors.white)),
//                   subtitle: Text('Rating: ${movie.voteAverage} / 10 IMDb',
//                       style: const TextStyle(color: Colors.white70)),
//                   trailing: IconButton(
//                     icon: Icon(
//                       movie.isFavorite ? Icons.favorite : Icons.favorite_border,
//                       color: movie.isFavorite ? Colors.red : Colors.grey,
//                     ),
//                     onPressed: () {
//                       // context.read<FavoriteMovieCubit>().toggleFavoriteMovie(movie, 1);
//                     },
//                   ),
//                 );
//               },
//             );
//           } else {
//             return const Center(child: CircularProgressIndicator());
//           }
//         },
//       ),
//       backgroundColor: const Color(0xFF121212), // Dark background for the page
//     );
//   }
//
//   @override
//   bool get wantKeepAlive => false;
// }
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:auto_route/auto_route.dart';
import 'package:myapp/movies/blocs/favorite_movie_cubit.dart';
import 'package:myapp/movies/business_objects/movie_bo.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myapp/core/router.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:cached_network_image/cached_network_image.dart';

@RoutePage()
class FavoritesPage extends StatelessWidget {
  const FavoritesPage({super.key});

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
      body: BlocBuilder<FavoriteMovieCubit, FavoriteMovieState>(
        builder: (context, state) {
          if (state is Loading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is Loaded) {
            return Container(
              color: const Color(0xFF121212), // Dark background
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
              margin: const EdgeInsets.all(0.0),
              child: ListView.builder(
                itemCount: state.favoriteMovies.length ,
                itemBuilder: (context, index) {

                  final movie = state.favoriteMovies[index];
                  return InkWell(
                    child: FavoriteMovieItem(movie: movie),
                    onTap: () => context.router.push(MovieDetailsRoute(movieId: movie.id)),
                  );
                },
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

class FavoriteMovieItem extends StatefulWidget {
  final MovieBO movie;
  bool isFavorite;

  FavoriteMovieItem({super.key, required this.movie, this.isFavorite = false});

  @override
  State<FavoriteMovieItem> createState() => _FavoriteMovieItemState();
}

class _FavoriteMovieItemState extends State<FavoriteMovieItem> {
  void _toggleFavorite() {
    setState(() {
      // widget.isFavorite = !widget.isFavorite; // Toggle the
      // favorite status
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FavoriteMovieCubit, FavoriteMovieState>(
      builder: (context, state) {
        return  widget.movie.isFavorite? Container(
          margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
          decoration: BoxDecoration(
            color: const Color(0xFF1C1C2E),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child:
                CachedNetworkImage(
                  imageUrl: 'https://image.tmdb.org/t/p/w500/${widget.movie.posterUrl}',
                  width: 100,
                  height: 140,
                  fit: BoxFit.cover,
                  placeholder: (context, url) => const SizedBox(
                    width: 20,
                    height: 20,
                    child: CircularProgressIndicator(
                      strokeWidth: 6, // Custom thickness
                    ),
                  ), // Placeholder while loading
                  errorWidget: (context, url, error) => const Icon(Icons.error), // Displayed if there's an error
                ),
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
                          Padding(
                            padding: const EdgeInsets.only(right: 16.0),
                            child: InkWell(
                              child:
                              SvgPicture.asset(
                                'assets/icons/favorite_icon.svg',
                                color:     widget.movie.isFavorite
                                    ? const Color(0xFFFFA726)
                                    : Colors.white70,
                                height: 24,
                              ),
                              onTap: () {
                                context.read<FavoriteMovieCubit>()
                                    .toggleFavoriteMovie(widget.movie);
                                final pom =context.read<FavoriteMovieCubit>()
                                    .updatedMovie(widget.movie)!.isFavorite;

                                print('vrednost $pom');
                                setState(() {
                                  widget.movie.isFavorite = !widget.movie
                                      .isFavorite;
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      Row(
                        children: [
                          const Icon(Icons.star, color: Colors.yellow, size: 16),
                          const SizedBox(width: 4),
                          Text(
                            "${(widget.movie.voteAverage * 10).floor() / 10} / 10 IMDb",
                            style: const TextStyle(color: Colors.white70, fontSize: 14),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      Wrap(
                        spacing: 6,
                        runSpacing: 6,
                        children: widget.movie.genres.map((genre) => _buildGenreTag(genre)).toList(),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ):const SizedBox();
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
