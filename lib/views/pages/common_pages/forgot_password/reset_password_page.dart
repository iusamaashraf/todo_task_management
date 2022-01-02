import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_task_management/constants/size_config.dart';
import 'package:todo_task_management/utils/colors.dart';
import 'package:todo_task_management/views/pages/common_pages/password_change/password_changed_page.dart';
import 'package:todo_task_management/views/widgets/custom_text_field.dart';
import 'package:todo_task_management/views/widgets/primary_button.dart';

class ResetPasswordPage extends StatelessWidget {
  ResetPasswordPage({Key? key}) : super(key: key);
  final TextEditingController resetController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  final TextEditingController newPasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SizedBox.expand(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 3 * SizeConfig.heightMultiplier),
              Text(
                'Reset Password',
                style: Theme.of(context).textTheme.headline5!.copyWith(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              SizedBox(
                width: 91 * SizeConfig.widthMultiplier,
                child: Text(
                  'Reset code was sent to your email id. Please enter the code and create a new password',
                  style: Theme.of(context).textTheme.subtitle1!.copyWith(
                        color: Colors.grey,
                        fontWeight: FontWeight.w400,
                      ),
                ),
              ),
              CustomField(
                  controller: resetController,
                  hintText: '****',
                  title: 'Reset code',
                  textinputType: TextInputType.emailAddress),
              CustomField(
                  controller: newPasswordController,
                  hintText: 'Enter your password here',
                  title: 'Password',
                  textinputType: TextInputType.emailAddress),
              CustomField(
                  controller: confirmPasswordController,
                  hintText: 'Re-Enter your password here',
                  title: 'Confirm Password',
                  textinputType: TextInputType.emailAddress),
              Expanded(
                child: Center(
                  child: PrimaryButton(
                    isExpanded: true,
                    bgColor: primaryColor,
                    onTap: () {
                      Get.to(() => const PasswordChangedPage());
                    },
                    text: 'Change Password',
                    textColor: Colors.white,
                    isShadow: false,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
