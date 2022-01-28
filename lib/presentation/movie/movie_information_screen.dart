import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lotte_cinema_clone/constants.dart';
import 'package:flutter_lotte_cinema_clone/generated/l10n.dart';
import 'package:flutter_lotte_cinema_clone/model/film.dart';

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

  Widget _filmLoadedBuilder(BuildContext context, Film film) {
    return Column(
      children: [
        CachedNetworkImage(
          imageUrl: film.posterUrl,
          height: kMoviePosterHeight,
          width: kMoviePosterWidth,
          fit: BoxFit.fitHeight,
        ),
        Text(
          film.title,
          style: Theme.of(context).textTheme.headline3,
        ),
        Text(
          S.of(context).Minutes(film.duration),
          style: Theme.of(context).textTheme.bodyText2,
        ),
        Text(
          film.introduce,
          style: Theme.of(context).textTheme.bodyText1,
        )
      ],
    );
  }
}
