import 'package:get/get.dart';
import 'package:todo_task_management/models/onboard_model.dart';

class OnboardController extends GetxController {
  // selectedIndex is used for tabs which use in my task class
  RxInt selectedIndex = 0.obs;
  // bottomNavselectedPageIndex is used for bottom nav bar
  RxInt bottomNavselectedPageIndex = 0.obs;
  //selectedPageIndex is used for onboarding
  var selectedPageIndex = 0.obs;
  RxBool rememberMe = false.obs;
  var bordingPage = onboardingPage;
}
