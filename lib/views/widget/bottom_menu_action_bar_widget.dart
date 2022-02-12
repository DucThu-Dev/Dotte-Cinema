import 'package:flutter/material.dart';
import 'package:flutter_lotte_cinema_clone/generated/l10n.dart';
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
    "title": S.current.Promotion,
    "icon": Icons.sell,
    "route": LotteAppRoutes.promotionRoute,
  },
  {
    "title": S.current.Profile,
    "icon": Icons.account_circle,
    "route": LotteAppRoutes.profileRoute,
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
      selectedIconTheme: const IconThemeData(color: Colors.red),
      selectedItemColor: Colors.red,
      selectedLabelStyle:
          Theme.of(context).textTheme.bodyText1!.copyWith(color: Colors.red),
      unselectedLabelStyle:
          Theme.of(context).textTheme.bodyText1!.copyWith(color: Colors.red),
      unselectedItemColor: Colors.red,
      unselectedIconTheme: const IconThemeData(color: Colors.red),
      onTap: (pos) =>
          Navigator.of(context).pushNamed(bottomBarItemData[pos]['route']),
    );
  }
}
