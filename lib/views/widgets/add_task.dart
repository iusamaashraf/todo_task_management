import 'package:flutter/material.dart';
import 'package:todo_task_management/constants/size_config.dart';
import 'package:todo_task_management/utils/colors.dart';

class AddTask extends StatelessWidget {
  const AddTask({
    this.onTap,
    Key key,
  }) : super(key: key);

  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          height: 8 * SizeConfig.heightMultiplier,
          width: 8 * SizeConfig.widthMultiplier,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [primaryColor, Colors.red],
            ),
            shape: BoxShape.circle,
          ),
          child: const Icon(Icons.add, color: Colors.white)),
    );
  }
}
