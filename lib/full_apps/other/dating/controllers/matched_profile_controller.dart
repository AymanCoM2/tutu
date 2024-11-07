import './dating/models/profile.dart';
import './dating/views/home_screen.dart';
import './dating/views/single_chat_screen.dart';
import 'package:get/get.dart';

class DatingMatchedProfileController extends GetxController {
  Profile profile;

  DatingMatchedProfileController(this.profile);

  bool showLoading = true, uiLoading = true;

  @override
  void onInit() {
    // save = false;
    fetchData();
    super.onInit();
  }

  void fetchData() async {
    showLoading = false;
    uiLoading = false;
    update();
  }

  void goToHomeScreen() async {
    Get.off(DatingHomeScreen());
    // Navigator.pushReplacement(
    //     context, MaterialPageRoute(builder: (context) => DatingHomeScreen()));
  }

  void goToChatScreen() async {
    Get.off(DatingSingleChatScreen(profile));
    // Navigator.pushReplacement(
    //     context,
    //     MaterialPageRoute(
    //         builder: (context) => DatingSingleChatScreen(profile)));
  }
}
