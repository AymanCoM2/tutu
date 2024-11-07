import './ions/shopping_manager/views/register_screen.dart';
import './ions/shopping_manager/views/reset_password_screen.dart';
import './_string_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgotPasswordController extends GetxController {
  TextEditingController emailController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey();

  @override
  void onInit() {
    emailController = TextEditingController(text: 'flutkit@coderthemes.com');
    super.onInit();
  }

  String? validateEmail(String? text) {
    if (text == null || text.isEmpty) {
      return "Please enter email";
    } else if (!MyStringUtils.isEmail(text)) {
      return "Please enter valid email";
    }
    return null;
  }

  void goToRegisterScreen() {
    Get.off(RegisterScreen());
    // Navigator.of(context, rootNavigator: true).pushReplacement(
    //   MaterialPageRoute(
    //     builder: (context) => RegisterScreen(),
    //   ),
    // );
  }

  void forgotPassword() {
    if (formKey.currentState!.validate()) {
      Get.off(ResetPasswordScreen());
      // Navigator.of(context, rootNavigator: true).pushReplacement(
      //   MaterialPageRoute(
      //     builder: (context) => ResetPasswordScreen(),
      //   ),
      // );
    }
  }
}
