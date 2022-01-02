import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_task_management/constants/size_config.dart';
import 'package:todo_task_management/utils/colors.dart';
import 'package:todo_task_management/views/pages/common_pages/forgot_password/reset_password_page.dart';
import 'package:todo_task_management/views/widgets/custom_text_field.dart';
import 'package:todo_task_management/views/widgets/primary_button.dart';

class RecoverMailPage extends StatelessWidget {
  RecoverMailPage({Key? key}) : super(key: key);
  final TextEditingController mailIDController = TextEditingController();
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
                'Forgot Password',
                style: Theme.of(context).textTheme.headline5!.copyWith(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              SizedBox(
                width: 91 * SizeConfig.widthMultiplier,
                child: Text(
                  'Please enter your emeail to recieve your password and rests information',
                  style: Theme.of(context).textTheme.subtitle1!.copyWith(
                        color: Colors.grey,
                        fontWeight: FontWeight.w400,
                      ),
                ),
              ),
              CustomField(
                hintText: 'john@example.com',
                title: 'Mail ID',
                textinputType: TextInputType.emailAddress,
                controller: mailIDController,
              ),
              SizedBox(height: 5 * SizeConfig.heightMultiplier),
              Center(
                child: PrimaryButton(
                  isExpanded: true,
                  bgColor: primaryColor,
                  onTap: () {
                    Get.to(() => ResetPasswordPage());
                  },
                  text: 'Send Request',
                  textColor: Colors.white,
                  isShadow: false,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
