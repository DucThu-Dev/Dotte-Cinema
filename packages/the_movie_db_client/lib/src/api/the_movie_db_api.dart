import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

import '../models/trending_movie_week.dart';

part 'the_movie_db_api.g.dart';

@RestApi(baseUrl: 'https://api.themoviedb.org/3')
abstract class TheMovieDbApi {
  factory TheMovieDbApi(Dio dio, {String baseUrl}) = _TheMovieDbApi;

  @GET('/trending/movie/week')
  Future<TrendingMovieWeek> getTrendingMoviesInWeek(@Query('api_key') String apiKey);
}
