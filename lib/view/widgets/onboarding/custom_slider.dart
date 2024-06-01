import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/auth/onboaarding_controller.dart';
import '../../../data/data_sorse/static/static.dart';

class CustomSliderOnboarding extends GetView<OnBoardingControllerImp> {
  const CustomSliderOnboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(

        controller: controller.pageController,
        onPageChanged: (val) => controller.onPageChange(val),
        itemCount: onBoarderList.length,
        itemBuilder: (context, i) => Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column(
            children: [
              Text(
                onBoarderList[i].title!,
                style: const TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 20),
              ),
              const SizedBox(
                height: 80,
              ),
              Image.asset(
                onBoarderList[i].image!,
                height: 250,
                width: 200,
                fit: BoxFit.fill,
              ),
              const SizedBox(
                height: 80,
              ),
              Container(
                color: Colors.white,
                width: double.infinity,
                alignment: Alignment.center,
                child: Text(
                  onBoarderList[i].body!,
                  style: const TextStyle(fontSize: 16),
                ),
              ),
            ],
          ),
        ));
  }
}
