import './rning/views/register_screen.dart';
import './rning/views/reset_password_screen.dart';
import './_string_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgotPasswordController extends GetxController {
  int selectedRole = 1;
  late TextEditingController emailTE;
  GlobalKey<FormState> formKey = GlobalKey();

  @override
  void onInit() {
    super.onInit();
    emailTE = TextEditingController(text: 'flutkit@coderthemes.com');
  }

  String? validateEmail(String? text) {
    if (text == null || text.isEmpty) {
      return "Please enter email";
    } else if (!MyStringUtils.isEmail(text)) {
      return "Please enter valid email";
    }
    return null;
  }

  void select(int select) {
    selectedRole = select;
    update();
  }

  void goToResetPasswordScreen() {
    if (formKey.currentState!.validate()) {
      Get.off(ResetPasswordScreen());
      // Navigator.of(context, rootNavigator: true).pushReplacement(
      //   MaterialPageRoute(
      //     builder: (context) => ResetPasswordScreen(),
      //   ),
      // );
    }
  }

  void goToRegisterScreen() {
    Get.off(RegisterScreen());
    // Navigator.of(context, rootNavigator: true).pushReplacement(
    //   MaterialPageRoute(
    //     builder: (context) => RegisterScreen(),
    //   ),
    // );
  }
}
