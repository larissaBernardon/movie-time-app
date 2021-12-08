enum Genre {
  horror,
  action,
  comedy,
  drama,
  fantasy,
  romance,
}

class Movie {
  final String id;
  final String title;
  final String synopsis;
  final String genre;
  final String photoUrl;

  Movie({
    required this.id,
    required this.title,
    required this.synopsis,
    required this.genre,
    required this.photoUrl,
  });

  factory Movie.mock() {
    return Movie(
      id: '1',
      title: 'Harry Potter',
      synopsis: 'synopsis here',
      genre: 'horror',
      photoUrl:
          'https://images-na.ssl-images-amazon.com/images/I/91++nYXJ5dL.jpg',
    );
  }

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
