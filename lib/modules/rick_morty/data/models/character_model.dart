// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:freezed_annotation/freezed_annotation.dart';

part 'character_model.g.dart';

@JsonSerializable()
class CharacterModel {
  int? id;
  String? name;
  String? status;
  String? image;
  String? gender;
  String? species;
  String? error;
  CharacterModel({
    this.id,
    this.name,
    this.status,
    this.image,
    this.gender,
    this.species,
    this.error,
  });

  /// Connect the generated [_$CharacterModelFromJson] function to the `fromJson`
  /// factory.
  factory CharacterModel.fromJson(Map<String, dynamic> json) =>
      _$CharacterModelFromJson(json);

  /// Connect the generated [_$CharacterModelToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$CharacterModelToJson(this);
}
