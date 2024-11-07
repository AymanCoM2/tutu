import './homemade/views/full_app.dart';
import './homemade/views/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController {
  late TextEditingController nameController = TextEditingController();
  late TextEditingController emailController = TextEditingController();
  late TextEditingController passwordController = TextEditingController();

  void register() {
    Get.to(FullApp());
    // Navigator.of(context, rootNavigator: true).push(
    //   MaterialPageRoute(builder: (context) => FullApp()),
    // );
  }

  void goToLogin() {
    Get.to(LogInScreen());
    // Navigator.of(context, rootNavigator: true).push(
    //   MaterialPageRoute(builder: (context) => LogInScreen()),
    // );
  }
}
