import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/auth/onboaarding_controller.dart';
import '../../../core/constant/color.dart';

class CostomButtonOnBoarding extends GetView<OnBoardingControllerImp> {
  const CostomButtonOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 30),
      height: 40,
      child: MaterialButton(
        padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 4),
        textColor: Colors.white,
        onPressed: () {
          controller.Neext();
        },
        color: AppColor.primarycolor,
        child: Text("8".tr),
      ),
    );
  }
}
