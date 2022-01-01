import 'package:flutter/material.dart';
import 'package:todo_task_management/constants/size_config.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    required this.text,
    required this.onTap,
    required this.bgColor,
    this.isShadow = false,
    required this.textColor,
    this.isExpanded = false,
    Key? key,
  }) : super(key: key);
  final VoidCallback onTap;
  final String text;
  final bool isShadow, isExpanded;
  final Color bgColor, textColor;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 7 * SizeConfig.heightMultiplier,
        width: isExpanded
            ? 100 * SizeConfig.widthMultiplier
            : 60 * SizeConfig.widthMultiplier,
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            isShadow
                ? const BoxShadow(
                    color: Colors.black45,
                    blurRadius: 18,
                  )
                : const BoxShadow(
                    color: Colors.black45,
                    blurRadius: 0,
                  ),
          ],
        ),
        child: Center(
          child: Text(
            text,
            style: Theme.of(context)
                .textTheme
                .subtitle1!
                .copyWith(color: textColor, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
