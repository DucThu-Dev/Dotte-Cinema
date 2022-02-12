import 'package:flutter_test/flutter_test.dart';
import 'package:the_movie_db_client/src/models/models.dart';

void main() {
  group('Movie', () {
    group('fromJson', () {
      test('must convert to approriate Movie object from json', () {
        expect(
            Movie.fromJson({
              "overview":
                  "As a collection of history's worst tyrants and criminal masterminds gather to plot a war to wipe out millions, one man must race against time to stop them.",
              "release_date": "2021-12-22",
              "adult": false,
              "backdrop_path": "/oQPbZ5e6J9fuAyv4Gl0mMZMIyPI.jpg",
              "vote_count": 661,
              "genre_ids": [28, 12, 53, 10752],
              "id": 476669,
              "original_language": "en",
              "original_title": "The King's Man",
              "poster_path": "/nj5HmHRZsrYQEYYXyAusFv35erP.jpg",
              "title": "The King's Man",
              "video": false,
              "vote_average": 7.1,
              "popularity": 1291.478,
              "media_type": "movie"
            }).toString(),
            Movie(
                    476669,
                    '/nj5HmHRZsrYQEYYXyAusFv35erP.jpg',
                    false,
                    'As a collection of history\'s worst tyrants and criminal masterminds gather to plot a war to wipe out millions, one man must race against time to stop them.',
                    '2021-12-22',
                    'The King\'s Man',
                    'en',
                    'The King\'s Man',
                    '/oQPbZ5e6J9fuAyv4Gl0mMZMIyPI.jpg',
                    1291.478,
                    661,
                    false,
                    7.1)
                .toString());
      });
    });
  });
}
