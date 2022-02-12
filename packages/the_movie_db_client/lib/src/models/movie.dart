import 'package:json_annotation/json_annotation.dart';

part 'movie.g.dart';

@JsonSerializable(
  includeIfNull: false,
  createToJson: false,
)
class Movie {
  final int id;
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
}
