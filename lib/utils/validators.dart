import 'package:get/get.dart';
String? validateName(String? value) {
  if (value == null || value.isEmpty) {
    return 'Invalid input entered';
  }
  return null;
}
String? validateEmail(String? value) {
  if (value == null || value.isEmpty) {
    return 'Invalid input entered';
  }
  if(!GetUtils.isEmail(value)){
    return 'Invalid email entered';
  }
  return null;
}

String? validatePassword(String? value) {
  if (value == null || value.isEmpty) {
    return 'Invalid input entered';
  }
  if (value.length < 4) {
    return 'Password must be at least 4 characters';
  }
  return null;
}
