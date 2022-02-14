import 'package:flutter/material.dart';
import 'package:flutter_lotte_cinema_clone/generated/l10n.dart';
import 'package:flutter_lotte_cinema_clone/service_locator.dart';
import 'package:flutter_lotte_cinema_clone/theme/app_theme_data.dart';
import 'package:flutter_lotte_cinema_clone/views/widget/responsive.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../gen/assets.gen.dart';
import '../views.dart';

List<Map<String, dynamic>> _movieTabData = [
  {
    'title': S.current.PerformingFilm,
  },
  {
    'title': S.current.NextFilm,
  },
];

final List<Tab> _tabs = _movieTabData
    .map((data) => Tab(
          text: data['title'],
        ))
    .toList();

class MovieScreen extends StatelessWidget {
  const MovieScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Assets.images.lotteLogoImg.image(
                height: kLogoSize,
                width: kLogoSize,
              ),
              const SizedBox(width: 8),
              Text(
                S.of(context).AppTitle,
                style: AppThemeData.logoFontLight.copyWith(color: Colors.red),
              ),
            ],
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.menu,
              ),
            ),
          ],
          bottom: TabBar(
            tabs: _tabs,
            indicatorPadding: const EdgeInsets.symmetric(horizontal: 24),
          ),
        ),
        body: TabBarView(
          children: [
            _performingFilmBuilder(context),
            _performingFilmBuilder(context),
          ],
        ),
      ),
    );
  }

  Widget _performingFilmBuilder(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(mainAxisSize: MainAxisSize.min, children: [
        _listPosterBuilder(
          context,
          S.of(context).HotFilm,
          Consumer(
            builder: (context, ref, child) => ref.watch(moviesProvider).when(
                  data: (movies) => SizedBox(
                    width: size.width,
                    height: kMoviePosterHeight + kMoviePosterBodyHeight,
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      addAutomaticKeepAlives: true,
                      itemBuilder: (_, index) => MoviePosterWidget(
                        posterUrl: movies[index].posterUrlW500,
                        movieTitle: movies[index].title,
                        //Refactor UI right here
                        duration: S.current.Minutes(zero),
                        movieId: movies[index].id,
                        bookTicketAction: () {},
                        onPosterClickAction: () {},
                      ),
                      itemCount: movies.length,
                    ),
                  ),
                  error: (_, __) => Container(),
                  loading: () => _loadingPosterBody(context),
                ),
          ),
        ),
        _listPosterBuilder(
          context,
          S.of(context).SpecialPromotion,
          Consumer(
            builder: (context, ref, child) => ref.watch(moviesProvider).when(
                  data: (movies) => ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    addAutomaticKeepAlives: true,
                    itemBuilder: (_, index) => MoviePosterWidget(
                      posterUrl: movies[index].posterUrlW500,
                      movieTitle: movies[index].title,
                      //Refactor UI right here
                      duration: S.current.Minutes(zero),
                      movieId: movies[index].id,
                      bookTicketAction: () {},
                      onPosterClickAction: () {},
                    ),
                    itemCount: movies.length,
                  ),
                  error: (_, __) => Container(),
                  loading: () => _loadingPosterBody(context),
                ),
          ),
        ),
      ]),
    );
  }

  Widget _loadingPosterBody(BuildContext context, {int? totalLoadingCount}) {
    totalLoadingCount ??= Responsive.isDesktop(context)
        ? kMoviePosterLoadingCountWeb
        : Responsive.isTablet(context)
            ? kMoviePosterLoadingCountTablet
            : kMoviePosterLoadingCountMobile;

    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemBuilder: (_, __) => const MoviePosterWidget.loading(),
      itemCount: totalLoadingCount,
    );
  }

  Widget _listPosterBuilder(
    BuildContext context,
    String title,
    Widget body,
  ) {
    return BodyTemplateWidget(
      title: title,
      body: SizedBox(
        height: kMoviePosterHeight + kMoviePosterBodyHeight,
        width: kMoviePosterWidth,
        child: body,
      ),
    );
  }
}
