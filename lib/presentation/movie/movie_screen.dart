import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lotte_cinema_clone/constants.dart';
import 'package:flutter_lotte_cinema_clone/generated/l10n.dart';
import 'package:flutter_lotte_cinema_clone/model/film.dart';
import 'package:flutter_lotte_cinema_clone/presentation/widget/body_template_widget.dart';
import 'package:flutter_lotte_cinema_clone/resource/color_resource.dart';
import 'package:flutter_lotte_cinema_clone/resource/image_resource.dart';
import 'package:flutter_lotte_cinema_clone/theme/app_theme_data.dart';

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
              Image.asset(
                ImageResource.lotteLogo,
                height: kLogoSize,
                width: kLogoSize,
              ),
              const SizedBox(width: 8),
              Text(
                S.of(context).AppTitle,
                style: AppThemeData.logoFontLight
                    .copyWith(color: ColorResource.red),
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
            ListView(
              children: [
                _hotFilmBuilder(context),
                _specialOfferBuilder(context),
              ],
            ),
            Container(),
          ],
        ),
      ),
    );
  }

  Widget _loadingFilmBuilder(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }

  Widget _hotFilmBuilder(BuildContext context) {
    return BodyTemplateWidget(
        title: S.of(context).HotFilm,
        body: Container(
          height: kMoviePosterHeight + kMoviePosterBodyHeight,
          width: kMoviePosterWidth,
          child: _loadingFilmBuilder(context),
        ));
  }

  Widget _specialOfferBuilder(BuildContext context) {
    return BodyTemplateWidget(
        title: S.of(context).SpecialPromotion,
        body: Container(
          child: _loadingFilmBuilder(context),
        ));
  }
}
