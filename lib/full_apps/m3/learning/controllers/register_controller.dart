import './rning/views/forgot_password_screen.dart';
import './rning/views/full_app.dart';
import './rning/views/login_screen.dart';
import './_string_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController {
  int selectedRole = 1;

  late TextEditingController nameTE, emailTE, passwordTE;
  GlobalKey<FormState> formKey = GlobalKey();

  RegisterController() {
    nameTE = TextEditingController();
    emailTE = TextEditingController();
    passwordTE = TextEditingController();
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

  String? validateName(String? text) {
    if (text == null || text.isEmpty) {
      return "Please enter name";
    } else if (!MyStringUtils.validateStringRange(text, 4, 20)) {
      return "Password length must between 4 and 20";
    }
    return null;
  }

  void select(int select) {
    selectedRole = select;
    update();
  }

  void goToForgotPasswordScreen() {
    Get.offAll(ForgotPasswordScreen());
    // Navigator.of(context, rootNavigator: true).pushReplacement(
    //   MaterialPageRoute(
    //     builder: (context) => ForgotPasswordScreen(),
    //   ),
    // );
  }

  void register() {
    if (formKey.currentState!.validate()) {
      Get.to(FullApp());
      // Navigator.of(context, rootNavigator: true).push(
      //   MaterialPageRoute(
      //     builder: (context) => FullApp(),
      //   ),
      // );
    }
  }

  void goToLogInScreen() {
    Get.offAll(LearningLogInScreen());
    // Navigator.of(context, rootNavigator: true).pushReplacement(
    //   MaterialPageRoute(
    //     builder: (context) => LogInScreen(),
    //   ),
    // );
  }
}
