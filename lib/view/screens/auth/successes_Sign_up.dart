import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/auth/success_signup_controller.dart';
import '../../../core/constant/color.dart';
import '../../widgets/auth/custom_buttonauth.dart';
import 'login.dart';

class SuccessSignUp extends StatelessWidget {
  const SuccessSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    SuccessSignUpController controller = Get.put(SuccessSignUpControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "43".tr,
          style: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Container(
          child: Column(
            children: [
              const Center(
                  child: Icon(
                    Icons.check_circle_outline,
                    size: 200,
                    color: AppColor.primarycolor,
                  )).paddingOnly(bottom: 20),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 60),
                child: Text(
                  "44".tr,
                  style: const TextStyle(fontSize: 20),
                ).paddingOnly(bottom: 20),
              ),
              CustomButtonAuth(
                text: "45".tr,
                onPressed: () {
                  Get.offAll(() => const Login());
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
