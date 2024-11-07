import './ate/views/full_app_screen.dart';
import './ate/views/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgotPasswordController extends GetxController {
  late TextEditingController emailController = TextEditingController();

  void goToHome() {
    Get.off(FullAppScreen());
    // Navigator.of(context, rootNavigator: true).pushReplacement(
    //   MaterialPageRoute(builder: (context) => FullAppScreen()),
    // );
  }

  void goToRegisterScreen() {
    Get.off(RegisterScreen());
    // Navigator.of(context, rootNavigator: true).pushReplacement(
    //   MaterialPageRoute(builder: (context) => RegisterScreen()),
    // );
  }
}
