import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_lotte_cinema_clone/model/film.dart';
import 'package:flutter_lotte_cinema_clone/resource/color_resource.dart';

import '../constants.dart';

extension FilmExtension on List<Film> {
  List<Widget> bannersWidgetMapFromFilms(BuildContext context) {
    return map(
      (film) => ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(kImageBorderRadius)),
        child: Container(
          decoration: const BoxDecoration(
            color: ColorResource.red,
          ),
          width: MediaQuery.of(context).size.width,
          child: CachedNetworkImage(
            imageUrl: film.bannerUrl,
            height: 160,
            fit: BoxFit.fitHeight,
          ),
        ),
      ),
    ).toList();
  }
}
