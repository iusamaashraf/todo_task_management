import 'package:flutter/material.dart';
import 'package:todo_task_management/constants/size_config.dart';

class ChooseColor extends StatelessWidget {
  const ChooseColor({
    this.onTap,
    this.color,
    Key key,
  }) : super(key: key);
  final Color color;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 5 * SizeConfig.heightMultiplier,
        width: 12 * SizeConfig.widthMultiplier,
        decoration:
            BoxDecoration(color: color, borderRadius: BorderRadius.circular(5)),
      ),
    );
  }
}
