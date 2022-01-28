import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lotte_cinema_clone/extension/film_extension.dart';
import 'package:flutter_lotte_cinema_clone/model/film.dart';
import 'package:flutter_lotte_cinema_clone/resource/color_resource.dart';

import '../../constants.dart';

class FilmBannerWidget extends StatefulWidget {
  const FilmBannerWidget({Key? key, required this.films}) : super(key: key);
  final List<Film> films;

  @override
  FilmBannerWidgetState createState() => FilmBannerWidgetState();
}

class FilmBannerWidgetState extends State<FilmBannerWidget> {
  int _currentPos = 0;

  @override
  Widget build(BuildContext context) {
    final itemsSlider = widget.films.bannersWidgetMapFromFilms(context);

    return Container(
      padding: const EdgeInsets.all(8),
      color: ColorResource.red,
      child: Column(
        children: [
          CarouselSlider(
            items: itemsSlider,
            options: CarouselOptions(
              autoPlay: true,
              scrollDirection: Axis.horizontal,
              autoPlayAnimationDuration: kAnimationDuration,
              pageSnapping: true,
              autoPlayInterval: const Duration(seconds: 4),
              enableInfiniteScroll: true,
              enlargeCenterPage: true,
              height: 160,
              pauseAutoPlayOnTouch: true,
              onPageChanged: (pos, _) {
                _currentPos = pos;
                if (mounted) {
                  setState(() {});
                }
              },
            ),
          ),
          const SizedBox(height: 12),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: widget.films
                .asMap()
                .entries
                .map(
                  (entry) => AnimatedContainer(
                    duration: kAnimationDuration,
                    margin: const EdgeInsets.symmetric(horizontal: 2),
                    height: 8,
                    width: entry.key == _currentPos ? 28 : 8,
                    decoration: BoxDecoration(
                      color: ColorResource.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                )
                .toList(),
          )
        ],
      ),
    );
  }
}
