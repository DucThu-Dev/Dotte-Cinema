// ignore_for_file: avoid_print

import 'package:dotte_repository/dotte_repository.dart';

void main() async {
  print('Start test API implements');
  final repository = DotteRepository('9439e3f8ba98d5698f2f38231bfdb835');

  final movies = await repository.getTrendingMoviesInWeek();
  for (int i = 0; i < movies.length; i++) {
    print(movies[i].toString());
  }
}
