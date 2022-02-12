
import 'package:json_annotation/json_annotation.dart';

part 'cinema.g.dart';

@JsonSerializable(
  createToJson: false,
  includeIfNull: false,
  fieldRename: FieldRename.snake,
)
class Cinema {
  final int id;
  final String title;
  final String imageUrl;

  Cinema(this.id, this.title, this.imageUrl);

  factory Cinema.fromJson(Map<String, dynamic> json) => _$CinemaFromJson(json);
}