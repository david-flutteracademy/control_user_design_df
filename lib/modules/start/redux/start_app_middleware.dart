import 'package:control_user_design_df/modules/auth/data/services/auth_firebase_services.dart';
import 'package:control_user_design_df/modules/start/cubits/start_app_state.dart';
import 'package:control_user_design_df/modules/start/redux/start_app_actions.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:redux/redux.dart';

void validateUserMiddleware(
    Store<StartAppState> store, dynamic action, NextDispatcher next) {
  if (action is ValidateUserAction) {
    store.dispatch(SetIsLoggedAction(isLogged: false));
  }

  next(action);
}

void validateUserTrueMiddleware(
    Store<StartAppState> store, dynamic action, NextDispatcher next) {
  if (action is ValidateUserTrueAction) {
    if (action.email.isNotEmpty && action.password.isNotEmpty) {
      store.dispatch(SetIsLoggedAction(isLogged: true));
    } else {
      store.dispatch(SetIsLoggedAction(isLogged: false));
    }
  }
  next(action);
}

void authStateChangesMiddleware(
    Store<StartAppState> store, dynamic action, NextDispatcher next) async {
  if (action is AuthStateChangesFirebaseAction) {
    bool isMyUserExist =
        await AuthFirebaseServices().authStateChangesFirebase();
    store.dispatch(SetIsLoggedAction(isLogged: isMyUserExist));
  }

  next(action);
}

void signInWithEmailMiddleware(
    Store<StartAppState> store, dynamic action, NextDispatcher next) async {
  if (action is SignInWithEmailAction) {
    try {
      UserCredential myCredentials =
          await AuthFirebaseServices().singInUserWithEmailAndPassword(
        email: action.email,
        password: action.password,
      );
      if (myCredentials.user?.uid != null) {
        store.dispatch(SetIsLoggedAction(isLogged: true));
      }
    } catch (e) {}
  }
}
