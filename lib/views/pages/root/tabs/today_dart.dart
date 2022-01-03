import 'package:flutter/material.dart';
import 'package:todo_task_management/models/data.dart';
import 'package:todo_task_management/utils/colors.dart';
import 'package:todo_task_management/views/widgets/recent_task_tile.dart';

class TodayTab extends StatelessWidget {
  const TodayTab({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final DateTime today = DateTime.now();

    return Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 10),
                  Text(
                      'Today ${monthNames[today.month - 1]}, ${today.day}/${today.year}',
                      style: Theme.of(context)
                          .textTheme
                          .subtitle2
                          .copyWith(color: Colors.grey)),
                  const SizedBox(height: 10),
                  const RecentTaskTile(
                    color: primaryColor,
                    title: 'Meeting with bilal',
                    time: '2:30 PM',
                  ),
                  const RecentTaskTile(
                    color: Colors.green,
                    title: 'Meeting with son',
                    time: '9:30 AM',
                  ),
                  RecentTaskTile(
                    color: Colors.purple.withOpacity(0.5),
                    title: 'Prayer Time',
                    time: '5:30 PM',
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
