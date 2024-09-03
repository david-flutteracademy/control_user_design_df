// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:control_user_design_df/modules/rick_morty/data/models/character_model.dart';

part 'api_response_character_model.g.dart';

@JsonSerializable()
class ApiResponseCharacterModel {
  List<CharacterModel>? myCharacters;
  String? statusCode;
  String? error;
  ApiResponseCharacterModel({
    this.myCharacters,
    this.statusCode,
    this.error,
  });

  /// Connect the generated [_$CharacterModelFromJson] function to the `fromJson`
  /// factory.
  factory ApiResponseCharacterModel.fromJson(Map<String, dynamic> json) =>
      _$ApiResponseCharacterModelFromJson(json);

  /// Connect the generated [_$CharacterModelToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$ApiResponseCharacterModelToJson(this);
}
