import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../controller/auth/succes_reset_password_controller.dart';
import '../../../../core/constant/color.dart';
import '../../../widgets/auth/custom_buttonauth.dart';
import '../login.dart';

class SuccessResrtPassword extends StatelessWidget {
  const SuccessResrtPassword({super.key});

  @override
  Widget build(BuildContext context) {
    SuccessResetPasswordController controller =
    Get.put(SuccessResetPasswordControllerImp());
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
              Text(
                "44".tr,
                style: const TextStyle(fontSize: 20),
              ).paddingOnly(bottom: 20),
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
