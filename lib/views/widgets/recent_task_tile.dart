import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:todo_task_management/constants/size_config.dart';

class RecentTaskTile extends StatelessWidget {
  const RecentTaskTile({
    Key key,
    this.color,
    this.time,
    this.title,
  }) : super(key: key);
  final Color color;
  final String title, time;

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> key = GlobalKey<FormState>();

    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Column(
        children: [
          Slidable(
            key: key,
            endActionPane: ActionPane(
              motion: const ScrollMotion(),
              dismissible: DismissiblePane(onDismissed: () {}),
              children: [
                SlidableAction(
                  onPressed: (val) {},
                  backgroundColor: Colors.green.shade600,
                  foregroundColor: Colors.white,
                  icon: Icons.edit,
                  label: 'Edit',
                ),
                SlidableAction(
                  onPressed: (val) {},
                  backgroundColor: const Color(0xFFFE4A49),
                  foregroundColor: Colors.white,
                  icon: Icons.delete,
                  label: 'Delete',
                ),
              ],
            ),
            child: Container(
              height: 7 * SizeConfig.heightMultiplier,
              width: 100 * SizeConfig.widthMultiplier,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.03),
                    offset: const Offset(0, 9),
                    blurRadius: 20,
                    spreadRadius: 1,
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Container(
                      height: 5 * SizeConfig.heightMultiplier,
                      width: 5 * SizeConfig.widthMultiplier,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: color,
                          width: 3,
                        ),
                        shape: BoxShape.circle,
                      ),
                    ),
                    SizedBox(
                      width: 2 * SizeConfig.widthMultiplier,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          title,
                          style: Theme.of(context).textTheme.subtitle1.copyWith(
                              color: Colors.black87,
                              fontWeight: FontWeight.w400),
                        ),
                        Text(
                          time,
                          style: Theme.of(context).textTheme.subtitle2.copyWith(
                              color: Colors.grey, fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Container(
                        height: 7 * SizeConfig.heightMultiplier,
                        width: 1.2 * SizeConfig.widthMultiplier,
                        color: color),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
