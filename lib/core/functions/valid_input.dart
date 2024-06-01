
import 'package:get/get.dart';
String? validInput(String val, int min, int max, String type) {
  // Check if the input is a username
  if (type == "name".tr) { // Assuming "name" is the key for the username field in your translations
    if (!GetUtils.isUsername(val)) {
      return "username_invalid".tr; // Assuming "username_invalid" is the key for the invalid username message in your translations
    }
  }

  // Check if the input is an email
  if (type == "email".tr) { // Assuming "email" is the key for the email field in your translations
    if (!GetUtils.isEmail(val)) {
      return "email_invalid".tr; // Assuming "email_invalid" is the key for the invalid email message in your translations
    }
  }

  // Check if the input is a text
  if (type == "text".tr) { // Assuming "text" is the key for the text field in your translations
    if (!GetUtils.isTxt(val)) { // Note: 'isTxt' is not a standard GetUtils method. You might need a custom implementation.
      return "text_invalid".tr; // Assuming "text_invalid" is the key for the invalid text message in your translations
    }
  }

  // Check if the input is a password
  if (type == "password".tr) { // Assuming "password" is the key for the password field in your translations
    if (!GetUtils.isPassport(val)) { // Note: Use 'isPassword' if you want to validate a password, not 'isUsername'
      return "password_invalid".tr; // Assuming "password_invalid" is the key for the invalid password message in your translations
    }
  }

  // Check if the input is a phone number
  if (type == "phone".tr) { // Assuming "phone" is the key for the phone field in your translations
    if (!GetUtils.isPhoneNumber(val)) {
      return "phone_invalid".tr; // Assuming "phone_invalid" is the key for the invalid phone message in your translations
    }
  }

  // Check if the input's length is less than the minimum allowed
  if (val.length < min) {
    return "length_too_short".tr; // Assuming "length_too_short" is the key for the too short message in your translations
  }

  // Check if the input's length is more than the maximum allowed
  if (val.length > max) {
    return "length_too_long".tr; // Assuming "length_too_long" is the key for the too long message in your translations
  }

  // Check if the input is empty
  if (val.isEmpty) {
    return "field_required".tr; // Assuming "field_required" is the key for the field required message in your translations
  }

  // If all validations pass, return null (no error)
  return null;
}
