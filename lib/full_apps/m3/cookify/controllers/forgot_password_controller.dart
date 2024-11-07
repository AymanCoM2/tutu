import './kify/views/full_app.dart';
import './kify/views/register_screen.dart';
import './_string_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgotPasswordController extends GetxController {
  late TextEditingController emailTE;
  GlobalKey<FormState> formKey = GlobalKey();

  @override
  void onInit() {
    emailTE = TextEditingController(text: 'flutkit@coderthemes.com');
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

  void forgotPassword() {
    if (formKey.currentState!.validate()) {
      Get.off(FullApp());
      // Navigator.of(context, rootNavigator: true).pushReplacement(
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
