import './emade/views/full_app.dart';
import './emade/views/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgotPasswordController extends GetxController {
  late TextEditingController emailController = TextEditingController();

  void forgotPassword() {
    Get.off(FullApp());
    // Navigator.of(context, rootNavigator: true).pushReplacement(
    //   MaterialPageRoute(builder: (context) => FullApp()),
    // );
  }

  void goToRegister() {
    Get.off(RegisterScreen());
    // Navigator.of(context, rootNavigator: true).pushReplacement(
    //   MaterialPageRoute(builder: (context) => RegisterScreen()),
    // );
  }
}
