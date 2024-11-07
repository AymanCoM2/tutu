import './rning/models/course.dart';
import './rning/models/module.dart';
import './rning/models/recent_course.dart';
import './rning/views/single_course_screen.dart';
import './rning/views/subscription_screen.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  bool showLoading = true, uiLoading = true;
  List<Course>? courses;
  List<Module>? modules;
  List<RecentCourse>? recentCourses;
  late Module selectedModule;

  @override
  void onInit() {
    super.onInit();
    fetchData();
  }

  void onChangeSingleModule(Module module) {
    selectedModule = module;
    update();
  }

  void goToSingleCourseScreen(RecentCourse recentCourse) {
    Get.to(SingleCourseScreen(recentCourse));
    // Navigator.of(context, rootNavigator: true).push(MaterialPageRoute(
    //     builder: (context) => SingleCourseScreen(recentCourse)));
  }

  void goToPricingScreen() {
    Get.to(SubscriptionScreen());
    // Navigator.of(context, rootNavigator: true)
    //     .push(MaterialPageRoute(builder: (context) => SubscriptionScreen()));
  }

  void fetchData() async {
    courses = Course.categoryList();
    recentCourses = await RecentCourse.getDummyList();
    modules = Module.moduleList();
    selectedModule = modules!.first;
    showLoading = false;
    uiLoading = false;
    update();
  }
}
