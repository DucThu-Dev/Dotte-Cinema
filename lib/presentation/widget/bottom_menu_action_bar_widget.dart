import 'package:flutter/material.dart';
import 'package:flutter_lotte_cinema_clone/generated/l10n.dart';
import 'package:flutter_lotte_cinema_clone/resource/color_resource.dart';
import '../../routes.dart';

List<Map<String, dynamic>> bottomBarItemData = [
  {
    "title": S.current.Film,
    "icon": Icons.videocam,
    "route": LotteAppRoutes.movieRoute,
  },
  {
    "title": S.current.Cinama,
    "icon": Icons.theaters,
    "route": LotteAppRoutes.cinemaRoute,
  },
  {
    "title": S.current.MyTicket,
    "icon": Icons.confirmation_number,
    "route": LotteAppRoutes.myTicketRoute
  },
  {
    "title": S.current.BookTicket,
    "icon": Icons.book_online,
    "route": LotteAppRoutes.bookTicketRoute,
  },
  {
    "title": S.current.Promotion,
    "icon": Icons.sell,
    "route": LotteAppRoutes.promotionRoute,
  },
];

class BottomMenuActionBarWidget extends StatelessWidget {
  const BottomMenuActionBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: bottomBarItemData
          .map(
            (map) => BottomNavigationBarItem(
              icon: Icon(map["icon"] as IconData),
              label: map["title"],
            ),
          )
          .toList(),
      landscapeLayout: BottomNavigationBarLandscapeLayout.spread,
      type: BottomNavigationBarType.fixed,
      showSelectedLabels: true,
      showUnselectedLabels: true,
      selectedIconTheme: const IconThemeData(color: ColorResource.red),
      selectedItemColor: ColorResource.red,
      selectedLabelStyle: Theme.of(context)
          .textTheme
          .bodyText1!
          .copyWith(color: ColorResource.red),
      unselectedLabelStyle: Theme.of(context)
          .textTheme
          .bodyText1!
          .copyWith(color: ColorResource.red),
      unselectedItemColor: ColorResource.red,
      unselectedIconTheme: const IconThemeData(color: ColorResource.red),
      onTap: (pos) =>
          Navigator.of(context).pushNamed(bottomBarItemData[pos]['route']),
    );
  }
}
