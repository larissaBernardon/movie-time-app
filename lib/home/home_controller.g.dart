// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$MovieController on _MovieControllerBase, Store {
  final _$movieListsResponseAtom =
      Atom(name: '_MovieControllerBase.movieListsResponse');

  @override
  List<MovieList>? get movieListsResponse {
    _$movieListsResponseAtom.reportRead();
    return super.movieListsResponse;
  }

  @override
  set movieListsResponse(List<MovieList>? value) {
    _$movieListsResponseAtom.reportWrite(value, super.movieListsResponse, () {
      super.movieListsResponse = value;
    });
  }

  final _$moviesAtom = Atom(name: '_MovieControllerBase.movies');

  @override
  List<Movie>? get movies {
    _$moviesAtom.reportRead();
    return super.movies;
  }

  @override
  set movies(List<Movie>? value) {
    _$moviesAtom.reportWrite(value, super.movies, () {
      super.movies = value;
    });
  }

  final _$requestIsLoadigAtom =
      Atom(name: '_MovieControllerBase.requestIsLoadig');

  @override
  bool get requestIsLoadig {
    _$requestIsLoadigAtom.reportRead();
    return super.requestIsLoadig;
  }

  @override
  set requestIsLoadig(bool value) {
    _$requestIsLoadigAtom.reportWrite(value, super.requestIsLoadig, () {
      super.requestIsLoadig = value;
    });
  }

  final _$getMoviesAsyncAction = AsyncAction('_MovieControllerBase.getMovies');

  @override
  Future<dynamic> getMovies() {
    return _$getMoviesAsyncAction.run(() => super.getMovies());
  }

  @override
  String toString() {
    return '''
movieListsResponse: ${movieListsResponse},
movies: ${movies},
requestIsLoadig: ${requestIsLoadig}
    ''';
  }
}
