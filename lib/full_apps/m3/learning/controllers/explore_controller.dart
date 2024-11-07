import './rning/models/course.dart';
import './rning/models/mentor.dart';
import 'package:get/get.dart';

class ExploreController extends GetxController {
  bool showLoading = true, uiLoading = true;
  List<Mentor>? mentors;
  List<String> selectedCourses = [];
  List<String> courses = [
    'Science',
    'Language',
    'Design',
    'Programming',
    'Biology',
    'Mathematics',
    'Coding',
    'History',
  ];

  List<Course>? courseList;

  @override
  void onInit() {
    super.onInit();
    fetchData();
  }

  void onTap(String course) {
    if (!selectedCourses.contains(course)) {
      selectedCourses.add(course);
    } else {
      selectedCourses.remove(course);
    }
    update();
  }

  fetchData() async {
    courseList = Course.categoryList();
    mentors = await Mentor.getDummyList();
    await Future.delayed(Duration(seconds: 1));
    showLoading = false;
    uiLoading = false;
    update();
  }
}
