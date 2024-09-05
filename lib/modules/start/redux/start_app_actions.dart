class ValidateUserAction {}

class ValidateUserTrueAction {
  final String email;
  final String password;

  ValidateUserTrueAction({required this.email, required this.password});
}

class SignUpWithEmailAction {
  final String email;
  final String password;

  SignUpWithEmailAction({required this.email, required this.password});
}

class SignInWithEmailAction {
  final String email;
  final String password;

  SignInWithEmailAction({required this.email, required this.password});
}

class SignOutAction {}

class AuthStateChangesFirebaseAction {}

class SetIsLoggedAction {
  final bool isLogged;

  SetIsLoggedAction({required this.isLogged});
}
