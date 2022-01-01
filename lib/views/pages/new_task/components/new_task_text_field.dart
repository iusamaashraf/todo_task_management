import 'package:flutter/material.dart';
import 'package:todo_task_management/constants/size_config.dart';

class NewTaskTextField extends StatelessWidget {
  const NewTaskTextField({
    required this.hintText,
    Key? key,
  }) : super(key: key);
  final String hintText;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100 * SizeConfig.widthMultiplier,
      height: 6 * SizeConfig.heightMultiplier,
      margin: const EdgeInsets.only(top: 8),
      decoration: BoxDecoration(
        color: Colors.grey[200],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: TextFormField(
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: hintText,
          ),
        ),
      ),
    );
  }
}
