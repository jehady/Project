import 'dart:convert';

import 'package:e232/API/API.dart';
import 'package:e232/API/Model/userM.dart';
import 'package:e232/view/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import '../../view/screens/auth/forget password/veryfy_code_signup.dart';
import '../../view/screens/auth/successes_Sign_up.dart';

abstract class SigninController extends GetxController {
  signin();
}

class SigninControllerAuth extends SigninController {
  Future<void> registerUser(String username, String email, String phone,
      String password, String RePassword, String type) async {
    // URL لنقطة النهاية للتسجيل (API endpoint)
    var url = Uri.parse('http://127.0.0.1:8000/api/register');

    try {
      // إجراء طلب POST
      var response = await http.post(
        url,
        // تحويل البيانات إلى JSON
        body: {
          'full_name': username,
          'email': email,
          'phone': phone,
          'password': password,
          'password_confirmation': RePassword,
          'birthday': '2002-09-04',
          'address': 'dOAMA',
          ' type': type,
        },
        // تحديد نوع المحتوى كـ JSON
        headers: {
          'Accept': 'application/json',
        },
      );

      if (response.statusCode == 200) {
        // إذا كان الطلب ناجحاً، قم بمعالجة البيانات هنا
        var data = jsonDecode(response.body);
        print('User registered successfully: $data');
        Get.to(HomeScreen());
      } else {
        // إذا كان هناك خطأ في الطلب، قم بمعالجة الخطأ هنا
        print('Failed to register user: ${response.body}');
      }
    } catch (e) {
      // معالجة الأخطاء في الطلب
      print('Error occurred: $e');
    }
  }

  Future<void> loginser(
    String email,
    String password,
    String passwordConfirmation,
  ) async {
    var url = Uri.parse('http://127.0.0.1:8000/api/login');

    try {
      var response = await http.post(
        url,
        body: {
          'email': email,
          'password': password,
          'password_confirmation': passwordConfirmation,
        },
        headers: {
          'Accept': 'application/json',
        },
      );

      if (response.statusCode == 200) {
        var data = json.decode(response.body);
        User user = User.fromJsonResponse(response.body);
        print('User logged in successfully: $data');
        Get.to(HomeScreen());
        
      } else {
        print('Failed to log in: ${response.body}');
      }
    } catch (e) {
      print('Error occurred: $e');
      
    }
  
  }

  Future<void> logout(String token) async {
    var url = Uri.parse('http://127.0.0.1:8000/api/logout');

    try {
      var response = await http.post(
        url,
        headers: {
          'Accept': 'application/json',
          'Authorization': 'Bearer $token',
        },
      );

      if (response.statusCode == 200) {
        var data = json.decode(response.body);
        print('User logged out successfully: $data');
        // Handle navigation or any other post-logout actions
      } else {
        print('Failed to log out: ${response.body}');
      }
    } catch (e) {
      print('Error occurred: $e');
    }
  }

  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  late TextEditingController email;
  late TextEditingController passowrd;
  late TextEditingController name;
  late TextEditingController phone;
  late TextEditingController teacherInput; // Added for teacher input

  bool obsecuetext1 = true;
  bool obsecuetext2 = true;
  bool isStudent = false;
  bool isTeacher = false;

  showornot1() {
    obsecuetext1 = obsecuetext1 == true ? false : true;
    update();
  }

  showornot2() {
    obsecuetext2 = obsecuetext2 == true ? false : true;
    update();
  }

  @override
  signin() {
    var formdata = formstate.currentState;
    if (formdata!.validate()) {
      Get.off(() => const HomeScreen());
      Get.delete<SigninControllerAuth>();
    } else {
      print("Not Valid");
    }
  }

  @override
  void onInit() {
    super.onInit();
    email = TextEditingController();
    passowrd = TextEditingController();
    name = TextEditingController();
    phone = TextEditingController();
    teacherInput = TextEditingController(); // Initialize teacher input
  }

  @override
  void dispose() {
    email.dispose();
    passowrd.dispose();
    phone.dispose();
    name.dispose();
    teacherInput.dispose(); // Dispose teacher input
    super.dispose();
  }

  void onChangedT(bool? value) {
    isTeacher = value ?? false;
    if (isTeacher) {
      // If the user is a teacher, we assume they are not a student
      isStudent = false;
    }
    update();
  }

  void onChangedS(bool? value) {
    isStudent = value ?? false;
    if (isStudent) {
      // If the user is a student, we assume they are not a teacher
      isTeacher = false;
    }
    update();
  }
}
