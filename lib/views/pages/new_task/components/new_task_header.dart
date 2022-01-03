import 'package:flutter/material.dart';

class NewTaskHeader extends StatelessWidget {
  const NewTaskHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text('For',
            style: Theme.of(context)
                .textTheme
                .subtitle1
                .copyWith(color: Colors.black, fontWeight: FontWeight.w600)),
        Container(
          //height: 3 * SizeConfig.heightMultiplier,
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
              color: Colors.grey[200], borderRadius: BorderRadius.circular(30)),
          child: Text('Assignee',
              style: Theme.of(context)
                  .textTheme
                  .subtitle1
                  .copyWith(color: Colors.black, fontWeight: FontWeight.w600)),
        ),
        Text('In',
            style: Theme.of(context)
                .textTheme
                .subtitle1
                .copyWith(color: Colors.black, fontWeight: FontWeight.w600)),
        Container(
          //height: 3 * SizeConfig.heightMultiplier,
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
              color: Colors.grey[200], borderRadius: BorderRadius.circular(30)),
          child: Text('Project',
              style: Theme.of(context)
                  .textTheme
                  .subtitle1
                  .copyWith(color: Colors.black, fontWeight: FontWeight.w600)),
        ),
      ],
    );
  }
}
