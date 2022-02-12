import 'package:dotte_repository/dotte_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lotte_cinema_clone/gen/assets.gen.dart';
import 'package:flutter_lotte_cinema_clone/generated/l10n.dart';
import 'package:flutter_lotte_cinema_clone/theme/app_theme_data.dart';
import 'package:the_movie_db_client/the_movie_db_client.dart';

import '../../routes.dart';
import '../views.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  void menuTopBtnOnClick(BuildContext context) {}

  void seeAllPerformingFilmAction(BuildContext context) =>
      Navigator.of(context).pushNamed(LotteAppRoutes.movieRoute);

  void seeAllCinemaNearYouAction(BuildContext context) =>
      Navigator.of(context).pushNamed(LotteAppRoutes.cinemaRoute);

  @override
  Widget build(BuildContext context) {
    List<Movie> movies = Movie.fromSample();
    List<Cinema> cinemas = Cinema.fromSample();
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
          children: [
            /// Banner Films Section.
            FilmBannerWidget(movies: movies),

            /// Performing Films Section.
            BodyTemplateWidget(
              title: S.of(context).PerformingFilm,
              seeAllActionOnClick: () => seeAllPerformingFilmAction(context),
              body: SizedBox(
                width: size.width,
                height: kMoviePosterHeight + kMoviePosterBodyHeight,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  addAutomaticKeepAlives: true,
                  itemBuilder: (_, index) => FilmPosterWidget(
                    posterUrl: movies[index].posterUrl,
                    filmTitle: movies[index].title,
                    duration: S.current.Minutes(movies[index].duration),
                    filmId: movies[index].id,
                    bookTicketAction: () {},
                    onPosterClickAction: () {},
                  ),
                  itemCount: movies.length,
                ),
              ),
            ),
            const DefaultDividerWidget(),

            /// Cinema near you Section.
            BodyTemplateWidget(
              title: S.of(context).CinemaNearYou,
              seeAllActionOnClick: () => seeAllCinemaNearYouAction(context),
              body: SizedBox(
                width: size.width,
                height: kCinemaPosterSize + kCinemaPosterBodyHeight,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  addAutomaticKeepAlives: true,
                  itemBuilder: (_, index) => TheaterPosterWidget(
                    theaterId: cinemas[index].id,
                    theaterImageUrl: cinemas[index].imageUrl,
                    theaterName: cinemas[index].name,
                  ),
                  itemCount: cinemas.length,
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
