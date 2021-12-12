import 'package:flutter/material.dart';
import 'package:movie_time_app/core/models/movie_list.dart';
import 'package:movie_time_app/home/widgets/movie_widget.dart';

class MovieCarouselWidget extends StatelessWidget {
  const MovieCarouselWidget({
    Key? key,
    required this.list,
  }) : super(key: key);

  final MovieList list;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8),
      height: 190,
      child: ListView.builder(
        padding: const EdgeInsets.only(
          left: 16,
          right: 16,
        ),
        scrollDirection: Axis.horizontal,
        itemCount: list.count,
        itemBuilder: (context, index) {
          final movie = list.movies[index];
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: MovieWidget(
              movie: movie!,
            ),
          );
        },
      ),
    );
  }
}
