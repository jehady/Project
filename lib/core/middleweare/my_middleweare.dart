import 'package:e232/core/serveses/serveses.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyMedddlWeare extends GetMiddleware {
  @override
  int? get priority => 1;
  MyServeses myServeses = Get.find();
  @override
  RouteSettings? redirect(String? route) {
    if (myServeses.sharedPreferences.getString("boarding") == "1") {
      return const RouteSettings(name: "/login");
    }
    return null;
  }
}
