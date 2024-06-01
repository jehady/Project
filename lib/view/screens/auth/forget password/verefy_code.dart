import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';

import '../../../../controller/auth/sign_up_controller.dart';
import '../../../../controller/auth/verifi_code_controller.dart';
import '../../../../core/constant/color.dart';
import '../../../widgets/auth/custom_textTitleauth.dart';
import '../successes_Sign_up.dart';

class VerfiyCode extends GetView<SigninControllerAuth> {
  const VerfiyCode({super.key});

  @override
  Widget build(BuildContext context) {
    VerifyCodeControllerImp controller = Get.put(VerifyCodeControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.0,
        title: Text(
          "40".tr,
          style: const TextStyle(
              fontSize: 22, fontWeight: FontWeight.bold, color: AppColor.grey),
        ),
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
        child: ListView(
          children: [
            const SizedBox(
              height: 20,
            ),
            CustomTextTitleAuth(
              title: '41'.tr,
              textStyle:
              const TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            CustomTextTitleAuth(
              title: '42'.tr,
              textStyle: const TextStyle(
                  fontSize: 18,
                  //fontWeight: FontWeight.bold,
                  color: AppColor.grey),
            ),
            const SizedBox(
              height: 70,
            ),
            OtpTextField(
              fieldWidth: 50,
              borderRadius: BorderRadius.circular(20),
              numberOfFields: 5,
              borderColor: const Color(0xFF512DA8),
              showFieldAsBox: true,
              onCodeChanged: (String code) {},
              onSubmit: (String verificationCode) {
                Get.off(() => const SuccessSignUp());
              },
            ),
          ],
        ),
      ),
    );
  }
}
