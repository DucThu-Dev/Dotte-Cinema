import 'package:flutter/material.dart';
import './views/views.dart';

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
    movieRoute: (_) => const MovieScreen(),
    movieInformationRoute: (_) => const MovieInformationScreen(),
    cinemaRoute: (_) => const CinemaScreen(),
    myTicketRoute: (_) => const MyTicketScreen(),
    promotionRoute: (_) => const PromotionScreen(),
    profileRoute: (_) => const ProfileScreen(),
    settingRoute: (_) => const SettingScreen(),
  };
}
