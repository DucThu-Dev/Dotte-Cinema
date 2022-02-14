import 'package:dotte_repository/dotte_repository.dart';
import 'package:dotte_repository/src/data_template.dart';
import 'package:the_movie_db_client/the_movie_db_client.dart';

class DotteRepositoryImpl implements DotteRepository {
  DotteRepositoryImpl(this._apiKey) {
    client = TheMovieDbClient(apiKey: _apiKey);
  }

  final String _apiKey;
  late TheMovieDbClient client;

  @override
  Future<List<Cinema>> getCinemaNearBy() async {
    // Fake internet delay.
    await Future.delayed(const Duration(milliseconds: 300));

    return cinemasData.map((data) => Cinema.fromJson(data)).toList();
  }

  @override
  Future<Movie> getDetailMovie(int movieId) async {
    return await client.getMovieInformationWithId(movieId);
  }

  @override
  Future<List<Movie>> getTrendingMoviesInWeek() async {
    return await client.getTrendingMoviesInWeek();
  }

  @override
  Future<User> getUserInformation() async {
    await Future.delayed(const Duration(milliseconds: 300));
    return User("123", "Trần Đức Thư", "0935589201", null);
  }
}
