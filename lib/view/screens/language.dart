import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../core/localization/change_local.dart';
import '../widgets/language/custom_button_lan.dart';
import 'onboarding.dart';

class Language extends GetView<LocalController> {
  const Language({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "1".tr,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            CustomButtonLan(
                textButton: 'Ar',
                onPressed: () {
                  controller.changelan("ar");
                  Get.off(() => const OnBoarding());
                }),
            CustomButtonLan(
                textButton: "En",
                onPressed: () {
                  controller.changelan("en");
                  Get.off(() => const OnBoarding());
                }),
          ],
        ),
      ),
    );
  }
}
