// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `LOTTE`
  String get AppTitle {
    return Intl.message(
      'LOTTE',
      name: 'AppTitle',
      desc: '',
      args: [],
    );
  }

  /// `Performing Film`
  String get PerformingFilm {
    return Intl.message(
      'Performing Film',
      name: 'PerformingFilm',
      desc: '',
      args: [],
    );
  }

  /// `hour`
  String get Hour {
    return Intl.message(
      'hour',
      name: 'Hour',
      desc: '',
      args: [],
    );
  }

  /// `{minute} minutes`
  String Minutes(Object minute) {
    return Intl.message(
      '$minute minutes',
      name: 'Minutes',
      desc: '',
      args: [minute],
    );
  }

  /// `See all`
  String get SeeAll {
    return Intl.message(
      'See all',
      name: 'SeeAll',
      desc: '',
      args: [],
    );
  }

  /// `Book now`
  String get BookNow {
    return Intl.message(
      'Book now',
      name: 'BookNow',
      desc: '',
      args: [],
    );
  }

  /// `Cinema near you`
  String get CinemaNearYou {
    return Intl.message(
      'Cinema near you',
      name: 'CinemaNearYou',
      desc: '',
      args: [],
    );
  }

  /// `Promotion`
  String get Promotion {
    return Intl.message(
      'Promotion',
      name: 'Promotion',
      desc: '',
      args: [],
    );
  }

  /// `Popcorn combo`
  String get PopcornCombo {
    return Intl.message(
      'Popcorn combo',
      name: 'PopcornCombo',
      desc: '',
      args: [],
    );
  }

  /// `Sale off ticket`
  String get SaleOffTicket {
    return Intl.message(
      'Sale off ticket',
      name: 'SaleOffTicket',
      desc: '',
      args: [],
    );
  }

  /// `Film`
  String get Film {
    return Intl.message(
      'Film',
      name: 'Film',
      desc: '',
      args: [],
    );
  }

  /// `Cinema`
  String get Cinama {
    return Intl.message(
      'Cinema',
      name: 'Cinama',
      desc: '',
      args: [],
    );
  }

  /// `My tickets`
  String get MyTicket {
    return Intl.message(
      'My tickets',
      name: 'MyTicket',
      desc: '',
      args: [],
    );
  }

  /// `Book ticket`
  String get BookTicket {
    return Intl.message(
      'Book ticket',
      name: 'BookTicket',
      desc: '',
      args: [],
    );
  }

  /// `Next film`
  String get NextFilm {
    return Intl.message(
      'Next film',
      name: 'NextFilm',
      desc: '',
      args: [],
    );
  }

  /// `Hot film`
  String get HotFilm {
    return Intl.message(
      'Hot film',
      name: 'HotFilm',
      desc: '',
      args: [],
    );
  }

  /// `Special Promotion`
  String get SpecialPromotion {
    return Intl.message(
      'Special Promotion',
      name: 'SpecialPromotion',
      desc: '',
      args: [],
    );
  }

  /// `All`
  String get All {
    return Intl.message(
      'All',
      name: 'All',
      desc: '',
      args: [],
    );
  }

  /// `Liked cinema`
  String get LikedCinema {
    return Intl.message(
      'Liked cinema',
      name: 'LikedCinema',
      desc: '',
      args: [],
    );
  }

  /// `Watching`
  String get Watching {
    return Intl.message(
      'Watching',
      name: 'Watching',
      desc: '',
      args: [],
    );
  }

  /// `Watched/Outdated`
  String get WatchedOutdated {
    return Intl.message(
      'Watched/Outdated',
      name: 'WatchedOutdated',
      desc: '',
      args: [],
    );
  }

  /// `Gift`
  String get Gift {
    return Intl.message(
      'Gift',
      name: 'Gift',
      desc: '',
      args: [],
    );
  }

  /// `Event by cinema`
  String get EventByCinema {
    return Intl.message(
      'Event by cinema',
      name: 'EventByCinema',
      desc: '',
      args: [],
    );
  }

  /// `Hot`
  String get Hot {
    return Intl.message(
      'Hot',
      name: 'Hot',
      desc: '',
      args: [],
    );
  }

  /// `Film information`
  String get FilmInformation {
    return Intl.message(
      'Film information',
      name: 'FilmInformation',
      desc: '',
      args: [],
    );
  }

  /// `Price table`
  String get PriceTable {
    return Intl.message(
      'Price table',
      name: 'PriceTable',
      desc: '',
      args: [],
    );
  }

  /// `Detail`
  String get Detail {
    return Intl.message(
      'Detail',
      name: 'Detail',
      desc: '',
      args: [],
    );
  }

  /// `Pick chair`
  String get PickChair {
    return Intl.message(
      'Pick chair',
      name: 'PickChair',
      desc: '',
      args: [],
    );
  }

  /// `Book Ticket Now`
  String get BookTicketNow {
    return Intl.message(
      'Book Ticket Now',
      name: 'BookTicketNow',
      desc: '',
      args: [],
    );
  }

  /// `Book with popcorn and beverage combo`
  String get BookWithPopcornAndDrinkingCombo {
    return Intl.message(
      'Book with popcorn and beverage combo',
      name: 'BookWithPopcornAndDrinkingCombo',
      desc: '',
      args: [],
    );
  }

  /// `VNĐ`
  String get VND {
    return Intl.message(
      'VNĐ',
      name: 'VND',
      desc: '',
      args: [],
    );
  }

  /// `Sign Up`
  String get SignUp {
    return Intl.message(
      'Sign Up',
      name: 'SignUp',
      desc: '',
      args: [],
    );
  }

  /// `Sign In`
  String get SignIn {
    return Intl.message(
      'Sign In',
      name: 'SignIn',
      desc: '',
      args: [],
    );
  }

  /// `You need sign in to complete this action`
  String get YouNeedSignUpToDoAction {
    return Intl.message(
      'You need sign in to complete this action',
      name: 'YouNeedSignUpToDoAction',
      desc: '',
      args: [],
    );
  }

  /// `Profile`
  String get Profile {
    return Intl.message(
      'Profile',
      name: 'Profile',
      desc: '',
      args: [],
    );
  }

  /// `Total spending {year}`
  String TotalSpending(Object year) {
    return Intl.message(
      'Total spending $year',
      name: 'TotalSpending',
      desc: '',
      args: [year],
    );
  }

  /// `Vip`
  String get Vip {
    return Intl.message(
      'Vip',
      name: 'Vip',
      desc: '',
      args: [],
    );
  }

  /// `Premium`
  String get Premium {
    return Intl.message(
      'Premium',
      name: 'Premium',
      desc: '',
      args: [],
    );
  }

  /// `My gift`
  String get MyGift {
    return Intl.message(
      'My gift',
      name: 'MyGift',
      desc: '',
      args: [],
    );
  }

  /// `Watched`
  String get Watched {
    return Intl.message(
      'Watched',
      name: 'Watched',
      desc: '',
      args: [],
    );
  }

  /// `Rate`
  String get Rate {
    return Intl.message(
      'Rate',
      name: 'Rate',
      desc: '',
      args: [],
    );
  }

  /// `Setting`
  String get Setting {
    return Intl.message(
      'Setting',
      name: 'Setting',
      desc: '',
      args: [],
    );
  }

  /// `Sign out`
  String get SignOut {
    return Intl.message(
      'Sign out',
      name: 'SignOut',
      desc: '',
      args: [],
    );
  }

  /// `Notification`
  String get Notification {
    return Intl.message(
      'Notification',
      name: 'Notification',
      desc: '',
      args: [],
    );
  }

  /// `We don't find any cinema near your position.`
  String get WeDontFindAnyCinemaNearYourPosition {
    return Intl.message(
      'We don\'t find any cinema near your position.',
      name: 'WeDontFindAnyCinemaNearYourPosition',
      desc: '',
      args: [],
    );
  }

  /// `You did not like any cinema yet.`
  String get YouDidntLikeAnyCinemaYet {
    return Intl.message(
      'You did not like any cinema yet.',
      name: 'YouDidntLikeAnyCinemaYet',
      desc: '',
      args: [],
    );
  }

  /// `Detail information`
  String get DetailInformation {
    return Intl.message(
      'Detail information',
      name: 'DetailInformation',
      desc: '',
      args: [],
    );
  }

  /// `Estimated release date`
  String get EstimateReleaseDate {
    return Intl.message(
      'Estimated release date',
      name: 'EstimateReleaseDate',
      desc: '',
      args: [],
    );
  }

  /// `Follow`
  String get Follow {
    return Intl.message(
      'Follow',
      name: 'Follow',
      desc: '',
      args: [],
    );
  }

  /// `Unfortunately, some errors occurred.\nPlease try again later.`
  String get ErrorOccurred {
    return Intl.message(
      'Unfortunately, some errors occurred.\nPlease try again later.',
      name: 'ErrorOccurred',
      desc: '',
      args: [],
    );
  }

  /// `Book ticket completed.`
  String get BookTicketComplete {
    return Intl.message(
      'Book ticket completed.',
      name: 'BookTicketComplete',
      desc: '',
      args: [],
    );
  }

  /// `Popularity`
  String get Popularity {
    return Intl.message(
      'Popularity',
      name: 'Popularity',
      desc: '',
      args: [],
    );
  }

  /// `Language`
  String get Language {
    return Intl.message(
      'Language',
      name: 'Language',
      desc: '',
      args: [],
    );
  }

  /// `Go with me for {movie} movie at Dotte Cinema.`
  String ShareMessage(Object movie) {
    return Intl.message(
      'Go with me for $movie movie at Dotte Cinema.',
      name: 'ShareMessage',
      desc: '',
      args: [movie],
    );
  }

  /// `No promotion available.`
  String get NoPromotionYet {
    return Intl.message(
      'No promotion available.',
      name: 'NoPromotionYet',
      desc: '',
      args: [],
    );
  }

  /// `No event available.`
  String get NoEventAvailable {
    return Intl.message(
      'No event available.',
      name: 'NoEventAvailable',
      desc: '',
      args: [],
    );
  }

  /// `You don't have any ticket.`
  String get YouHaveNoTicket {
    return Intl.message(
      'You don\'t have any ticket.',
      name: 'YouHaveNoTicket',
      desc: '',
      args: [],
    );
  }

  /// `You have no notification.`
  String get NoNotificationYet {
    return Intl.message(
      'You have no notification.',
      name: 'NoNotificationYet',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'vi'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
