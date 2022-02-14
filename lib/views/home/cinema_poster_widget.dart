import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../../theme/color_name.dart';
import '../constants.dart';

class CinemaPosterWidget extends StatelessWidget {
  const CinemaPosterWidget({
    Key? key,
    required this.cinemaId,
    required this.cinemaName,
    required this.cinemaImageUrl,
    this.action,
  })  : _loading = false,
        super(key: key);

  final int cinemaId;

  final String cinemaName;

  final String cinemaImageUrl;

  final bool _loading;

  final VoidCallback? action;

  /// Template Theater Poster Widget with Shimmer efffect showing when application loading data.
  const CinemaPosterWidget.loading({Key? key})
      : cinemaId = zero,
        cinemaName = empty,
        cinemaImageUrl = empty,
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
                    imageUrl: cinemaImageUrl,
                    height: kCinemaPosterSize,
                    width: kCinemaPosterSize,
                    fit: BoxFit.fitHeight,
                  ),
                ),
                Text(
                  cinemaName,
                  style: Theme.of(context).textTheme.headline4,
                ),
              ],
            ),
          );
  }
}
