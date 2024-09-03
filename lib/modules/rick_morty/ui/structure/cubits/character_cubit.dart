import 'package:control_user_design_df/modules/rick_morty/data/models/api_response_character_model.dart';
import 'package:control_user_design_df/modules/rick_morty/data/models/character_model.dart';
import 'package:control_user_design_df/modules/rick_morty/data/repositories/character_repository.dart';
import 'package:control_user_design_df/modules/rick_morty/ui/structure/cubits/character_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CharacterCubit extends Cubit<CharacterState> {
  CharacterCubit() : super(const CharacterState());

  CharacterRepository characterRepository = CharacterRepository();

  Future<void> initCharacters() async {
    ApiResponseCharacterModel? responseApi =
        await characterRepository.getCharactersPerPage(state.page);

    emit(state.copyWith(characters: responseApi?.myCharacters ?? []));

    if (responseApi?.error != null && responseApi!.error!.isNotEmpty) {
      emit(state.copyWith(errorMessage: responseApi.error));
    }
  }
}
