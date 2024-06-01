import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/auth/onboaarding_controller.dart';
import '../../../core/constant/color.dart';
import '../../../data/data_sorse/static/static.dart';

class CustomDotController extends StatelessWidget {
  const CustomDotController({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnBoardingControllerImp>(
        builder: (controller) => Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...List.generate(
                onBoarderList.length,
                    (index) => AnimatedContainer(
                  margin: const EdgeInsets.only(right: 5),
                  //alignment: Alignment.bottomCenter,
                  duration: const Duration(milliseconds: 900),
                  width: controller.currentpage == index ? 20 : 5,
                  height: 6,
                  decoration: BoxDecoration(
                    color: AppColor.grey,
                    borderRadius: BorderRadius.circular(10),
                  ),
                )),
          ],
        ));
  }
}
