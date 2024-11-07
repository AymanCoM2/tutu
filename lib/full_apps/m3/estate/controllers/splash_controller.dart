import './ate/views/login_screen.dart';
import './ate/views/search_screen.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  void goToSearchScreen() {
    Get.to(SearchScreen());
    // Navigator.of(context, rootNavigator: true).push(
    //   MaterialPageRoute(builder: (context) => SearchScreen()),
    // );
  }

  void goToLogin() {
    Get.to(LoginScreen());
    // Navigator.of(context, rootNavigator: true).push(
    //   MaterialPageRoute(builder: (context) => LoginScreen()),
    // );
  }
}
