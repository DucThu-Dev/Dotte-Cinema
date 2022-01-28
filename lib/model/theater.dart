import 'package:flutter_lotte_cinema_clone/service/data_template.dart';

class Theater {
  Theater(this.id, this.name, this.imageUrl);

  final String id;
  final String name;
  final String imageUrl;

  static List<Theater> fromSample() {
    final List<Map<String, Object>> theaterDataObject =
        sampleData['theaterData']!;
    return theaterDataObject.map((data) {
      String id = data['id'] as String;
      String name = data['theaterName'] as String;
      String imageUrl = data['imageUrl'] as String;

      return Theater(
        id,
        name,
        imageUrl,
      );
    }).toList();
  }
}
