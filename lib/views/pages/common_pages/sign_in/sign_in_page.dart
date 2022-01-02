import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_task_management/constants/size_config.dart';
import 'package:todo_task_management/utils/colors.dart';
import 'package:todo_task_management/views/pages/common_pages/recover_mail/recover_mail_page.dart';
import 'package:todo_task_management/views/pages/root/root_page.dart';
import 'package:todo_task_management/views/widgets/custom_text_field.dart';
import 'package:todo_task_management/views/widgets/primary_button.dart';

class SignInPage extends StatelessWidget {
  SignInPage({Key? key}) : super(key: key);

  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: Container(
        height: 100 * SizeConfig.heightMultiplier,
        width: 100 * SizeConfig.widthMultiplier,
        margin: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 2 * SizeConfig.heightMultiplier),
            Text(
              'Welcome Back!',
              style: Theme.of(context).textTheme.headline5!.copyWith(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            Text(
              'Sign in to continue...',
              style: Theme.of(context).textTheme.subtitle1!.copyWith(
                    color: Colors.grey,
                    fontWeight: FontWeight.w400,
                  ),
            ),
            CustomField(
              controller: usernameController,
              textinputType: TextInputType.name,
              hintText: 'JohnDoe',
              title: 'User Name',
            ),
            CustomField(
              controller: passwordController,
              textinputType: TextInputType.name,
              hintText: 'Enter your password here',
              title: 'Password',
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {
                    Get.to(() => RecoverMailPage());
                  },
                  child: Text('Fotgot Password?',
                      style: Theme.of(context)
                          .textTheme
                          .subtitle2!
                          .copyWith(color: Colors.black)),
                )
              ],
            ),
            Expanded(
              child: Center(
                child: PrimaryButton(
                  bgColor: primaryColor,
                  onTap: () {
                    Get.to(() => RootPage());
                  },
                  text: 'Log In',
                  isShadow: false,
                  textColor: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
