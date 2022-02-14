import 'package:flutter/material.dart';
import 'package:flutter_lotte_cinema_clone/service_locator.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../generated/l10n.dart';
import '../../routes.dart';
import '../views.dart';

class PerformingMovieWidget extends ConsumerWidget {
  const PerformingMovieWidget({Key? key}) : super(key: key);

  /// SeeAll button 's action of the Performing Movie Section.
  void seeAllPerformingMovieAction(BuildContext context) =>
      Navigator.of(context).pushNamed(DotteAppRoutes.movieRoute);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final size = MediaQuery.of(context).size;

    return BodyTemplateWidget(
      title: S.of(context).PerformingFilm,
      seeAllActionOnClick: () => seeAllPerformingMovieAction(context),
      body: SizedBox(
        width: size.width,
        height: kMoviePosterHeight + kMoviePosterBodyHeight,
        child: ref.watch(moviesProvider).when(
              data: (movies) => ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                addAutomaticKeepAlives: true,
                itemBuilder: (_, index) => MoviePosterWidget(
                  posterUrl: movies[index].posterUrlW500,
                  movieTitle: movies[index].title,
                  //Refactor UI right here
                  duration: S.current.Minutes(zero),
                  movieId: movies[index].id,
                  bookTicketAction: () {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text(S.of(context).BookTicketComplete)));
                  },
                  onPosterClickAction: () => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) =>
                          MovieInformationScreen(movieId: movies[index].id),
                    ),
                  ),
                ),
                itemCount: movies.length,
              ),
              error: (err, _) => Center(
                child: Text(
                  S.of(context).ErrorOccurred,
                ),
              ),
              loading: () => ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (_, __) => const MoviePosterWidget.loading(),
                //TODO: Implement multi device adapter.
                itemCount: kMoviePosterLoadingCountMobile,
              ),
            ),
      ),
    );
  }
}
