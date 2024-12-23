import 'package:flutter/material.dart';
import '../models/movie.dart';
import '../widgets/netflix_video_player.dart';

class MovieDetailScreen extends StatelessWidget {
  final Movie movie;

  const MovieDetailScreen({
    Key? key,
    required this.movie,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: NetflixVideoPlayer(
        videoUrl: movie.videoUrl,
        title: movie.title,
        description: movie.description,
      ),
    );
  }
} 