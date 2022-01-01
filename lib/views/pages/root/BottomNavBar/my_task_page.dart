import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_task_management/constants/size_config.dart';
import 'package:todo_task_management/controllers/onoboard_controller.dart';
import 'package:todo_task_management/utils/colors.dart';
import 'package:todo_task_management/views/pages/root/tabs/monthly_tab.dart';
import 'package:todo_task_management/views/pages/root/tabs/today_dart.dart';

// ignore: must_be_immutable
class MyTaskPage extends StatelessWidget {
  MyTaskPage({Key? key}) : super(key: key);
  List<Widget> pages = const [
    TodayTab(),
    MonthlyTab(),
  ];
  final controller = OnboardController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 11 * SizeConfig.heightMultiplier,
            color: primaryColor,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                upperTab('Today', 0, context),
                upperTab('Monthly', 1, context),
              ],
            ),
          ),
          Expanded(
            child: GetX<OnboardController>(
                init: controller,
                builder: (con) {
                  return pages[con.selectedIndex.value];
                }),
          ),
        ],
      ),
    );
  }

  Widget upperTab(String name, var index, BuildContext context) {
    return GetX<OnboardController>(
        init: controller,
        builder: (con) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              GestureDetector(
                onTap: () {
                  con.selectedIndex.value = index;
                  print(controller.selectedIndex.value);
                  print(index);
                },
                child: Text(
                  name,
                  style: Theme.of(context).textTheme.subtitle1!.copyWith(
                      color: Colors.white,
                      fontSize: index == con.selectedIndex.value
                          ? 2 * SizeConfig.textMultiplier
                          : 1.8 * SizeConfig.textMultiplier),
                ),
              ),
              const SizedBox(height: 10),
              Container(
                height: 4,
                width: 120,
                color: index == con.selectedIndex.value
                    ? Colors.white
                    : Colors.transparent,
              ),
            ],
          );
        });
  }
}
