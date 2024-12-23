import 'package:flutter/material.dart';
import '../widgets/banner_slider.dart';
import '../widgets/movie_list.dart';
import '../data/sample_data.dart' as movie_data;

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final bannerMovies = movie_data.getTrendingMovies().take(6).toList();

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            backgroundColor: Colors.black.withOpacity(0.5),
            title: const Text(
              'Netflix Clone',
              style: TextStyle(
                color: Colors.red,
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
            actions: [
              IconButton(
                icon: const Icon(Icons.search),
                onPressed: () {},
              ),
            ],
          ),
          SliverToBoxAdapter(
            child: BannerSlider(movies: bannerMovies),
          ),
          SliverToBoxAdapter(
            child: MovieList(
              title: 'Trending Now',
              movies: movie_data.getTrendingMovies(),
            ),
          ),
          SliverToBoxAdapter(
            child: MovieList(
              title: 'Action & Superhero',
              movies: movie_data.getActionMovies(),
            ),
          ),
          SliverToBoxAdapter(
            child: MovieList(
              title: 'Sci-Fi',
              movies: movie_data.getSciFiMovies(),
            ),
          ),
          SliverToBoxAdapter(
            child: MovieList(
              title: 'Drama',
              movies: movie_data.getDramaMovies(),
            ),
          ),
          SliverToBoxAdapter(
            child: MovieList(
              title: 'Thrillers',
              movies: movie_data.getThrillerMovies(),
            ),
          ),
          SliverToBoxAdapter(
            child: MovieList(
              title: 'Adventure',
              movies: movie_data.getAdventureMovies(),
            ),
          ),
        ],
      ),
    );
  }
} 














