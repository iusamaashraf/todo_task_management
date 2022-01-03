// ignore_for_file: unrelated_type_equality_checks

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_task_management/constants/size_config.dart';
// import 'package:get/get.dart';
// import 'package:todo_task_management/constants/size_config.dart';
import 'package:todo_task_management/controllers/onoboard_controller.dart';
import 'package:todo_task_management/utils/images.dart';
import 'package:todo_task_management/views/pages/common_pages/sign_in/sign_in_page.dart';
import 'package:todo_task_management/views/widgets/primary_button.dart';

class OnboardPage extends StatelessWidget {
  OnboardPage({Key key}) : super(key: key);

  final controller = OnboardController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SizedBox.expand(
            child: Stack(
          alignment: Alignment.center,
          children: [
            Column(
              children: [
                SizedBox(
                  height: 50 * SizeConfig.heightMultiplier,
                  child: PageView.builder(
                    onPageChanged: controller.selectedPageIndex,
                    itemCount: controller.bordingPage.length,
                    itemBuilder: (_, index) {
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(controller.bordingPage[index].imageAsset),
                          const SizedBox(height: 50),
                          Text(controller.bordingPage[index].title,
                              style: Theme.of(context)
                                  .textTheme
                                  .headline6
                                  .copyWith(color: Colors.black)),
                          const SizedBox(height: 20),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Text(
                              controller.bordingPage[index].description,
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle1
                                  .copyWith(color: Colors.black),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    controller.bordingPage.length,
                    (index) => Obx(() {
                      return AnimatedContainer(
                        duration: const Duration(milliseconds: 300),
                        margin: const EdgeInsets.all(4),
                        width: controller.selectedPageIndex == index ? 20 : 8,
                        height: 8,
                        decoration: BoxDecoration(
                            color: controller.selectedPageIndex.value == index
                                ? Colors.black
                                : Colors.grey,
                            borderRadius: BorderRadius.circular(
                                controller.selectedPageIndex == index
                                    ? 4
                                    : 10)),
                      );
                    }),
                  ),
                ),
              ],
            ),
            Positioned(
              bottom: 0,
              child: Image.asset(bottomImage),
            ),
            Positioned(
              bottom: 15 * SizeConfig.heightMultiplier,
              child: PrimaryButton(
                bgColor: Colors.white,
                onTap: () {
                  Get.to(() => SignInPage());
                },
                text: 'Get Started',
                textColor: Colors.black87,
                isShadow: true,
              ),
            ),
            Positioned(
              bottom: 7 * SizeConfig.heightMultiplier,
              child: TextButton(
                onPressed: () {
                  Get.to(() => SignInPage());
                },
                child: Text('Login',
                    style: Theme.of(context)
                        .textTheme
                        .subtitle1
                        .copyWith(color: Colors.white)),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
