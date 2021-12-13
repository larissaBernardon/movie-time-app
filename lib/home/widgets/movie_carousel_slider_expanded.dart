import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:movie_time_app/core/models/movie_list.dart';
import 'package:movie_time_app/home/widgets/movie_widget.dart';

class MovieCarouselExpanded extends StatelessWidget {
  const MovieCarouselExpanded({
    Key? key,
    required this.movies,
  }) : super(key: key);

  final MovieList movies;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
        items: movies.movies.map((movie) {
          return Builder(
            builder: (BuildContext context) {
              return Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.symmetric(horizontal: 2.0),
                decoration: const BoxDecoration(color: Colors.black),
                child: MovieWidget(
                  movie: movie!,
                ),
              );
            },
          );
        }).toList(),
        options: CarouselOptions(
          height: 400,
          aspectRatio: 16 / 9,
          viewportFraction: 0.8,
          initialPage: 0,
          enableInfiniteScroll: true,
          reverse: false,
          autoPlay: true,
          autoPlayInterval: const Duration(seconds: 4),
          autoPlayAnimationDuration: const Duration(milliseconds: 800),
          autoPlayCurve: Curves.fastOutSlowIn,
          enlargeCenterPage: true,
          scrollDirection: Axis.horizontal,
        ));
  }
}
