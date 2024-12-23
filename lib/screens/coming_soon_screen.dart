import 'package:flutter/material.dart';
import '../models/movie.dart';

class ComingSoonScreen extends StatelessWidget {
  const ComingSoonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final upcomingMovies = [
      Movie(
        id: 'upcoming1',
        title: 'The Lost City',
        description: 'A mysterious adventure in an ancient civilization.',
        thumbnailUrl: 'https://images.pexels.com/photos/3389817/pexels-photo-3389817.jpeg',
        videoUrl: 'https://example.com/trailer1.mp4',
        genre: ['Adventure', 'Action'],
        duration: 'Coming Soon',
        year: '2024',
        rating: 'N/A',
        isTrending: false,
      ),
      // Add more upcoming movies here
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Coming Soon'),
        backgroundColor: Colors.black,
      ),
      body: ListView.builder(
        itemCount: upcomingMovies.length,
        itemBuilder: (context, index) {
          final movie = upcomingMovies[index];
          return Card(
            margin: const EdgeInsets.all(8),
            color: Colors.grey[900],
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.network(
                  movie.thumbnailUrl,
                  width: double.infinity,
                  height: 200,
                  fit: BoxFit.cover,
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        movie.title,
                        style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(movie.description),
                      const SizedBox(height: 16),
                      Row(
                        children: [
                          ElevatedButton.icon(
                            onPressed: () {},
                            icon: const Icon(Icons.notifications),
                            label: const Text('Remind Me'),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              foregroundColor: Colors.black,
                            ),
                          ),
                          const SizedBox(width: 16),
                          TextButton.icon(
                            onPressed: () {},
                            icon: const Icon(Icons.info_outline),
                            label: const Text('Info'),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
} 