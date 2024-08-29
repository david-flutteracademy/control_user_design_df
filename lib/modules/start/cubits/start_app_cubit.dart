import 'package:control_user_design_df/modules/auth/data/services/auth_firebase_services.dart';
import 'package:control_user_design_df/modules/start/cubits/start_app_state.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class StartAppCubit extends Cubit<StartAppState> {
  StartAppCubit() : super(const StartAppState());

  Future<void> valiteUser() async {
    emit(state.copyWith(isLogged: false));
  }

  Future<void> valiteUserTrue({
    required String email,
    required String password,
  }) async {
    if (email.isNotEmpty && password.isNotEmpty) {
      emit(state.copyWith(isLogged: true));
    } else {
      emit(state.copyWith(isLogged: false));
    }
  }

  Future<void> signUpWithEmail({
    required String email,
    required String password,
  }) async {
    UserCredential myCredentials = await AuthFirebaseServices()
        .createUserWithEmailAndPassword(email: email, password: password);

    if (myCredentials.user?.uid != null) {
      emit(state.copyWith(isLogged: true));
    }
  }

  Future<void> signInWithEmail({
    required String email,
    required String password,
  }) async {
    UserCredential myCredentials = await AuthFirebaseServices()
        .singInUserWithEmailAndPassword(email: email, password: password);

    if (myCredentials.user?.uid != null) {
      emit(state.copyWith(isLogged: true));
    }
  }

  Future<void> signOut() async {
    try {
      await AuthFirebaseServices().signOut();
      emit(state.copyWith(isLogged: false));
    } catch (e) {
      rethrow;
    }
  }

  Future<void> authStateChangesFirebase() async {
    bool isMyUserExist =
        await AuthFirebaseServices().authStateChangesFirebase();
    emit(state.copyWith(isLogged: isMyUserExist));
  }
}
