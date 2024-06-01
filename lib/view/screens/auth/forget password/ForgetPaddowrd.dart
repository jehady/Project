import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../controller/auth/ForgetPassowrd_controller.dart';
import '../../../../core/constant/color.dart';
import '../../../../core/functions/valid_input.dart';
import '../../../widgets/auth/custom_buttonauth.dart';
import '../../../widgets/auth/custom_textTitleauth.dart';
import '../../../widgets/auth/custom_textformauth.dart';

class ForgetPassowrd extends GetView<ForgetPassowddControllerAuth> {
  const ForgetPassowrd({super.key});

  @override
  Widget build(BuildContext context) {
    ForgetPassowddControllerAuth controller =
    Get.put(ForgetPassowddControllerAuth());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.0,
        title: Text(
          "34".tr,
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
                title: '35'.tr,
                textStyle:
                const TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              CustomTextTitleAuth(
                title: '36'.tr,
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
                  return validInput(val!, 5, 30, "37".tr);
                },
                myController: controller.email,
                hintText: '37'.tr,
                text: '38'.tr,
                icon: Icons.email_outlined,
              ).paddingOnly(bottom: 20),
              CustomButtonAuth(
                text: '39'.tr,
                onPressed: () {
                  controller.checkEmail();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
