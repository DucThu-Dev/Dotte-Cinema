import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lotte_cinema_clone/generated/l10n.dart';
import 'package:shimmer/shimmer.dart';

import '../../theme/color_name.dart';
import '../../type_declare.dart';
import '../constants.dart';

class MoviePosterWidget extends StatelessWidget {
  const MoviePosterWidget({
    Key? key,
    required this.posterUrl,
    required this.movieTitle,
    required this.duration,
    required this.movieId,
    required this.onPosterClickAction,
    required this.bookTicketAction,
  })  : _loading = false,
        super(key: key);

  /// Id of the film.
  final int movieId;

  /// Poster url of the film.
  final String posterUrl;

  /// Title of the film.
  final String movieTitle;

  /// Duration of the film.
  final String duration;

  /// Callback when user press on the Movie Poster.
  final VoidCallback? onPosterClickAction;

  /// Call back when user press on book trip button.
  final BookTicketCallback? bookTicketAction;

  ///
  final bool _loading;

  /// Template Theater Poster Widget with Shimmer efffect showing when application loading data.
  const MoviePosterWidget.loading({Key? key})
      : movieId = zero,
        posterUrl = empty,
        movieTitle = empty,
        duration = empty,
        onPosterClickAction = null,
        bookTicketAction = null,
        _loading = true,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return _loading
        ?

        /// Loading builder section.
        Container(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            width: kMoviePosterWidth,
            height: kMoviePosterHeight + kMoviePosterBodyHeight,
            child: Shimmer.fromColors(
              baseColor: ColorName.greyThirdary,
              highlightColor: ColorName.greySecondary,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  /// Placeholder for Poster.
                  Container(
                    color: Colors.white,
                    height: kMoviePosterHeight,
                    width: kMoviePosterWidth,
                  ),

                  const SizedBox(height: 8),

                  ///Placeholder for Movie title.
                  Container(
                    color: Colors.white,
                    height: kTextHeight,
                    width: kTextWidth,
                  ),
                  const SizedBox(height: 8),

                  ///Placeholder for Duration text.
                  Container(
                    color: Colors.white,
                    height: kTextHeight,
                    width: kTextWidth,
                  ),
                  const SizedBox(height: 8),

                  ///PlaceHolder for button.
                  Container(
                    color: Colors.white,
                    height: kButtonHeight,
                    width: kTextWidth,
                  ),
                ],
              ),
            ),
          )
        :

        /// Poster builder section.
        Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            width: kMoviePosterWidth,
            height: kMoviePosterHeight + kMoviePosterBodyHeight,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                GestureDetector(
                  onTap: onPosterClickAction,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(kImageBorderRadius),
                    child: CachedNetworkImage(
                      imageUrl: posterUrl,
                      height: kMoviePosterHeight,
                      width: kMoviePosterWidth,
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ),
                Expanded(
                  child: Text(
                    movieTitle,
                    style: Theme.of(context).textTheme.headline4,
                  ),
                ),
                Text(
                  duration,
                  style: Theme.of(context).textTheme.bodyText2,
                ),
                ElevatedButton(
                  onPressed: bookTicketAction,
                  child: Text(
                    S.of(context).BookNow.toUpperCase(),
                  ),
                ),
              ],
            ),
          );
  }
}
