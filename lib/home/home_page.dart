import 'package:flutter/material.dart';
import 'package:movie_time_app/core/models/movie.dart';
import 'package:movie_time_app/core/models/movie_list.dart';
import 'package:movie_time_app/home/widgets/movie_section.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      bottomNavigationBar: _buildBottomBar(),
      body: _buildLists(),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      title: const Text('Movie Time'),
      leading: const Icon(Icons.menu),
      actions: const [
        Padding(
          padding: EdgeInsets.only(right: 12),
          child: Icon(Icons.search),
        )
      ],
    );
  }

  Widget _buildLists() {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Column(
        children: _buildMoviesLists(),
      ),
    );
  }

  BottomNavigationBar _buildBottomBar() {
    return BottomNavigationBar(
      backgroundColor: Colors.black12,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Início',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.explore),
          label: 'Explorar',
        ),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.amber[800],
      onTap: _onItemTapped,
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List<Widget> _buildMoviesLists() {
    final lists = [
      MovieList.mock(Genre.horror),
      MovieList.mock(Genre.comedy),
      MovieList.mock(Genre.drama),
      MovieList.mock(Genre.romance),
      MovieList.mock(Genre.fantasy),
      MovieList.mock(Genre.action),
    ];
    return lists.map(_buildList).toList();
  }

  Widget _buildList(MovieList list) {
    return MovieSection(
      title: list.listTitle,
      list: list,
    );
  }
}
