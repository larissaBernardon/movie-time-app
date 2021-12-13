import 'package:flutter/material.dart';
import 'package:movie_time_app/core/models/movie.dart';

class MovieDetailPage extends StatelessWidget {
  const MovieDetailPage({
    Key? key,
    required this.movie,
  }) : super(key: key);

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(movie.title),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.50,
            width: MediaQuery.of(context).size.width,
            child: Image.network(
              movie.coverUrl,
              fit: BoxFit.fitWidth,
            ),
          ),
          const SizedBox(height: 30),
          _buildButton(
            context: context,
            label: 'Adicionar à minha lista',
            textColor: Colors.white,
            icon: const Icon(Icons.add),
            backgroundColor: Colors.black12,
            borderColor: Colors.white,
          ),
          const SizedBox(height: 15),
          _buildButton(
            context: context,
            label: 'Reproduzir',
            textColor: Colors.black,
            icon: const Icon(
              Icons.play_arrow,
              color: Colors.black,
            ),
            backgroundColor: Colors.white70,
            borderColor: Colors.black12,
          ),
          const SizedBox(height: 40),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              'Sinopse:',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Text(movie.synopsis),
          ),
        ],
      ),
    );
  }

  Widget _buildButton({
    required BuildContext context,
    required Color textColor,
    required Color backgroundColor,
    required Color borderColor,
    required String label,
    required Icon icon,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width * 0.9,
          height: 40,
          child: TextButton.icon(
            icon: icon,
            label: Text(
              label,
              style: TextStyle(color: textColor),
            ),
            onPressed: () {},
          ),
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            border: Border.all(
              color: borderColor,
            ),
            color: backgroundColor,
          ),
        ),
      ],
    );
  }
}
