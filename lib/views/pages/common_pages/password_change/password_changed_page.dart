import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_task_management/constants/size_config.dart';
import 'package:todo_task_management/utils/colors.dart';
import 'package:todo_task_management/utils/images.dart';
import 'package:todo_task_management/views/pages/root/root_page.dart';
import 'package:todo_task_management/views/widgets/primary_button.dart';

class PasswordChangedPage extends StatelessWidget {
  const PasswordChangedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: const Icon(Icons.arrow_back),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: SizedBox.expand(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(success),
            SizedBox(height: 2 * SizeConfig.heightMultiplier),
            Text(
              'Successful!',
              style: Theme.of(context).textTheme.headline5!.copyWith(
                    color: Colors.black87,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            SizedBox(height: 2 * SizeConfig.heightMultiplier),
            Text(
              'You have successfully changed our password. Please use your new password to login!',
              style: Theme.of(context).textTheme.subtitle1!.copyWith(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                  ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 7 * SizeConfig.heightMultiplier,
            ),
            PrimaryButton(
                text: 'Continue',
                onTap: () {
                  Get.to(() => RootPage());
                },
                bgColor: primaryColor,
                textColor: Colors.white)
          ],
        ),
      ),
    );
  }
}
