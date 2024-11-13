part of 'utils.dart';

abstract class IBValidator {
  static String _name([int index = 0]) {
    return [
      "Full name cannot be empty",
      "Full name is invalid",
      "Please remove the space from lastname"
    ][index];
  }

  static String _email([int index = 0]) {
    return [
      "Email cannot be empty",
      "Email is invalid",
    ][index];
  }

  static String _password([int index = 0]) {
    return [
      "Password cannot be empty",
      "Password should be min 6 characters",
    ][index];
  }

  static String? password(
    String val, {
    bool hasTap = true,
    bool isAuto = false,
    String? error,
  }) {
    if (hasTap) {
      if (null != error) return error;
      if (val.isEmpty) return _password();
      if (val.length < 6) return _password(1);
    }

    if (!hasTap) {}
    return error;
  }

  static String? validateFirstName(String? value) {
    return _validateName(value?.trim());
  }

  static String? validateLastName(String? value) {
    return _validateName(value?.trim(), isLastName: true);
  }

  static String? _validateName(String? s, {bool isLastName = false}) {
    final regNum = RegExp(r"[0-9]");
    final regSpecial = RegExp(r'[!@#$%^&*(),.?":{}|<>±/]');

    if (null == s || s.isEmpty) {
      return isLastName ? "Last name cannot be empty" : "First name cannot be empty";
    }

    if (s.startsWith(" ") || s.endsWith(" ")) {
      return isLastName
          ? "Please remove the space from lastName"
          : "Please remove the space from firstName";
    }

    if (regNum.hasMatch(s)) {
      return isLastName ? "Last name is invalid" : "First name is invalid";
    }

    if (regSpecial.hasMatch(s)) {
      return isLastName ? "Last name is invalid" : "First name is invalid";
    }
    return null;
  }

  static String? validateFullName(String? targetValue) {
    var value = targetValue?.trim();

    final regNum = RegExp(r"[0-9]");
    final regSpecial = RegExp(r'[!@#$%^&*(),.?":{}|<>±/]');
    final regName = RegExp(r"^\s*([a-zA-Zء-ي]{1,}([\.,] |[-']| ))+[a-zA-Zء-ي]+\.?\s*$");

    if (null == value || value.isEmpty) {
      return "Full name cannot be empty";
    }

    if (value.startsWith(" ")) {
      return "Please remove the space from firstname";
    }

    if (value.endsWith(" ")) {
      return "Please remove the space from lastname";
    }

    var spaces = value.split(" ").toList();
    if (spaces.length > 2) {
      return "Full name is invalid";
    }

    if (regSpecial.hasMatch(value)) {
      return "Full name is invalid";
    }

    if (!regName.hasMatch(value)) {
      return "Full name is invalid";
    }

    if (regNum.hasMatch(value)) {
      return "Full name is invalid";
    }

    return null;
  }

  static String? validateEmail(String? s) {
    final regNum = RegExp(r"[0-9]");
    final regSpecial = RegExp(r'[!@#$%^&*(),.?":{}|<>±/]');

    if (null == s || s.isEmpty) {
      return 'Email cannot be empty';
    }

    if (!s.isEmail()) {
      return 'Email is invalid';
    }

    if (s.contains(" ")) {
      return 'Email is invalid';
    }

    if (s.endsWith(regNum.pattern)) {
      return 'Email is invalid';
    }

    if (s.endsWith(regSpecial.pattern)) {
      return 'Email is invalid';
    }

    return null;
  }
}
