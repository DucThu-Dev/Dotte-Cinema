import 'package:dotte_repository/src/models/cinema.dart';
import 'package:the_movie_db_client/the_movie_db_client.dart';

import 'dotte_repository_impl.dart';

abstract class DotteRepository {

  factory DotteRepository() => DotteRepositoryImpl();

  Future<List<Movie>> getTrendingMoviesInWeek();
  Future<Movie> getDetailMovie(String id);
  Future<List<Cinema>> getCinemaNearBy();
}