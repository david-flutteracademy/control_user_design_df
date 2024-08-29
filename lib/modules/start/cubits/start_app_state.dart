import 'package:control_user_design_df/modules/auth/data/models/user_flutter_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'start_app_state.freezed.dart';

@freezed
class StartAppState with _$StartAppState {
  const factory StartAppState({
    bool? isLogged,
    UserFlutterDto? myUser,
    @Default(true) bool needTheme,
  }) = _StartAppState;
}
