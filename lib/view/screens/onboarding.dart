import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/auth/onboaarding_controller.dart';
import '../widgets/onboarding/custom_button.dart';
import '../widgets/onboarding/custom_slider.dart';
import '../widgets/onboarding/dot_controller.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(OnBoardingControllerImp());
    return const Scaffold(
        body: Column(
          children: [
            Expanded(
              flex: 3,
              child: CustomSliderOnboarding(),
            ),
            Expanded(
                flex: 1,
                child: Column(
                  children: [
                    CustomDotController(),
                    Spacer(),
                    CostomButtonOnBoarding(),
                  ],
                )),
          ],
        ));
  }
}
