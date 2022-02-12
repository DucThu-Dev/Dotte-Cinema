import 'package:flutter/material.dart';
import 'package:flutter_lotte_cinema_clone/generated/l10n.dart';
import 'package:flutter_lotte_cinema_clone/theme/app_theme_data.dart';

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
                style: AppThemeData.logoFontLight
                    .copyWith(color: Colors.red),
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
            _loadingBuilder(context),
            _loadingBuilder(context),
          ],
        ),
      ),
    );
  }

  Widget _loadingBuilder(BuildContext context) {
    return ListView(
      children: [
        _listPosterLoadingBuilder(context),
        _listPosterLoadingBuilder(context),
      ],
    );
  }

  Widget _listPosterLoadingBuilder(BuildContext context) {
    return BodyTemplateWidget(
      title: S.of(context).HotFilm,
      body: SizedBox(
          height: kMoviePosterHeight + kMoviePosterBodyHeight,
          width: kMoviePosterWidth,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (_, __) => const FilmPosterWidget.loading(),
            itemCount: 3,
          )),
    );
  }

  Widget _specialOfferBuilder(BuildContext context) {
    return BodyTemplateWidget(
      title: S.of(context).SpecialPromotion,
      body: const SizedBox(
        height: kMoviePosterHeight + kMoviePosterBodyHeight,
        width: kMoviePosterWidth,
        child: FilmPosterWidget.loading(),
      ),
    );
  }
}
