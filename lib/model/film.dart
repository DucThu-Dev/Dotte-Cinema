import 'package:flutter_lotte_cinema_clone/service/data_template.dart';

class Film {
  Film(this.id, this.title, this.duration, this.posterUrl, this.bannerUrl,
      this.introduce,
      [this.hotRate = 0]);

  final String id;
  final String title;
  final int duration;
  final String posterUrl;
  final String bannerUrl;
  final int? hotRate;
  final String introduce;

  static List<Film> fromSample() {
    final List<Map<String, Object>> filmDataObject = sampleData['filmData']!;
    return filmDataObject.map((data) {
      String id = data['id'] as String;
      String title = data['title'] as String;
      int duration = data['duration'] as int;
      String posterUrl = data['posterUrl'] as String;
      String bannerUrl = data['bannerUrl'] as String;
      String introduce = data['introduce'] as String;
      int? hotRate = data['hotRate'] as int?;
      return Film(
        id,
        title,
        duration,
        posterUrl,
        bannerUrl,
        introduce,
        hotRate = hotRate,
      );
    }).toList();
  }
}
