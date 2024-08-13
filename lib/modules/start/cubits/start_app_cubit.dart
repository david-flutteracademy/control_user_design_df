import 'package:control_user_design_df/modules/start/cubits/start_app_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class StartAppCubit extends Cubit<StartAppState> {
  StartAppCubit() : super(const StartAppState());

  Future<void> valiteUser() async {
    emit(state.copyWith(isLogged: false));
  }

  Future<void> valiteUserTrue() async {
    emit(state.copyWith(isLogged: true));
  }
}
