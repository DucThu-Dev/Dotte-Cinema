import 'package:flutter/material.dart';
import 'package:flutter_lotte_cinema_clone/service_locator.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../generated/l10n.dart';
import '../../routes.dart';
import '../views.dart';

class CinemaListWidget extends ConsumerWidget {
  const CinemaListWidget({Key? key, this.title}) : super(key: key);

  final String? title;

  /// SeeAll button 's action of the Cinema nearby Section.
  void seeAllCinemaNearYouAction(BuildContext context) =>
      Navigator.of(context).pushNamed(DotteAppRoutes.cinemaRoute);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final size = MediaQuery.of(context).size;

    return SizedBox(
      width: size.width,
      height: kCinemaPosterSize + kCinemaPosterBodyHeight,
      child: ref.watch(cinemasProvider).when(
            data: (cinemas) => ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              addAutomaticKeepAlives: true,
              itemBuilder: (_, index) => CinemaPosterWidget(
                cinemaId: cinemas[index].id,
                cinemaImageUrl: cinemas[index].imageUrl,
                cinemaName: cinemas[index].title,
              ),
              itemCount: cinemas.length,
            ),
            error: (err, _) => Center(
              child: Text(
                S.of(context).ErrorOccurred,
              ),
            ),
            loading: () => ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (_, __) => const CinemaPosterWidget.loading(),
              itemCount: kMoviePosterLoadingCountMobile,
            ),
          ),
    );
  }
}
