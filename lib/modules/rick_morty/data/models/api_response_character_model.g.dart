// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_response_character_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiResponseCharacterModel _$ApiResponseCharacterModelFromJson(
        Map<String, dynamic> json) =>
    ApiResponseCharacterModel(
      myCharacters: (json['myCharacters'] as List<dynamic>?)
          ?.map((e) => CharacterModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      statusCode: json['statusCode'] as String?,
      error: json['error'] as String?,
    );

Map<String, dynamic> _$ApiResponseCharacterModelToJson(
        ApiResponseCharacterModel instance) =>
    <String, dynamic>{
      'myCharacters': instance.myCharacters,
      'statusCode': instance.statusCode,
      'error': instance.error,
    };
