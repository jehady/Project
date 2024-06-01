import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

abstract class ResetPassowddController extends GetxController {
  resrtPassword();
}

class ResrtPassowddControllerAuth extends ResetPassowddController {
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  late TextEditingController password;
  late TextEditingController rePassword;

  @override
  resrtPassword() {
    var formkey = formstate.currentState;
    if (formkey!.validate()) {
      print("Valid");
    } else {
      print("Not Valid");
    }
  }

  @override
  void onInit() {
    super.onInit();
    password = TextEditingController();
    rePassword = TextEditingController();
  }

  @override
  void dispose() {
    password.dispose();
    rePassword.dispose();
    super.dispose();
  }
}
