import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:todo_task_management/models/data.dart';
import 'package:todo_task_management/utils/colors.dart';
import 'package:todo_task_management/views/widgets/recent_task_tile.dart';

class MonthlyTab extends StatefulWidget {
  const MonthlyTab({Key key}) : super(key: key);

  @override
  State<MonthlyTab> createState() => _MonthlyTabState();
}

class _MonthlyTabState extends State<MonthlyTab> {
  final DateTime today = DateTime.now();
  CalendarFormat _calendarFormat = CalendarFormat.week;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// Here is the working of Table calendar
        TableCalendar(
          focusedDay: DateTime.now(),
          firstDay: DateTime.utc(2021, 1, 1),
          lastDay: DateTime.utc(2030, 3, 14),
          calendarFormat: _calendarFormat,
          onFormatChanged: (format) {
            if (_calendarFormat != format) {
              setState(() {
                _calendarFormat = format;
              });
            }
          },
        ),

        // Here the working of Task Recently

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
                    title: 'Daily meeting with noman',
                    time: '9:30 PM',
                  ),
                  const RecentTaskTile(
                    color: Colors.green,
                    title: 'Meeting with bilal',
                    time: '2:30 PM',
                  ),
                  RecentTaskTile(
                    color: Colors.purple.withOpacity(0.5),
                    title: 'Meeting with arif',
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
