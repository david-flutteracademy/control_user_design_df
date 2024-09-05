import 'package:control_user_design_df/modules/start/cubits/start_app_state.dart';
import 'package:control_user_design_df/modules/start/redux/start_app_actions.dart';

StartAppState startAppReducer(StartAppState state, dynamic action) {
  if (action is SetIsLoggedAction) {
    return state.copyWith(isLogged: action.isLogged);
  }

  return state;
}
