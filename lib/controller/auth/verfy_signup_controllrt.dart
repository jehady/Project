import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../view/screens/auth/successes_Sign_up.dart';

abstract class VerifySignUpController extends GetxController {
  checkCode();
}

class VerifySignUpControllerImp extends VerifySignUpController {
  GlobalKey<FormState> formstate = GlobalKey<FormState>();

  @override
  checkCode() {
    var formdata = formstate.currentState;
    if (formdata!.validate()) {
      Get.off(() =>const SuccessSignUp());
      Get.delete<VerifySignUpControllerImp>();
    } else {
      print("Not Valid");
    }
  }

  @override
  void onInit() {
    super.onInit();
  }
}
