import './ing/models/profile.dart';
import './ing/views/home_screen.dart';
import './ing/views/single_chat_screen.dart';
import 'package:get/get.dart';

class MatchedProfileController extends GetxController {
  Profile profile;

  MatchedProfileController(this.profile);

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
    Get.off(HomeScreen());
    // Navigator.pushReplacement(
    //     context, MaterialPageRoute(builder: (context) => HomeScreen()));
  }

  void goToChatScreen() async {
    Get.off(SingleChatScreen(profile));
    // Navigator.pushReplacement(context,
    //     MaterialPageRoute(builder: (context) => SingleChatScreen(profile)));  }
  }
}
