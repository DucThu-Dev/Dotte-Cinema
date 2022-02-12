// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trending_movie_week.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TrendingMovieWeek _$TrendingMovieWeekFromJson(Map<String, dynamic> json) =>
    TrendingMovieWeek(
      json['page'] as int,
      (json['results'] as List<dynamic>)
          .map((e) => Movie.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
