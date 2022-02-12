import 'package:dotte_repository/dotte_repository.dart';
import 'package:the_movie_db_client/src/models/movie.dart';

class DotteRepositoryImpl implements DotteRepository {
  @override
  Future<List<Cinema>> getCinemaNearBy() {
    // TODO: implement getCinemaNearBy
    throw UnimplementedError();
  }

  @override
  Future<Movie> getDetailMovie(String id) {
    // TODO: implement getDetailMovie
    throw UnimplementedError();
  }

  @override
  Future<List<Movie>> getTrendingMoviesInWeek() {
    // TODO: implement getTrendingMoviesInWeek
    throw UnimplementedError();
  }
}