import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lotte_cinema_clone/views/widget/responsive.dart';
import 'package:the_movie_db_client/the_movie_db_client.dart';

import '../views/views.dart';

extension FilmExtension on List<Movie> {
  List<Widget> bannersWidgetMapFromMovies(BuildContext context) {
    return map(
      (movie) => GestureDetector(
        onTap: () => Navigator.of(context).push(
          MaterialPageRoute(
            builder: (_) => MovieInformationScreen(
              movieId: movie.id,
            ),
          ),
        ),
        child: ClipRRect(
          borderRadius:
              const BorderRadius.all(Radius.circular(kImageBorderRadius)),
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.red,
            ),
            width: MediaQuery.of(context).size.width,
            child: CachedNetworkImage(
              imageUrl:
                  Responsive.isDesktop(context) || Responsive.isTablet(context)
                      ? movie.backdropUrl
                      : movie.backdropUrlW500,
              height: 160,
              fit: BoxFit.fitHeight,
            ),
          ),
        ),
      ),
    ).toList();
  }
}
