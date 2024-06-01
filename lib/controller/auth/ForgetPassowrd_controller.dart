import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../../view/screens/auth/forget password/verefy_code.dart';
import 'login_controller.dart';

abstract class ForgetPassowddController extends GetxController {
  checkEmail();
}

class ForgetPassowddControllerAuth extends LoginController {
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  late TextEditingController email;

  checkEmail() {
    var formkey = formstate.currentState;
    if (formkey!.validate()) {
      Get.offAll(() => const VerfiyCode());
    } else {
      print("Not Valid");
    }
  }

  @override
  void onInit() {
    super.onInit();
    email = TextEditingController();
  }

  @override
  void dispose() {
    email.dispose();
    super.dispose();
  }

  @override
  login() {
    // TODO: implement login
    throw UnimplementedError();
  }
}
