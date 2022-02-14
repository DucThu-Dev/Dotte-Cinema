import 'package:dio/dio.dart';
import 'package:the_movie_db_client/src/api/the_movie_db_api.dart';

import '../../the_movie_db_client.dart';

class TheMovieDbClient {
  final String apiKey;

  final TheMovieDbApi api = TheMovieDbApi(Dio());

  TheMovieDbClient({required this.apiKey});

  Future<List<Movie>> getTrendingMoviesInWeek() async {
    final result = await api.getTrendingMoviesInWeek(apiKey);
    return result.movies;
  }

  Future<Movie> getMovieInformationWithId(int movieId) async {
    return await api.getMovieDetails(movieId, apiKey);
  }
}
