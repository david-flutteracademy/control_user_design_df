import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_flutter_dto.g.dart';

@JsonSerializable()
class UserFlutterDto {
  final String? email;
  final String? name;

  UserFlutterDto({required this.email, required this.name});

  factory UserFlutterDto.fromJson(Map<String, dynamic> json) =>
      _$UserFlutterDtoFromJson(json);
  Map<String, dynamic> toJson() => _$UserFlutterDtoToJson(this);
}
