import 'package:dio/dio.dart';
import 'package:mobx/mobx.dart';
import 'package:movie_time_app/core/models/movie.dart';
import 'package:movie_time_app/core/models/movie_list.dart';

part 'home_controller.g.dart';

class MovieController = _MovieControllerBase with _$MovieController;

abstract class _MovieControllerBase with Store {
  @observable
  List<MovieList>? movieListsResponse;

  @observable
  bool requestIsLoadig = false;

  @action
  Future getMovies() async {
    requestIsLoadig = true;
    try {
      final response = await Dio().get('http://192.168.0.6:3000/movies');

      final responseData = response.data as List;

      final movies =
          responseData.map((movie) => Movie.fromJson(movie)).toList();

      movieListsResponse = mapMoviesToMoviesLists(movies);
    } catch (error) {
      print(error);
    }
    requestIsLoadig = false;
  }

  List<MovieList> mapMoviesToMoviesLists(List<Movie> movies) {
    List<Movie> suspenseList = [];
    List<Movie> comedyList = [];
    List<Movie> romanceList = [];
    List<Movie> actionList = [];

    movies.map((movie) {
      switch (movie.genre) {
        case 'Suspense':
          suspenseList.add(movie);
          break;
        case 'Romance':
          romanceList.add(movie);
          break;
        case 'Comédia':
          comedyList.add(movie);
          break;
        case 'Ação':
          actionList.add(movie);
          break;
        default:
          break;
      }
    }).toList();

    return [
      MovieList(
        movies: suspenseList,
        listTitle: 'Suspense',
        count: suspenseList.length,
      ),
      MovieList(
        movies: actionList,
        listTitle: 'Ação',
        count: actionList.length,
      ),
      MovieList(
        movies: romanceList,
        listTitle: 'Romance',
        count: romanceList.length,
      ),
      MovieList(
        movies: comedyList,
        listTitle: 'Comédia',
        count: comedyList.length,
      ),
    ];
  }
}
