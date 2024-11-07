import 'package:get/get.dart';

import './muvi/models/movie.dart';
import './muvi/views/single_movie_screen.dart';
import './muvi/views/subscription_screen.dart';

class HomeController extends GetxController {
  bool showLoading = true, uiLoading = true;
  List<Movie>? movies;

  @override
  void onInit() {
    fetchData();
    super.onInit();
  }

  void fetchData() async {
    movies = await Movie.getDummyList();
    await Future.delayed(Duration(seconds: 1));

    showLoading = false;
    uiLoading = false;
    update();
  }

  void goToSingleMovieScreen(Movie movie) {
    Get.to(SingleMovieScreen(movie));
    // Navigator.push(context,
    //     MaterialPageRoute(builder: (context) => SingleMovieScreen(movie)));
  }

  void goToSubscriptionScreen() {
    Get.to(SubscriptionScreen());
    // Navigator.push(
    //     context, MaterialPageRoute(builder: (context) => SubscriptionScreen()));
  }
}
