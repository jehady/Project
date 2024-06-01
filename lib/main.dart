import 'package:e232/componet/QizTeacher.dart';
import 'package:e232/core/localization/change_local.dart';
import 'package:e232/core/localization/translation.dart';
import 'package:e232/core/serveses/serveses.dart';
import 'package:e232/view/screens/auth/login.dart';
import 'package:e232/view/screens/auth/signup.dart';

import 'package:flutter/material.dart';

import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServeses();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    LocalController controller = Get.put(LocalController());
    return GetMaterialApp(
      translations: MyTranslation(),
      home: const Login(),
      locale: controller.language,
      debugShowCheckedModeBanner: false,
      //getPages: routes,
    );
  }
}
