import 'package:json_annotation/json_annotation.dart';

import '../../the_movie_db_client.dart';

part 'trending_movie_week.g.dart';

/// This class for adapter with the TheMovieDB json structure response only.
@JsonSerializable(createToJson: false)
class TrendingMovieWeek {
  final int page;
  @JsonKey(name: 'results')
  final List<Movie> movies;

  TrendingMovieWeek(this.page, this.movies);

  factory TrendingMovieWeek.fromJson(Map<String, dynamic> json) => _$TrendingMovieWeekFromJson(json);
}