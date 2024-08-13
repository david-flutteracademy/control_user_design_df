class FormValidators {
  static String? isValidEmail(String? value) {
    if (value == null ||
        value.isEmpty ||
        !RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
      return 'This emails is wrong';
    }
    return null;
  }

  static String? isValidPassword(String? text) {
    if (text == null || text.length < 6) {
      return "This passwor is too short";
    }
    return null;
  }
}
