import 'package:flutter/material.dart';
import 'package:flutter_lotte_cinema_clone/constants.dart';
import 'package:flutter_lotte_cinema_clone/generated/l10n.dart';
import 'package:flutter_lotte_cinema_clone/model/film.dart';
import 'package:flutter_lotte_cinema_clone/model/theater.dart';
import 'package:flutter_lotte_cinema_clone/presentation/widget/body_template_widget.dart';
import 'package:flutter_lotte_cinema_clone/presentation/home/film_banner_widget.dart';
import 'package:flutter_lotte_cinema_clone/presentation/home/film_poster_widget.dart';
import 'package:flutter_lotte_cinema_clone/presentation/home/theater_poster_widget.dart';
import 'package:flutter_lotte_cinema_clone/presentation/widget/bottom_menu_action_bar_widget.dart';
import 'package:flutter_lotte_cinema_clone/resource/color_resource.dart';
import 'package:flutter_lotte_cinema_clone/resource/image_resource.dart';
import 'package:flutter_lotte_cinema_clone/theme/app_theme_data.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  void menuTopBtnOnClick() {}

  void seeAllPerformingFilmAction() {}

  void seeAllCinemaNearYouAction() {}

  @override
  Widget build(BuildContext context) {
    List<Film> films = Film.fromSample();
    List<Theater> theaters = Theater.fromSample();
    final size = MediaQuery.of(context).size;
    return Scaffold(
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
              style: AppThemeData.logoFontLight,
            ),
          ],
        ),
        centerTitle: false,
        actions: [
          IconButton(
            icon: const Icon(
              Icons.menu,
              color: ColorResource.white,
            ),
            onPressed: menuTopBtnOnClick,
          )
        ],
        backgroundColor: ColorResource.red,
      ),
      body: Container(
        alignment: Alignment.center,
        height: size.height,
        width: size.width,
        child: ListView(
          shrinkWrap: true,
          children: [
            FilmBannerWidget(films: films),
            BodyTemplateWidget(
              title: S.of(context).PerformingFilm,
              seeAllActionOnClick: seeAllPerformingFilmAction,
              body: SizedBox(
                width: size.width,
                height: kMoviePosterHeight + kMoviePosterBodyHeight,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  addAutomaticKeepAlives: true,
                  itemBuilder: (_, index) => FilmPosterWidget(
                    imageSrc: films[index].posterUrl,
                    filmTitle: films[index].title,
                    duration: S.current.Minutes(films[index].duration),
                    filmId: films[index].id,
                  ),
                  itemCount: films.length,
                ),
              ),
            ),
            const Divider(
              thickness: 12,
              color: ColorResource.dividerColor,
            ),
            BodyTemplateWidget(
              title: S.of(context).CinemaNearYou,
              seeAllActionOnClick: seeAllCinemaNearYouAction,
              body: SizedBox(
                width: size.width,
                height: kCinemaPosterSize + kCinemaPosterBodyHeight,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  addAutomaticKeepAlives: true,
                  itemBuilder: (_, index) => TheaterPosterWidget(
                    theaterId: theaters[index].id,
                    theaterImageUrl: theaters[index].imageUrl,
                    theaterName: theaters[index].name,
                  ),
                  itemCount: theaters.length,
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const BottomMenuActionBarWidget(),
    );
  }
}
