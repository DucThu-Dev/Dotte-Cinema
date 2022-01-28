import 'package:flutter_lotte_cinema_clone/model/film.dart';

abstract class Repository {
  List<Film> getListFilmData();
}