import 'package:flutter/material.dart';
import 'package:movie_time_app/core/models/movie.dart';
import 'package:movie_time_app/movie_detail/movie_detail_page.dart';

class MovieWidget extends StatelessWidget {
  final Movie movie;

  const MovieWidget({
    Key? key,
    required this.movie,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: AspectRatio(
        aspectRatio: 1 / 1.5,
        child: Image.network(
          movie.coverUrl,
          fit: BoxFit.fill,
        ),
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => MovieDetailPage(
              movie: movie,
            ),
          ),
        );
      },
    );
  }
}
