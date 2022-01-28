import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lotte_cinema_clone/constants.dart';
import 'package:flutter_lotte_cinema_clone/generated/l10n.dart';

class FilmPosterWidget extends StatelessWidget {
  const FilmPosterWidget({
    Key? key,
    required this.imageSrc,
    required this.filmTitle,
    required this.duration,
    required this.filmId,
  }) : super(key: key);

  final String imageSrc;

  final String filmTitle;

  final String duration;

  final String filmId;

  void bookTripBtnOnClick() {}

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      width: kMoviePosterWidth,
      height: kMoviePosterHeight + kMoviePosterBodyHeight,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(kImageBorderRadius),
            child: CachedNetworkImage(
              imageUrl: imageSrc,
              height: kMoviePosterHeight,
              width: kMoviePosterWidth,
              fit: BoxFit.fitHeight,
            ),
          ),
          Text(
            filmTitle,
            style: Theme.of(context).textTheme.headline4,
          ),
          Text(
            duration,
            style: Theme.of(context).textTheme.bodyText2,
          ),
          ElevatedButton(
            onPressed: bookTripBtnOnClick,
            child: Text(
              S.of(context).BookNow.toUpperCase(),
            ),
          ),
        ],
      ),
    );
  }
}
