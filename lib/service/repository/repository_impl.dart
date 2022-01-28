import 'package:flutter_lotte_cinema_clone/model/film.dart';
import 'package:flutter_lotte_cinema_clone/service/repository/repository.dart';

class RepositoryImpl implements Repository {
  RepositoryImpl() {
    filmList = Film.fromSample();
  }

  late List<Film> filmList;

  @override
  List<Film> getListFilmData() {
    return filmList;
  }
}
