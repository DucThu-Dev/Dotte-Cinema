import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lotte_cinema_clone/generated/l10n.dart';
import 'package:the_movie_db_client/the_movie_db_client.dart';

import '../views.dart';

class MovieInformationScreen extends StatelessWidget {
  const MovieInformationScreen({Key? key}) : super(key: key);

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
      body: _loadingFilmBuilder(context),
    );
  }

  Widget _loadingFilmBuilder(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }

  Widget _filmLoadedBuilder(BuildContext context, Movie movie) {
    return Column(
      children: [
        CachedNetworkImage(
          imageUrl: movie.posterUrl,
          height: kMoviePosterHeight,
          width: kMoviePosterWidth,
          fit: BoxFit.fitHeight,
        ),
        Text(
          movie.title,
          style: Theme.of(context).textTheme.headline3,
        ),
        Text(
          ///TODO: Re-modify UI - duration of the movie
          S.of(context).Minutes(333333333),
          style: Theme.of(context).textTheme.bodyText2,
        ),
        Text(
          movie.overview,
          style: Theme.of(context).textTheme.bodyText1,
        )
      ],
    );
  }
}
