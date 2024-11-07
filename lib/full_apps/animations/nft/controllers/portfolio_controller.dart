import './ions/nft/models/coin.dart';
import './ions/nft/nft_cache.dart';
import './ions/nft/views/single_coin_screen.dart';
import 'package:get/get.dart';

class PortfolioController extends GetxController {
  List<Coin> coins = [];

  @override
  void onInit() {
    fetchData();
    super.onInit();
  }

  void fetchData() async {
    coins = NFTCache.coins!;
    update();
  }

  void goToSingleCoinScreen(Coin coin) {
    Get.to(SingleCoinScreen(coin: coin));
    // Navigator.of(context, rootNavigator: true).push(
    //   MaterialPageRoute(
    //     builder: (context) => SingleCoinScreen(coin: coin),
    //   ),
    // );
  }
}
