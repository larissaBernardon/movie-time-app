import 'movie.dart';

class MovieList {
  final String listTitle;
  final List<Movie> movies;
  final int count;

  MovieList({
    required this.listTitle,
    required this.movies,
    required this.count,
  });

  factory MovieList.mock(Genre genre) {
    switch (genre) {
      case Genre.action:
        return MovieList(
          listTitle: 'Filmes de ação',
          movies: [
            Movie.mock(),
            Movie.mock(),
            Movie.mock(),
            Movie.mock(),
            Movie.mock(),
            Movie.mock(),
          ],
          count: 6,
        );
      case Genre.comedy:
        return MovieList(
          listTitle: 'Filmes de comédia',
          movies: [
            Movie.mock(),
            Movie.mock(),
            Movie.mock(),
            Movie.mock(),
            Movie.mock(),
            Movie.mock(),
          ],
          count: 6,
        );
      case Genre.horror:
        return MovieList(
          listTitle: 'Filmes de terror',
          movies: [
            Movie.mock(),
            Movie.mock(),
            Movie.mock(),
            Movie.mock(),
            Movie.mock(),
            Movie.mock(),
          ],
          count: 6,
        );
      case Genre.romance:
        return MovieList(
          listTitle: 'Filmes de romance',
          movies: [
            Movie.mock(),
            Movie.mock(),
            Movie.mock(),
            Movie.mock(),
            Movie.mock(),
            Movie.mock(),
          ],
          count: 6,
        );
      case Genre.fantasy:
        return MovieList(
          listTitle: 'Filmes de fantasia',
          movies: [
            Movie.mock(),
            Movie.mock(),
            Movie.mock(),
            Movie.mock(),
            Movie.mock(),
            Movie.mock(),
          ],
          count: 6,
        );
      case Genre.drama:
        return MovieList(
          listTitle: 'Filmes de drama',
          movies: [
            Movie.mock(),
            Movie.mock(),
            Movie.mock(),
            Movie.mock(),
            Movie.mock(),
            Movie.mock(),
          ],
          count: 6,
        );
    }
  }
}
