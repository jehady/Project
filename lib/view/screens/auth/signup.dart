import 'package:e232/controller/auth/sign_up_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/auth/sign_up_controller.dart';
import '../../../core/constant/color.dart';
import '../../../core/functions/valid_input.dart';
import '../../widgets/auth/custom_buttonauth.dart';
import '../../widgets/auth/custom_textTitleauth.dart';
import '../../widgets/auth/custom_textformauth.dart';
import 'login.dart';

class SignUp extends GetView<SigninControllerAuth> {
  const SignUp({super.key});
  @override
  Widget build(BuildContext context) {
    SigninControllerAuth controller = Get.put(SigninControllerAuth());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0.0,
        title: Text(
          "20".tr,
          style: const TextStyle(
              fontSize: 22, fontWeight: FontWeight.bold, color: AppColor.grey),
        ),
      ),
      body: GetBuilder<SigninControllerAuth>(
        builder: (controller) => Container(
          color: Colors.white,
          margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
          child: Form(
            key: controller.formstate,
            child: ListView(
              children: [
                const SizedBox(
                  height: 20,
                ),
                CustomTextTitleAuth(
                  title: '21'.tr,
                  textStyle: const TextStyle(
                      fontSize: 40, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomTextTitleAuth(
                  title: '22'.tr,
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
                    return validInput(val!, 2, 20, "23".tr);
                  },
                  myController: controller.name,
                  hintText: '23'.tr,
                  text: '24'.tr,
                  icon: Icons.person_2_outlined,
                ),
                Row(
                  children: [
                    Expanded(child: Text("59".tr)),
                    Checkbox(
                      value: controller.isStudent,
                      onChanged: controller.onChangedS,
                    ).paddingOnly(right: 80),
                    Expanded(child: Text("60".tr)),
                    Checkbox(
                      value: controller.isTeacher,
                      onChanged: controller.onChangedT,
                    ),
                  ],
                ),
                if (controller.isTeacher)
                  TextFormAuth(
                    validator: (val) {
                      return validInput(val!, 5, 50, "25".tr);
                    },
                    myController: controller.teacherInput,
                    hintText: '56'.tr,
                    text: '57'.tr,
                    icon: Icons.person_outline,
                  ).paddingOnly(bottom: 20, top: 20),
                TextFormAuth(
                  validator: (val) {
                    return validInput(val!, 5, 50, "25".tr);
                  },
                  myController: controller.email,
                  hintText: '25'.tr,
                  text: '26'.tr,
                  icon: Icons.email_outlined,
                ).paddingOnly(bottom: 20),
                TextFormAuth(
                  validator: (val) {
                    return validInput(val!, 9, 11, "27".tr);
                  },
                  myController: controller.phone,
                  hintText: '27'.tr,
                  text: '28'.tr,
                  icon: Icons.phone_android_outlined,
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormAuth(
                  //********************
                  onTapicon: () {
                    controller.showornot1();
                  },
                  obsecure: controller.obsecuetext1,
                  validator: (val) {
                    return validInput(val!, 5, 20, "29".tr);
                  },
                  myController: controller.passowrd,
                  hintText: '29'.tr,
                  text: '30'.tr,
                  icon: Icons.remove_red_eye_outlined,
                ).paddingOnly(bottom: 20),
                TextFormAuth(
                  //****
                  onTapicon: () {
                    controller.showornot2();
                  },
                  obsecure: controller.obsecuetext2,
                  validator: (val) {
                    return validInput(val!, 5, 20, "29".tr);
                  },
                  myController: controller.passowrd,
                  hintText: '29'.tr,
                  text: '58'.tr,
                  icon: Icons.remove_red_eye_outlined,
                ),
                const SizedBox(
                  height: 5,
                ),
                CustomButtonAuth(
                  text: '31'.tr,
                  onPressed: () {
                    String userType =
                        controller.isStudent == true ? 'Student' : 'Teacher';

                    SigninControllerAuth().registerUser(
                      controller.name.text as String,
                      controller.email.text as String,
                      controller.phone.text as String,
                      controller.passowrd.text as String,
                      controller.passowrd.text as String,
                      userType,
                    );
                  },
                ).paddingOnly(bottom: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("32".tr).paddingOnly(right: 20),
                    GestureDetector(
                      child: Text(
                        "33".tr,
                        style: const TextStyle(color: AppColor.primarycolor),
                      ),
                      onTap: () {
                        Get.offAll(() => const Login());
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
