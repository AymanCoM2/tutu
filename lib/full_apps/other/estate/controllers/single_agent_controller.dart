import 'package:get/get.dart';

import './estate/models/agent.dart';
import './estate/models/chat.dart';
import './estate/models/house.dart';
import './estate/views/single_chat_screen.dart';

class EstateSingleAgentController extends GetxController {
  bool showLoading = true, uiLoading = true;

  List<House>? houses;
  late Agent agent;

  EstateSingleAgentController(this.agent);

  @override
  void onInit() {
    // super.save = false;
    fetchData();
    super.onInit();
  }

  void fetchData() async {
    await Future.delayed(Duration(seconds: 1));

    houses = House.houseList();

    showLoading = false;
    uiLoading = false;
    update();
  }

  void goToAgentChat() {
    Get.to(EstateSingleChatScreen(Chat.getOne()));
    // Navigator.of(context, rootNavigator: true).push(MaterialPageRoute(
    //     builder: (context) => EstateSingleChatScreen(Chat.getOne())));
  }
}
