import 'package:control_user_design_df/modules/start/cubits/start_app_state.dart';
import 'package:control_user_design_df/modules/start/redux/start_app_middleware.dart';
import 'package:control_user_design_df/modules/start/redux/start_app_reducer.dart';
import 'package:redux/redux.dart';

final List<Middleware<StartAppState>> startUpMiddlewares = [
  validateUserMiddleware,
  validateUserTrueMiddleware,
  authStateChangesMiddleware,
  signInWithEmailMiddleware
];

final Store<StartAppState> startUpStore = Store<StartAppState>(
  startAppReducer,
  initialState: StartAppState(),
  middleware: startUpMiddlewares,
);
