import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lotte_cinema_clone/constants.dart';
import 'package:flutter_lotte_cinema_clone/resource/color_resource.dart';
import 'package:shimmer/shimmer.dart';

class TheaterPosterWidget extends StatelessWidget {
  const TheaterPosterWidget({
    Key? key,
    required this.theaterId,
    required this.theaterName,
    required this.theaterImageUrl,
    this.action,
  })  : loading = false,
        super(key: key);

  final String theaterId;
  final String theaterName;
  final String theaterImageUrl;
  final bool loading;
  final VoidCallback? action;

  /// Template Theater Poster Widget with Shimmer efffect showing when application loading data.
  const TheaterPosterWidget.loading({Key? key})
      : theaterId = empty,
        theaterName = empty,
        theaterImageUrl = empty,
        action = null,
        loading = true,
        super(key: key);

  void theaterOnClick() {}

  @override
  Widget build(BuildContext context) {
    if (loading) {
      return Container(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        width: kCinemaPosterSize,
        height: kCinemaPosterSize + kCinemaPosterBodyHeight,
        child: Shimmer.fromColors(
          baseColor: ColorResource.greyThirdary,
          highlightColor: ColorResource.greySecondary,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    kImageBorderRadius,
                  ),
                ),
                height: kCinemaPosterSize,
                width: kCinemaPosterSize,
              ),
              Text(
                theaterName,
                style: Theme.of(context).textTheme.headline4,
              ),
            ],
          ),
        ),
      );
    } else {
      return Container(
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
}
