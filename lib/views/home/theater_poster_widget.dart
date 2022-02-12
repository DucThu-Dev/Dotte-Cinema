import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../constants.dart';

class TheaterPosterWidget extends StatelessWidget {
  const TheaterPosterWidget({
    Key? key,
    required this.theaterId,
    required this.theaterName,
    required this.theaterImageUrl,
    this.action,
  })  : _loading = false,
        super(key: key);

  final String theaterId;

  final String theaterName;

  final String theaterImageUrl;

  final bool _loading;

  final VoidCallback? action;

  /// Template Theater Poster Widget with Shimmer efffect showing when application loading data.
  const TheaterPosterWidget.loading({Key? key})
      : theaterId = empty,
        theaterName = empty,
        theaterImageUrl = empty,
        _loading = true,
        action = null,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return _loading
        ?

        /// Loading builder section.
        Container(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            width: kCinemaPosterSize,
            height: kCinemaPosterSize + kCinemaPosterBodyHeight,
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
                    height: kCinemaPosterSize,
                    width: kCinemaPosterSize,
                  ),
                  const SizedBox(height: 8),

                  ///Placeholder for Movie title.
                  Container(
                    color: Colors.white,
                    height: kTextHeight,
                    width: kTextWidth,
                  ),
                ],
              ),
            ),
          )
        :

        /// Poster builder section.
        Container(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            width: kCinemaPosterSize,
            height: kCinemaPosterSize + kCinemaPosterBodyHeight,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(kImageBorderRadius),
                  child: CachedNetworkImage(
                    imageUrl: theaterImageUrl,
                    height: kCinemaPosterSize,
                    width: kCinemaPosterSize,
                    fit: BoxFit.fitHeight,
                  ),
                ),
                Text(
                  theaterName,
                  style: Theme.of(context).textTheme.headline4,
                ),
              ],
            ),
          );
  }
}
