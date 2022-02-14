import 'package:flutter/material.dart';
import 'package:flutter_lotte_cinema_clone/gen/assets.gen.dart';
import 'package:flutter_lotte_cinema_clone/generated/l10n.dart';
import 'package:flutter_lotte_cinema_clone/theme/app_theme_data.dart';

import '../views.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  /// AppBar menu button action.
  void menuTopBtnOnClick(BuildContext context) {}

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
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
              style: AppThemeData.logoFontLight,
            ),
          ],
        ),
        centerTitle: false,
        actions: [
          IconButton(
            icon: const Icon(
              Icons.menu,
              color: Colors.white,
            ),
            onPressed: () => menuTopBtnOnClick(context),
          )
        ],
        backgroundColor: Colors.red,
      ),
      body: Container(
        alignment: Alignment.center,
        height: size.height,
        width: size.width,
        child: ListView(
          shrinkWrap: true,
          children: <Widget>[
            /// Banner Movies Section.
            const FilmBannerWidget(),

            /// Performing Movies Section.
            const PerformingMovieWidget(),

            const DefaultDividerWidget(),

            /// Cinema near you Section.

            BodyTemplateWidget(
              title: S.of(context).CinemaNearYou,
              body: const CinemaListWidget(),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const BottomMenuActionBarWidget(),
    );
  }
}
