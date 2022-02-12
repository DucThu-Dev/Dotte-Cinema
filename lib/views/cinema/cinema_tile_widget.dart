import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lotte_cinema_clone/resource/color_resource.dart';

import '../constants.dart';

class CinemaTileWidget extends StatelessWidget {
  const CinemaTileWidget({
    Key? key,
    required this.cinemaPosterUrl,
    required this.cinemaName,
    required this.rateAvg,
    required this.totalRated,
    required this.phoneNumber,
    required this.address,
    required this.distance,
    required this.liked,
    required this.onLikeAction,
  }) : super(key: key);

  /// Cinama poster image Url.
  final String cinemaPosterUrl;

  final String cinemaName;

  /// Average rated for the cinema show in star icon.
  final double rateAvg;

  final int totalRated;

  /// Phone number of the cinema.
  final String phoneNumber;

  /// Address of the cinema.
  final String address;

  /// Distance to the user position.
  final String distance;

  /// Indicate did user like the cinema.
  final bool liked;

  /// Action when user hit like icon button.
  final VoidCallback onLikeAction;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Container(
      height: kCinemaPosterSmallHeight,
      width: screenSize.width,
      padding: kEdgeInsetsDefault1,
      child: Row(
        children: [
          /// Image Cinema section.
          SizedBox(
            height: kCinemaPosterSmallHeight,
            width: kCinemaPosterSmallWidth,
            child: CachedNetworkImage(
              imageUrl: cinemaPosterUrl,
              height: kCinemaPosterSmallHeight,
              width: kCinemaPosterSmallWidth,
            ),
          ),

          /// Detail Cinema section.
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              children: [
                /// Cinema name and like icon button section.
                Row(
                  children: [
                    Text(
                      cinemaName,
                      style: Theme.of(context).textTheme.headline3,
                    ),
                    const Spacer(),
                    IconButton(
                      onPressed: onLikeAction,
                      icon: Icon(
                        Icons.favorite,
                        color: liked
                            ? ColorResource.red
                            : ColorResource.greyPrimary,
                      ),
                    ),
                  ],
                ),

                /// Rate and phone number section.
                Row(
                  children: [
                    /// Rate section.
                    Expanded(
                      child: Row(
                        children: [
                          const Icon(
                            Icons.star,
                            color: ColorResource.yellow,
                            size: kSmallIconSize,
                          ),
                          const SizedBox(width: kPaddingDefault1),
                          Text(
                            rateAvg.toStringAsFixed(1),
                            style: Theme.of(context).textTheme.headline4,
                          ),
                          const SizedBox(width: kPaddingDefault1),
                          Text(
                            '($totalRated+)',
                            style: Theme.of(context).textTheme.bodyText2,
                          ),
                        ],
                      ),
                    ),

                    /// Phone number section.
                    Expanded(
                        child: Row(
                      children: [
                        const Icon(
                          Icons.phone,
                          size: kSmallIconSize,
                        ),
                        const SizedBox(width: kPaddingDefault1),
                        Text(
                          phoneNumber,
                          style: Theme.of(context).textTheme.headline4,
                        ),
                      ],
                    )),
                  ],
                ),

                /// Address and distance section.
                Row(
                  children: [
                    /// Address section.
                    Expanded(
                      child: Row(
                        children: [
                          const Icon(
                            Icons.location_on_sharp,
                            size: kSmallIconSize,
                          ),
                          const SizedBox(width: kPaddingDefault1),
                          Text(
                            address,
                            style: Theme.of(context).textTheme.bodyText2,
                          ),
                        ],
                      ),
                    ),

                    /// Distance section.
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Icon(
                          Icons.my_location,
                          size: kSmallIconSize,
                        ),
                        const SizedBox(width: kPaddingDefault1),
                        Text(
                          distance,
                          style: Theme.of(context).textTheme.bodyText2,
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
