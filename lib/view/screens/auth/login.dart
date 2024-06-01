import 'package:e232/controller/auth/sign_up_controller.dart';
import 'package:e232/view/screens/auth/signup.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/auth/login_controller.dart';
import '../../../core/constant/color.dart';
import '../../../core/functions/valid_input.dart';
import '../../widgets/auth/custom_buttonauth.dart';
import '../../widgets/auth/custom_textTitleauth.dart';
import '../../widgets/auth/custom_textformauth.dart';
import 'forget password/ForgetPaddowrd.dart';

class Login extends GetView<LoginControllerAuth> {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    LoginControllerAuth controller = Get.put(LoginControllerAuth());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.0,
        title: Text(
          "9".tr,
          style: const TextStyle(
              fontSize: 22, fontWeight: FontWeight.bold, color: AppColor.grey),
        ),
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
        child: Form(
          key: controller.formstate,
          child: ListView(
            children: [
              const SizedBox(
                height: 20,
              ),
              CustomTextTitleAuth(
                title: '10'.tr,
                textStyle:
                    const TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              CustomTextTitleAuth(
                title: '11'.tr,
                textStyle: const TextStyle(
                    fontSize: 18,
                    //fontWeight: FontWeight.bold,
                    color: AppColor.grey),
              ),
              const SizedBox(
                height: 70,
              ),
              TextFormAuth(
                validator: (val) {
                  return validInput(val!, 8, 50, "12".tr);
                },
                myController: controller.email,
                hintText: '12'.tr,
                text: '13'.tr,
                icon: Icons.email_outlined,
              ),
              const SizedBox(
                height: 20,
              ),
              GetBuilder<LoginControllerAuth>(
                builder: (controller) => TextFormAuth(
                  onTapicon: () {
                    controller.showornot();
                  },
                  obsecure: controller.obsecuetext,
                  validator: (val) {
                    return validInput(val!, 5, 20, "14".tr);
                  },
                  myController: controller.passowrd,
                  hintText: '14'.tr,
                  text: '15'.tr,
                  icon: Icons.lock_outline_rounded,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              GestureDetector(
                child: Text(
                  "16".tr,
                  textAlign: TextAlign.end,
                ),
                onTap: () {
                  Get.to(() => const ForgetPassowrd());
                },
              ),
              const SizedBox(
                height: 5,
              ),
              CustomButtonAuth(
                text: '17'.tr,
                onPressed: () {
                  // controller.login();
                  SigninControllerAuth().loginser(
                      controller.email.text as String,
                      controller.passowrd.text as String,
                      controller.passowrd.text as String);
                },
              ).paddingOnly(bottom: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("18".tr).paddingOnly(right: 20),
                  GestureDetector(
                    child: Text(
                      "19".tr,
                      style: const TextStyle(color: AppColor.primarycolor),
                    ),
                    onTap: () {
                      Get.offAll(() => const SignUp());
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
