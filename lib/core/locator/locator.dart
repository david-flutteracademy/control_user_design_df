import 'package:control_user_design_df/core/store/sotore_redux.dart';
import 'package:control_user_design_df/modules/rick_morty/ui/structure/cubits/character_cubit.dart';
import 'package:control_user_design_df/modules/start/cubits/start_app_cubit.dart';
import 'package:control_user_design_df/modules/start/cubits/start_app_state.dart';
import 'package:get_it/get_it.dart';
import 'package:redux/redux.dart';

GetIt locator = GetIt.instance;

void setUpLocator() async {
  await registerCubits();
}

registerCubits() async {
  // if (!locator.isRegistered<StartAppCubit>()) {
  //   locator.registerLazySingleton(() => StartAppCubit());
  // }

  if (!locator.isRegistered<Store<StartAppState>>()) {
    locator.registerLazySingleton(() => startUpStore);
  }
  if (!locator.isRegistered<CharacterCubit>()) {
    locator.registerLazySingleton(() => CharacterCubit());
  }
}
