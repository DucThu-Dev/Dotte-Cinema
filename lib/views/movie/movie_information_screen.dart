import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lotte_cinema_clone/generated/l10n.dart';
import 'package:flutter_lotte_cinema_clone/service_locator.dart';
import 'package:flutter_lotte_cinema_clone/theme/color_name.dart';
import 'package:flutter_lotte_cinema_clone/views/views.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:the_movie_db_client/the_movie_db_client.dart';
import 'package:share_plus/share_plus.dart';

final movieInformationProvider = FutureProvider.family<Movie, int>(
  (ref, id) async {
    return await ref.watch(repositoryProvider).getDetailMovie(id);
  },
);

class MovieInformationScreen extends StatelessWidget {
  const MovieInformationScreen({
    Key? key,
    required this.movieId,
  }) : super(key: key);

  final int movieId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).FilmInformation),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.menu,
            ),
          ),
        ],
      ),
      body: Consumer(
        builder: (context, ref, child) =>
            ref.watch(movieInformationProvider(movieId)).when(
                  data: (movie) => _filmLoadedBuilder(context, movie),
                  error: (_, __) => Center(
                      child: Text(
                    S.of(context).ErrorOccurred,
                    textAlign: TextAlign.center,
                  )),
                  loading: () => _loadingFilmBuilder(context),
                ),
      ),
    );
  }

  Widget _loadingFilmBuilder(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }

  Widget _filmLoadedBuilder(BuildContext context, Movie movie) {
    return ListView(
      // mainAxisSize: MainAxisSize.min,
      // crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        CachedNetworkImage(
          imageUrl: movie.posterUrl,
          fit: BoxFit.fitWidth,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: kPaddingDefault4,
            vertical: kPaddingDefault4,
          ),
          child: Stack(
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    movie.title,
                    style: Theme.of(context)
                        .textTheme
                        .headline3
                        ?.copyWith(fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: kPaddingDefault2,
                  ),
                  Text(
                    movie.releaseDate,
                    style: Theme.of(context).textTheme.bodyText2,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: kPaddingDefault2,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '${S.of(context).Popularity}:',
                        style: Theme.of(context).textTheme.bodyText2,
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(
                        width: kPaddingDefault2,
                      ),
                      Text(
                        '${movie.popularity}',
                        style: Theme.of(context).textTheme.bodyText2,
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(
                        width: kPaddingDefault4,
                      ),
                      const Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: kSmallIconSize,
                      ),
                      const SizedBox(
                        width: kPaddingDefault2,
                      ),
                      Text(
                        movie.voteAverage.toString(),
                        style: Theme.of(context).textTheme.bodyText2,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: kPaddingDefault2,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '${S.of(context).Language}:',
                        style: Theme.of(context).textTheme.bodyText2,
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(
                        width: kPaddingDefault2,
                      ),
                      Text(
                        movie.originalLanguage,
                        style: Theme.of(context).textTheme.bodyText2,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: kPaddingDefault4,
                  ),
                  Text(
                    movie.overview,
                    style: Theme.of(context).textTheme.bodyText1,
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
              Positioned(
                  top: 0,
                  right: 0,
                  child: IconButton(
                    icon: const Icon(
                      Icons.share,
                      color: ColorName.greyPrimary,
                    ),
                    onPressed: () {
                      Share.share(S.of(context).ShareMessage(movie.title));
                    },
                  ),),
            ],
          ),
        ),
      ],
    );
  }
}
