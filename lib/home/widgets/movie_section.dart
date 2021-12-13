import 'package:flutter/material.dart';
import 'package:movie_time_app/core/models/movie_list.dart';
import 'package:movie_time_app/home/widgets/movie_carousel_slider_expanded.dart';
import 'package:movie_time_app/home/widgets/movie_carousel_widget.dart';

class MovieSection extends StatelessWidget {
  final MovieList list;
  final String title;

  const MovieSection({
    Key? key,
    required this.list,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          child: Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
            padding: const EdgeInsets.only(bottom: 12.0),
            child: list.listTitle == 'Suspense'
                ? MovieCarouselExpanded(
                    movies: list,
                  )
                : MovieCarouselWidget(
                    list: list,
                  ))
      ],
    );
  }
}
