import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:movie_time_app/home/home_controller.dart';
import 'package:movie_time_app/home/home_grid_page.dart';
import 'package:movie_time_app/home/widgets/movie_section.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final MovieController controller;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PageController _pageController = PageController();

  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    widget.controller.getMovies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: _pageController,
        children: [
          _buildLists(),
          _buildGridView(),
        ],
      ),
      bottomNavigationBar: _buildBottomBar(),
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
      child: Observer(
        builder: (BuildContext context) {
          if (widget.controller.requestIsLoadig) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          if (widget.controller.movieListsResponse != null) {
            return Column(
              children: _buildMoviesLists(),
            );
          }

          return Container();
        },
      ),
    );
  }

  Widget _buildGridView() {
    return Observer(
      builder: (BuildContext context) {
        return HomeGridPage(
          movies: widget.controller.movies ?? [],
        );
      },
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
      _pageController.jumpToPage(index);
    });
  }

  List<Widget> _buildMoviesLists() {
    return widget.controller.movieListsResponse!
        .map((list) => MovieSection(
              list: list,
              title: list.listTitle,
            ))
        .toList();
  }
}
