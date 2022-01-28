import 'package:flutter/material.dart';
import 'package:flutter_lotte_cinema_clone/presentation/cinema/cinema_screen.dart';
import 'package:flutter_lotte_cinema_clone/presentation/movie/movie_information_screen.dart';
import 'package:flutter_lotte_cinema_clone/presentation/profile/profile_screen.dart';

import 'presentation/movie/movie_screen.dart';
import 'presentation/profile/setting_screen.dart';
import 'presentation/promotion/promotion_screen.dart';
import 'presentation/ticket/my_ticket_screen.dart';

/// App routes declare.

class LotteAppRoutes {
  static const String defaultRoute = '/';
  static const String movieRoute = '/cinema';
  static const String movieInformationRoute = '/filmInformation';
  static const String cinemaRoute = '/theater';
  static const String myTicketRoute = '/myTicket';
  static const String bookTicketRoute = '/bookTicket';
  static const String promotionRoute = '/promotion';
  static const String profileRoute = '/profile';
  static const String settingRoute = '/profile/setting';
  static const String notificationRoute = '/profile/notification';

  static Map<String, Widget Function(BuildContext)> routes = {
    movieRoute: (_) => MovieScreen(),
    movieInformationRoute: (_) => MovieInformationScreen(),
    cinemaRoute: (_) => CinemaScreen(),
    myTicketRoute: (_) => MyTicketScreen(),
    // bookTicketRoute: (_) => Screen(),
    promotionRoute: (_) => PromotionScreen(),
    profileRoute: (_) => ProfileScreen(),
    settingRoute: (_) => SettingScreen(),
  };
}
