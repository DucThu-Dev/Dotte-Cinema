import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable(
  createToJson: false,
  fieldRename: FieldRename.snake,
)
class User {
  User(this.id, this.name, this.phoneNumber, this.avatarUrl);

  final String id;
  final String name;
  final String phoneNumber;
  final String? avatarUrl;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}


