import 'package:todo_task_management/utils/images.dart';

class OnboardModel {
  final String imageAsset;
  final String title;
  final String description;

  OnboardModel({
    this.imageAsset,
    this.title,
    this.description,
  });
}

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
