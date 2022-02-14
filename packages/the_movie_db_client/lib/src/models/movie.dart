import 'package:json_annotation/json_annotation.dart';

part 'movie.g.dart';

/// The Movie object serialized from Json, retrieved from TheMovieDB API.
@JsonSerializable(
  includeIfNull: false,
  createToJson: false,
)
class Movie {

  /// The id  of the movie - belong to TheMovieDb API
  final int id;

  /// The path of the movie, example: /kqjL17yufvn9OVLyXYpvtyrFfak.jpg
  /// The domain: https://image.tmdb.org/t/p/original
  final String? posterPath;

  final bool adult;

  final String overview;

  final String releaseDate;

  final String originalTitle;

  final String originalLanguage;

  final String title;

  final String? backdropPath;

  final num popularity;

  final int voteCount;

  final bool video;

  final num voteAverage;

  Movie(
    this.id,
    this.posterPath,
    this.adult,
    this.overview,
    this.releaseDate,
    this.originalTitle,
    this.originalLanguage,
    this.title,
    this.backdropPath,
    this.popularity,
    this.voteCount,
    this.video,
    this.voteAverage,
  );

  factory Movie.fromJson(Map<String, dynamic> json) => _$MovieFromJson(json);

  /// Get url of the poster with w500 size. Bester for less resolution images.
  String get posterUrlW500 => 'https://image.tmdb.org/t/p/w500$posterPath';

  /// Get url of the original size of the poster.
  String get posterUrl => 'https://image.tmdb.org/t/p/original$posterPath';

    /// Get url of the poster with w500 size. Bester for less resolution images.
  String get backdropUrlW500 => 'https://image.tmdb.org/t/p/w500$backdropPath';

  /// Get url of the original size of the poster.
  String get backdropUrl => 'https://image.tmdb.org/t/p/original$backdropPath';
}
