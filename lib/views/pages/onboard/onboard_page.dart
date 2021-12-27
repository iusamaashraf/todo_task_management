import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:todo_task_management/constants/size_config.dart';
import 'package:todo_task_management/controllers/onoboard_controller.dart';

class OnboardPage extends StatelessWidget {
  OnboardPage({Key? key}) : super(key: key);

  final controller = OnboardController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SizedBox.expand(
            child: Stack(
          children: [
            PageView.builder(
              onPageChanged: controller.selectedPageIndex,
              itemCount: controller.onboardingPage.length,
              itemBuilder: (_, index) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(controller.onboardingPage[index].imageAsset),
                    Text(controller.onboardingPage[index].title,
                        style: Theme.of(context)
                            .textTheme
                            .headline6!
                            .copyWith(color: Colors.black)),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        controller.onboardingPage[index].description,
                        style: Theme.of(context)
                            .textTheme
                            .subtitle1!
                            .copyWith(color: Colors.black),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                );
              },
            ),
            Row(
              children: const [
                // List.generate(
                //   controller.onboardingPage.length,
                //   (index) {
                //     return const Container(
                //       height: 12,
                //       width: 12,
                //       color: Colors.red,
                //     );
                //   },
                // ),
              ],
            ),
          ],
        )),
      ),
    );
  }
}
