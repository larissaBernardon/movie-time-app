import 'package:flutter/material.dart';

import 'package:movie_time_app/core/models/movie.dart';
import 'package:movie_time_app/home/widgets/movie_widget.dart';

class HomeGridPage extends StatefulWidget {
  const HomeGridPage({
    Key? key,
    required this.movies,
  }) : super(key: key);

  final List<Movie> movies;

  @override
  _HomeGridPageState createState() => _HomeGridPageState();
}

class _HomeGridPageState extends State<HomeGridPage> {
  @override
  Widget build(BuildContext context) {
    if (widget.movies.isEmpty) {
      return _loadingState();
    } else {
      return _buildGridView();
    }
  }

  Widget _loadingState() {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }

  Widget _buildGridView() {
    return GridView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      itemCount: widget.movies.length,
      itemBuilder: (BuildContext context, int index) {
        return MovieWidget(
          movie: widget.movies[index],
        );
      },
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        childAspectRatio: 1 / 1.5,
        crossAxisCount: 2,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
      ),
    );
  }
}
