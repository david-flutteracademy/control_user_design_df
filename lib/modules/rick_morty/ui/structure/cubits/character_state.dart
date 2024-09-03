import 'package:control_user_design_df/modules/rick_morty/data/models/character_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'character_state.freezed.dart';

@freezed
class CharacterState with _$CharacterState {
  const factory CharacterState({
    @Default([]) List<CharacterModel> characters,
    String? errorMessage,
    @Default(1) int page,
  }) = _CharacterState;
}
