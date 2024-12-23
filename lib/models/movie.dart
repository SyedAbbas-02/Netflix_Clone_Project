class Movie {

  final String id;

  final String title;

  final String description;

  final String thumbnailUrl;

  final String videoUrl;

  final List<String> genre;

  final String duration;

  final String year;

  final String rating;

  final bool isTrending;

  final String status;

  final bool isFeatured;



  Movie({

    required this.id,

    required this.title,

    required this.description,

    required this.thumbnailUrl,

    required this.videoUrl,

    required this.genre,

    required this.duration,

    required this.year,

    required this.rating,

    this.isTrending = false,

    this.status = 'new',

    this.isFeatured = false,

  });

} 
