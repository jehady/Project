import 'package:e232/view/screens/auth/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../core/serveses/serveses.dart';
import '../../data/data_sorse/static/static.dart';

abstract class OnBoardingController extends GetxController {
  Neext();
  onPageChange(int index);
}

class OnBoardingControllerImp extends OnBoardingController {
  late PageController pageController;
  int currentpage = 0;
  MyServeses myServeses = Get.find();

  @override
  // ignore: non_constant_identifier_names
  Neext() {
    currentpage++;
    if (currentpage > onBoarderList.length - 1) {
      myServeses.sharedPreferences.setString("boarding", "1");
      Get.off(const Login());
    } else {
      pageController.animateToPage(currentpage,
          duration: const Duration(microseconds: 900), curve: Curves.easeInOut);
    }
  }

  @override
  onPageChange(int index) {
    currentpage = index;
    update();
  }

  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }
}
