import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lotte_cinema_clone/extension/film_extension.dart';
import 'package:flutter_lotte_cinema_clone/service_locator.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../generated/l10n.dart';
import '../constants.dart';

/// The banner of the application, showing list of dropdown images of the trending movies.
/// Used as the top side in the [HomeScreen].
class FilmBannerWidget extends ConsumerStatefulWidget {
  const FilmBannerWidget({
    Key? key,
  }) : super(key: key);

  @override
  FilmBannerWidgetState createState() => FilmBannerWidgetState();
}

class FilmBannerWidgetState extends ConsumerState<FilmBannerWidget> {
  int _currentPos = 0;
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      color: Colors.red,
      child: ref.watch(moviesProvider).when(
            data: (movies) {
              final itemsSlider = movies.bannersWidgetMapFromMovies(context);
              return Column(
                children: [
                  CarouselSlider(
                    carouselController: _controller,
                    items: itemsSlider,
                    options: CarouselOptions(
                      autoPlay: true,
                      scrollDirection: Axis.horizontal,
                      autoPlayAnimationDuration: kAnimationDuration,
                      pageSnapping: true,
                      autoPlayInterval: const Duration(seconds: 4),
                      enableInfiniteScroll: true,
                      enlargeCenterPage: true,
                      aspectRatio: kBannerAspectRatio,
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
                    children: movies
                        .asMap()
                        .entries
                        .map(
                          (entry) => GestureDetector(
                            onTap: () => _controller.animateToPage(entry.key),
                            child: AnimatedContainer(
                              duration: kAnimationDuration,
                              margin: const EdgeInsets.symmetric(horizontal: 2),
                              height: 8,
                              width: entry.key == _currentPos ? 28 : 8,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                          ),
                        )
                        .toList(),
                  )
                ],
              );
            },
            error: (err, _) => SizedBox(
              height: kBannerHeightLoadingMobile,
              child: Center(
                child: Text(
                  S.of(context).ErrorOccurred,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            //TODO: Refactor UI
            loading: () => const Center(
              child: CircularProgressIndicator(),
            ),
          ),
    );
  }
}
