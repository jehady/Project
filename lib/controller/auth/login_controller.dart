import 'package:e232/view/screens/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class LoginController extends GetxController {
  login();
}

class LoginControllerAuth extends LoginController {
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  late TextEditingController email;
  late TextEditingController passowrd;
  bool obsecuetext = true;

  showornot() {
    obsecuetext = obsecuetext == true ? false : true;
    update();
  }

  @override
  login() {
    var formdata = formstate.currentState;
    if (formdata!.validate()) {
      print("Valid");
      Get.off(() => HomeScreen()); //     بداية التطبيق
      Get.delete<LoginControllerAuth>();
    } else {
      print("Not Valid");
    }
  }

  @override
  void onInit() {
    super.onInit();
    email = TextEditingController();
    passowrd = TextEditingController();
  }

  @override
  void dispose() {
    email.dispose();
    passowrd.dispose();
    super.dispose();
  }
}
