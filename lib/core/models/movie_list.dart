import 'movie.dart';

class MovieList {
  final String listTitle;
  final List<Movie?> movies;
  final int count;

  MovieList({
    required this.listTitle,
    required this.movies,
    required this.count,
  });
}
