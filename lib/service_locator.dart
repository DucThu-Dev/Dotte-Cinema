import 'package:dotte_repository/dotte_repository.dart';
import 'package:riverpod/riverpod.dart';

import 'constants.dart';

/// The Dependencies injection for Repository.
final repositoryProvider = Provider((ref) => DotteRepository(theMovieDBApiKey));

/// Provide list of movies trending.
final moviesProvider = FutureProvider.autoDispose(
  ((ref) async {
    final movies =
        await ref.watch(repositoryProvider).getTrendingMoviesInWeek();
    ref.maintainState = true;
    return movies;
  }),
);

/// Provide list of cinemas nearby.
final cinemasProvider = FutureProvider.autoDispose(
  ((ref) async {
    final cinemas = ref.watch(repositoryProvider).getCinemaNearBy();
    ref.maintainState = true;
    return cinemas;
  }),
);
