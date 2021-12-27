import 'package:get/get.dart';
import 'package:todo_task_management/models/onboard_model.dart';
import 'package:todo_task_management/utils/images.dart';

class OnboardController extends GetxController {
  List<OnboardModel> onboardingPage = [
    OnboardModel(
        imageAsset: (onboard1),
        title: 'Welcome to Aking',
        description: 'Welcome to Todo note taking app'),
    OnboardModel(
        imageAsset: (onboard2),
        title: 'Work Happens',
        description: 'Where you can write any task and manage them'),
    OnboardModel(
        imageAsset: (onboard3),
        title: 'Task and Assignments',
        description: 'Where you can add task and complete them'),
  ];
  var selectedPageIndex = 0.obs;
}
