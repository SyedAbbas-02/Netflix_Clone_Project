import 'package:flutter/material.dart';
import '../models/movie.dart';

class DownloadsScreen extends StatelessWidget {
  const DownloadsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final downloadedMovies = [
      Movie(
        id: 'dl1',
        title: 'Big Buck Bunny',
        description: 'A large and lovable rabbit deals with three tiny bullies.',
        thumbnailUrl: 'https://storage.googleapis.com/gtv-videos-bucket/sample/images/BigBuckBunny.jpg',
        videoUrl: 'https://storage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4',
        genre: ['Animation'],
        duration: '9:56',
        year: '2008',
        rating: '8.1',
        isTrending: false,
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Downloads'),
        backgroundColor: Colors.black,
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          ListTile(
            title: const Text('Smart Downloads'),
            subtitle: const Text('ON'),
            trailing: Switch(
              value: true,
              onChanged: (value) {},
              activeColor: Colors.red,
            ),
          ),
          const Divider(),
          Expanded(
            child: downloadedMovies.isEmpty
                ? const Center(
                    child: Text('No downloads available'),
                  )
                : ListView.builder(
                    itemCount: downloadedMovies.length,
                    itemBuilder: (context, index) {
                      final movie = downloadedMovies[index];
                      return ListTile(
                        leading: ClipRRect(
                          borderRadius: BorderRadius.circular(4),
                          child: Image.network(
                            movie.thumbnailUrl,
                            width: 120,
                            height: 70,
                            fit: BoxFit.cover,
                          ),
                        ),
                        title: Text(movie.title),
                        subtitle: Text('${movie.duration} • ${movie.genre.join(", ")}'),
                        trailing: IconButton(
                          icon: const Icon(Icons.more_vert),
                          onPressed: () {},
                        ),
                      );
                    },
                  ),
          ),
        ],
      ),
    );
  }
} 