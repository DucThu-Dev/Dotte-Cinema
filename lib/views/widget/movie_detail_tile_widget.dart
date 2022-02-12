import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lotte_cinema_clone/generated/l10n.dart';

import '../constants.dart';

class MovieDetailTileWidget extends StatelessWidget {
  const MovieDetailTileWidget({
    Key? key,
    required this.moviePosterUrl,
    required this.movieName,
    required this.duration,
    required this.detailAction,
    required this.buttonAction,
  }) : super(key: key);

  /// Movie poster image Url.
  final String moviePosterUrl;

  final String movieName;

  /// Average rated for the cinema show in star icon.
  final String duration;

  /// Action when user hit detail information TextButton.
  final VoidCallback? detailAction;

  /// Action when user hit button.
  final VoidCallback? buttonAction;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Container(
      height: kMoviePosterSmallHeight,
      width: screenSize.width,
      padding: kEdgeInsetsDefault1,
      child: Row(
        children: [
          /// Image Movie section.
          SizedBox(
            height: kMoviePosterSmallHeight,
            width: kMoviePosterSmallWidth,
            child: CachedNetworkImage(
              imageUrl: moviePosterUrl,
              height: kCinemaPosterSmallHeight,
              width: kCinemaPosterSmallWidth,
            ),
          ),

          /// Detail Movie section.
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              children: [
                /// Movie name section.
                Text(
                  movieName,
                  style: Theme.of(context).textTheme.headline3,
                ),

                /// Duration section.
                Row(
                  children: [
                    Row(
                      children: [
                        Text(
                          S.of(context).Minutes(duration),
                          style: Theme.of(context).textTheme.bodyText2,
                        ),
                      ],
                    ),
                  ],
                ),

                /// Address and distance section.
                InkWell(
                  onTap: detailAction,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        S.of(context).DetailInformation,
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                      const SizedBox(width: kPaddingDefault1),
                      const Icon(
                        Icons.chevron_right,
                        size: kSmallIconSize,
                      )
                    ],
                  ),
                ),
                Text(
                  S.of(context).EstimateReleaseDate,
                  style: Theme.of(context).textTheme.bodyText2,
                ),
                ElevatedButton(
                    onPressed: buttonAction, child: Text(S.of(context).Follow))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
