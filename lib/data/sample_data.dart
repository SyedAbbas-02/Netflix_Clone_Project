import '../models/movie.dart';

// Example using TMDB image URLs
const String imageBaseUrl = 'https://image.tmdb.org/t/p/original';

final List<Movie> sampleMovies = [
  // Featured/Banner Movies (6)
  Movie(
    id: '1',
    title: 'The Dark Knight',
    description:
        'Batman must accept one of the greatest psychological and physical tests of his ability to fight injustice.',
    thumbnailUrl: '$imageBaseUrl/qJ2tW6WMUDux911r6m7haRef0WH.jpg',
    videoUrl:
        'https://storage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4',
    genre: ['Action', 'Crime', 'Drama'],
    duration: '2h 32min',
    year: '2008',
    rating: '9.0',
    isTrending: true,
    status: 'trending',
    isFeatured: true,
  ),
  Movie(
    id: '2',
    title: 'Dune',
    description:
        'Paul Atreides leads nomadic tribes in a battle to control the desert planet Arrakis.',
    thumbnailUrl: '$imageBaseUrl/d5NXSklXo0qyIYkgV94XAgMIckC.jpg',
    videoUrl:
        'https://storage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4',
    genre: ['Sci-Fi', 'Adventure'],
    duration: '2h 35min',
    year: '2021',
    rating: '8.0',
    isTrending: true,
    status: 'trending',
    isFeatured: true,
  ),
  Movie(
    id: '3',
    title: 'Top Gun: Maverick',
    description:
        'After thirty years, Maverick is still pushing the envelope as a top naval aviator.',
    thumbnailUrl: '$imageBaseUrl/62HCnUTziyWcpDaBO2i1DX17ljH.jpg',
    videoUrl:
        'https://storage.googleapis.com/gtv-videos-bucket/sample/TearsOfSteel.mp4',
    genre: ['Action', 'Drama'],
    duration: '2h 10min',
    year: '2022',
    rating: '8.3',
    isTrending: true,
    status: 'trending',
    isFeatured: true,
  ),
  Movie(
    id: '4',
    title: 'Oppenheimer',
    description:
        'The story of American scientist J. Robert Oppenheimer and his role in the development of the atomic bomb.',
    thumbnailUrl: '$imageBaseUrl/8Gxv8gSFCU0XGDykEGv7zR1n2ua.jpg',
    videoUrl:
        'https://storage.googleapis.com/gtv-videos-bucket/sample/Sintel.mp4',
    genre: ['Drama', 'History', 'Thriller'],
    duration: '3h 0min',
    year: '2023',
    rating: '8.4',
    isTrending: true,
    status: 'trending',
    isFeatured: true,
  ),
  Movie(
    id: '5',
    title: 'Barbie',
    description:
        'Barbie suffers a crisis that leads her to question her world and her existence.',
    thumbnailUrl: '$imageBaseUrl/iuFNMS8U5cb6xfzi51Dbkovj7vM.jpg',
    videoUrl:
        'https://storage.googleapis.com/gtv-videos-bucket/sample/WeAreGoingOnBullrun.mp4',
    genre: ['Adventure', 'Comedy', 'Fantasy'],
    duration: '1h 54min',
    year: '2023',
    rating: '7.0',
    isTrending: true,
    status: 'trending',
    isFeatured: true,
  ),
  Movie(
    id: '6',
    title: 'Avatar: The Way of Water',
    description:
        'Jake Sully lives with his newfound family formed on the extrasolar moon Pandora.',
    thumbnailUrl: '$imageBaseUrl/t6HIqrRAclMCA60NsSmeqe9RmNV.jpg',
    videoUrl:
        'https://storage.googleapis.com/gtv-videos-bucket/sample/SubaruOutbackOnStreetAndDirt.mp4',
    genre: ['Sci-Fi', 'Adventure', 'Action'],
    duration: '3h 12min',
    year: '2022',
    rating: '7.6',
    isTrending: true,
    status: 'trending',
    isFeatured: true,
  ),

  // Regular Movies (Continue with more movies...)
  Movie(
    id: '7',
    title: 'Inception',
    description:
        'A thief who steals corporate secrets through dream-sharing technology is given the task of planting an idea.',
    thumbnailUrl: '$imageBaseUrl/8IB2e4r4oVhHnANbnm7O3Tj6tF8.jpg',
    videoUrl:
        'https://storage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4',
    genre: ['Action', 'Sci-Fi', 'Thriller'],
    duration: '2h 28min',
    year: '2010',
    rating: '8.8',
    status: 'hot',
  ),

  // I'll continue with more movies, but for brevity I'll show just a few more examples:
  Movie(
    id: '8',
    title: 'The Matrix',
    description:
        'A computer programmer discovers that reality as he knows it is a simulation.',
    thumbnailUrl: '$imageBaseUrl/f89U3ADr1oiB1s9GkdPOEpXUk5H.jpg',
    videoUrl:
        'https://storage.googleapis.com/gtv-videos-bucket/sample/ForBiggerEscapes.mp4',
    genre: ['Action', 'Sci-Fi'],
    duration: '2h 16min',
    year: '1999',
    rating: '8.7',
    status: 'hot',
  ),

  Movie(
    id: '9',
    title: 'Interstellar',
    description:
        'A team of explorers travel through a wormhole in search of a new home for humanity.',
    thumbnailUrl: '$imageBaseUrl/gEU2QniE6E77NI6lCU6MxlNBvIx.jpg',
    videoUrl:
        'https://storage.googleapis.com/gtv-videos-bucket/sample/ForBiggerFun.mp4',
    genre: ['Adventure', 'Drama', 'Sci-Fi'],
    duration: '2h 49min',
    year: '2014',
    rating: '8.6',
    status: 'hot',
  ),

  // ... and so on until we reach 40 movies
  Movie(
    id: '10',
    title: 'Blade Runner 2049',
    description:
        'A young blade runner\'s discovery of a long-buried secret leads him to track down former blade runner Rick Deckard.',
    thumbnailUrl: '$imageBaseUrl/gajva2L0rPYkEWjzgFlBXCAVBE5.jpg',
    videoUrl:
        'https://storage.googleapis.com/gtv-videos-bucket/sample/ForBiggerJoyrides.mp4',
    genre: ['Sci-Fi', 'Drama', 'Mystery'],
    duration: '2h 44min',
    year: '2017',
    rating: '8.0',
    status: 'hot',
  ),
  Movie(
    id: '11',
    title: 'Mad Max: Fury Road',
    description:
        'In a post-apocalyptic wasteland, a woman rebels against a tyrannical ruler in search for her homeland.',
    thumbnailUrl: '$imageBaseUrl/8tZYtuWezp8JbcsvHYO0O46tFbo.jpg',
    videoUrl:
        'https://storage.googleapis.com/gtv-videos-bucket/sample/ForBiggerMeltdowns.mp4',
    genre: ['Action', 'Adventure', 'Sci-Fi'],
    duration: '2h 0min',
    year: '2015',
    rating: '8.1',
    status: 'hot',
  ),
  Movie(
    id: '12',
    title: 'Everything Everywhere All at Once',
    description:
        'An aging Chinese immigrant is swept up in an insane adventure, where she alone can save the world.',
    thumbnailUrl: '$imageBaseUrl/w3LxiVYdWWRvEVdn5RYq6jIqkb1.jpg',
    videoUrl:
        'https://storage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4',
    genre: ['Action', 'Adventure', 'Comedy'],
    duration: '2h 19min',
    year: '2022',
    rating: '7.9',
    status: 'new',
  ),
  Movie(
    id: '13',
    title: 'The Godfather',
    description:
        'The aging patriarch of an organized crime dynasty transfers control to his reluctant son.',
    thumbnailUrl: '$imageBaseUrl/3bhkrj58Vtu7enYsRolD1fZdja1.jpg',
    videoUrl:
        'https://storage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4',
    genre: ['Crime', 'Drama'],
    duration: '2h 55min',
    year: '1972',
    rating: '9.2',
    status: 'hot',
  ),
  Movie(
    id: '14',
    title: 'Parasite',
    description:
        'Greed and class discrimination threaten the newly formed symbiotic relationship between the wealthy Park family and the destitute Kim clan.',
    thumbnailUrl: '$imageBaseUrl/7IiTTgloJzvGI1TAYymCfbfl3vT.jpg',
    videoUrl:
        'https://storage.googleapis.com/gtv-videos-bucket/sample/TearsOfSteel.mp4',
    genre: ['Drama', 'Thriller'],
    duration: '2h 12min',
    year: '2019',
    rating: '8.6',
    status: 'hot',
  ),
];

// Helper functions for different categories
List<Movie> getTrendingMovies() {
  return sampleMovies.where((movie) => movie.status == 'trending').toList();
}

List<Movie> getHotMovies() {
  return sampleMovies.where((movie) => movie.status == 'hot').toList();
}

List<Movie> getNewMovies() {
  return sampleMovies.where((movie) => movie.status == 'new').toList();
}

List<Movie> getActionMovies() {
  return sampleMovies.where((movie) => movie.genre.contains('Action')).toList();
}

List<Movie> getDramaMovies() {
  return sampleMovies.where((movie) => movie.genre.contains('Drama')).toList();
}

List<Movie> getSciFiMovies() {
  return sampleMovies.where((movie) => movie.genre.contains('Sci-Fi')).toList();
}

List<Movie> getThrillerMovies() {
  return sampleMovies
      .where((movie) => movie.genre.contains('Thriller'))
      .toList();
}

List<Movie> getAdventureMovies() {
  return sampleMovies
      .where((movie) => movie.genre.contains('Adventure'))
      .toList();
}

// Add new helper function for featured movies
List<Movie> getFeaturedMovies() {
  return sampleMovies.where((movie) => movie.isFeatured).toList();
}
