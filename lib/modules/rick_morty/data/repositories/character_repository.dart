import 'dart:convert';

import 'package:control_user_design_df/modules/rick_morty/data/models/api_response_character_model.dart';
import 'package:control_user_design_df/modules/rick_morty/data/models/character_model.dart';
import 'package:control_user_design_df/modules/rick_morty/data/services/character_api_service.dart';
import 'package:http/http.dart' as http;

class CharacterRepository {
  CharacterApiServices characterApiServices = CharacterApiServices();
  Future<ApiResponseCharacterModel?> getCharactersPerPage(int page) async {
    ApiResponseCharacterModel? apiResponseCharacterModel;
    List<CharacterModel> myCharacters = [];

    http.Response? response =
        await characterApiServices.getCharatersPerPage(page);

    if (response != null && response.statusCode == 200) {
      final responseBody = jsonDecode(response.body);

      print(responseBody['results']);

      final List<dynamic> responseResult = responseBody['results'];

      print(responseResult);

      try {
        myCharacters = responseResult
            .map<CharacterModel>((e) => CharacterModel.fromJson(e))
            .toList();
      } catch (e) {
        print(e);
      }

      apiResponseCharacterModel = ApiResponseCharacterModel(
        myCharacters: myCharacters,
      );
    }

    if (response != null && response.statusCode == 404) {
      final responseBody = jsonDecode(response.body);
      print(responseBody);
      apiResponseCharacterModel =
          ApiResponseCharacterModel.fromJson(responseBody);
    }

    return apiResponseCharacterModel;
  }
}
