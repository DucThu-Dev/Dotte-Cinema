import 'package:the_movie_db_client/the_movie_db_client.dart';

import 'dotte_repository_impl.dart';
import 'models/models.dart';

abstract class DotteRepository {

  factory DotteRepository(String apiKey) => DotteRepositoryImpl(apiKey);

  Future<List<Movie>> getTrendingMoviesInWeek();
  Future<Movie> getDetailMovie(int id);
  Future<List<Cinema>> getCinemaNearBy();
  Future<User> getUserInformation();
}