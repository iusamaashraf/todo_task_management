import 'package:flutter/material.dart';
import 'package:todo_task_management/constants/size_config.dart';

class CustomField extends StatelessWidget {
  const CustomField({
    this.hintText,
    this.title,
    this.textinputType,
    this.controller,
    Key key,
  }) : super(key: key);

  final String title, hintText;
  final TextInputType textinputType;
  final TextEditingController controller;
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
              .headline6
              .copyWith(color: Colors.black, fontWeight: FontWeight.w400),
        ),
        TextFormField(
          controller: controller,
          style: Theme.of(context)
              .textTheme
              .subtitle1
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
