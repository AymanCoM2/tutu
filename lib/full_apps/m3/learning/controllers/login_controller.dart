import './rning/views/forgot_password_screen.dart';
import './rning/views/full_app.dart';
import './rning/views/register_screen.dart';
import './_string_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LogInController extends GetxController {
  int selectedRole = 1;
  late TextEditingController emailTE, passwordTE;
  GlobalKey<FormState> formKey = GlobalKey();

  LogInController() {
    emailTE = TextEditingController(text: 'flutkit@coderthemes.com');
    passwordTE = TextEditingController(text: 'password');
  }

  String? validateEmail(String? text) {
    if (text == null || text.isEmpty) {
      return "Please enter email";
    } else if (!MyStringUtils.isEmail(text)) {
      return "Please enter valid email";
    }
    return null;
  }

  String? validatePassword(String? text) {
    if (text == null || text.isEmpty) {
      return "Please enter password";
    } else if (!MyStringUtils.validateStringRange(
      text,
    )) {
      return "Password length must between 8 and 20";
    }
    return null;
  }

  void select(int select) {
    selectedRole = select;
    update();
  }

  void goToForgotPasswordScreen() {
    Get.off(ForgotPasswordScreen());
    // Navigator.of(context, rootNavigator: true).pushReplacement(
    //   MaterialPageRoute(
    //     builder: (context) => ForgotPasswordScreen(),
    //   ),
    // );
  }

  void login() {
    if (formKey.currentState!.validate()) {
      Get.to(FullApp());
      // Navigator.of(context, rootNavigator: true).push(
      //   MaterialPageRoute(
      //     builder: (context) => FullApp(),
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
