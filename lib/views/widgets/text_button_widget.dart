import 'package:flutter/material.dart';

class TextButtonWidget extends StatelessWidget {
  const TextButtonWidget({
    required this.onTap,
    required this.title,
    this.isShowDivider = true,
    Key? key,
  }) : super(key: key);
  final String title;
  final VoidCallback onTap;
  final bool isShowDivider;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
          onPressed: onTap,
          child: Text(
            title,
            style: Theme.of(context)
                .textTheme
                .subtitle1!
                .copyWith(color: Colors.black87, fontWeight: FontWeight.w500),
          ),
        ),
        isShowDivider
            ? const Divider(
                color: Colors.black54,
              )
            : const SizedBox(),
      ],
    );
  }
}
