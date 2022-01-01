import 'package:flutter/material.dart';
import 'package:todo_task_management/constants/size_config.dart';

class DescriptionWidget extends StatelessWidget {
  const DescriptionWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 15 * SizeConfig.heightMultiplier,
          width: 100 * SizeConfig.widthMultiplier,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(12),
              topLeft: Radius.circular(12),
            ),
            border: Border.all(color: Colors.grey),
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(8.0, 0, 8.0, 0),
            child: TextFormField(
              decoration: const InputDecoration(
                  border: InputBorder.none, hintText: 'Add description here'),
            ),
          ),
        ),
        Container(
            height: 5 * SizeConfig.heightMultiplier,
            width: 100 * SizeConfig.widthMultiplier,
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(12),
                bottomRight: Radius.circular(12),
              ),
              border: Border.all(color: Colors.grey),
            ),
            child: Row(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.attach_file, color: Colors.grey))
              ],
            )),
      ],
    );
  }
}
