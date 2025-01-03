import 'package:flutter/material.dart';







import '../models/movie.dart';







import '../screens/movie_details_screen.dart';















class MovieList extends StatelessWidget {







  final String title;







  final List<Movie> movies;















  const MovieList({







    super.key,







    required this.title,







    required this.movies,







  });















  @override







  Widget build(BuildContext context) {







    return Column(







      crossAxisAlignment: CrossAxisAlignment.start,







      children: [







        Padding(







          padding: const EdgeInsets.all(8.0),







          child: Text(







            title,







            style: const TextStyle(







              fontSize: 20,







              fontWeight: FontWeight.bold,







            ),







          ),







        ),







        SizedBox(







          height: 200,







          child: ListView.builder(







            scrollDirection: Axis.horizontal,







            itemCount: movies.length,







            itemBuilder: (context, index) {







              final movie = movies[index];







              return GestureDetector(







                onTap: () {







                  Navigator.push(







                    context,







                    MaterialPageRoute(







                      builder: (context) => MovieDetailsScreen(movie: movie),







                    ),







                  );







                },







                child: Container(







                  width: 130,







                  margin: const EdgeInsets.all(8),







                  child: Stack(







                    children: [







                      Positioned.fill(







                        child: ClipRRect(







                          borderRadius: BorderRadius.circular(8),







                          child: Image.network(







                            movie.thumbnailUrl,







                            fit: BoxFit.cover,







                            errorBuilder: (context, error, stackTrace) {







                              return Container(







                                color: Colors.grey[900],







                                child: const Center(







                                  child: Icon(







                                    Icons.error_outline,







                                    color: Colors.white,







                                  ),







                                ),







                              );







                            },







                          ),







                        ),







                      ),







                      if (movie.isTrending)







                        Positioned(







                          top: 8,







                          right: 8,







                          child: Container(







                            padding: const EdgeInsets.all(4),







                            decoration: BoxDecoration(







                              color: Colors.red,







                              borderRadius: BorderRadius.circular(4),







                            ),







                            child: const Text(







                              'Trending',







                              style: TextStyle(fontSize: 12),







                            ),







                          ),







                        ),







                    ],







                  ),







                ),







              );







            },







          ),







        ),







      ],







    );







  }







} 






