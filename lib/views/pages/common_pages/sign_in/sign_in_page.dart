import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_task_management/constants/size_config.dart';
import 'package:todo_task_management/utils/colors.dart';
import 'package:todo_task_management/views/pages/common_pages/recover_mail/recover_mail_page.dart';
import 'package:todo_task_management/views/pages/root/root_page.dart';
import 'package:todo_task_management/views/widgets/primary_button.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

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
            const CustomField(
              textinputType: TextInputType.name,
              hintText: 'JohnDoe',
              title: 'User Name',
            ),
            const CustomField(
              textinputType: TextInputType.name,
              hintText: 'Enter your password here',
              title: 'Password',
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {
                    Get.to(() => const RecoverMailPage());
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

class CustomField extends StatelessWidget {
  const CustomField({
    required this.hintText,
    required this.title,
    required this.textinputType,
    Key? key,
  }) : super(key: key);

  final String title, hintText;
  final TextInputType textinputType;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 3 * SizeConfig.heightMultiplier),
        Text(
          title,
          style: Theme.of(context)
              .textTheme
              .headline6!
              .copyWith(color: Colors.black, fontWeight: FontWeight.w400),
        ),
        TextFormField(
          style: Theme.of(context)
              .textTheme
              .subtitle1!
              .copyWith(color: Colors.black),
          keyboardType: textinputType,
          decoration: InputDecoration(
            enabledBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
            ),
            focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.black),
            ),
            hintText: hintText,
          ),
        )
      ],
    );
  }
}
