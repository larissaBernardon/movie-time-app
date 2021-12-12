import 'package:json_annotation/json_annotation.dart';
part 'movie.g.dart';

enum Genre {
  horror,
  action,
  comedy,
  drama,
  fantasy,
  romance,
}

@JsonSerializable()
class Movie {
  final int id;
  final String title;
  final String synopsis;
  final String genre;
  final String coverUrl;

  Movie({
    required this.id,
    required this.title,
    required this.synopsis,
    required this.genre,
    required this.coverUrl,
  });

  factory Movie.fromJson(json) => _$MovieFromJson(json);
  toJson() => _$MovieToJson(this);

  Genre genreToEnum() {
    switch (genre) {
      case 'horror':
        return Genre.horror;
      case 'action':
        return Genre.action;
      case 'comedy':
        return Genre.comedy;
      case 'drama':
        return Genre.drama;
      case 'fantasy':
        return Genre.fantasy;
      case 'romance':
        return Genre.romance;
      default:
        return Genre.horror;
    }
  }
}
