import 'package:hive_flutter/hive_flutter.dart';
import 'movies/dto/movie_dto.dart';

Future<void> setupHive() async {
  await Hive.initFlutter();

  // Register adapters
  // Hive.registerAdapter(MovieAdapter());

  // Open your Hive boxes
  await Hive.openBox<MovieDTO>('moviesCache');
  await Hive.openBox<MovieDTO>('favorites');
}
