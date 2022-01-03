// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_task_management/constants/size_config.dart';
import 'package:todo_task_management/controllers/onoboard_controller.dart';
import 'package:todo_task_management/utils/colors.dart';
import 'package:todo_task_management/views/pages/add_checklist/add_checklist.dart';
import 'package:todo_task_management/views/pages/add_quick_note/add_quick_note.dart';
import 'package:todo_task_management/views/pages/new_task/new_task_page.dart';
import 'package:todo_task_management/views/pages/root/BottomNavBar/my_task_page.dart';
import 'package:todo_task_management/views/pages/root/BottomNavBar/quick_page.dart';
import 'package:todo_task_management/views/widgets/add_task.dart';
import 'package:todo_task_management/views/widgets/text_button_widget.dart';

import 'BottomNavBar/menu_page.dart';
import 'BottomNavBar/profile.dart';

class RootPage extends StatelessWidget {
  List<Widget> bottomNavPages = [
    MyTaskPage(),
    const MenuPage(),
    const QuickPage(),
    const ProfilePage(),
  ];

  RootPage({Key key}) : super(key: key);
  final controller = OnboardController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppBar(
                backgroundColor: primaryColor,
                elevation: 0,
                leading: const Icon(Icons.ac_unit, color: primaryColor),
                title: Text(
                  'Work List',
                  style: Theme.of(context)
                      .textTheme
                      .headline5
                      .copyWith(color: Colors.white),
                ),
                centerTitle: true,
                actions: [
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.short_text),
                    ),
                  ),
                ]),
            Expanded(
              child: GetX<OnboardController>(
                  init: controller,
                  builder: (con) {
                    return bottomNavPages[con.bottomNavselectedPageIndex.value];
                  }),
            ),
            SizedBox(
              height: 12 * SizeConfig.heightMultiplier,
              child: Stack(
                children: [
                  Positioned(
                    bottom: 0,
                    child: Container(
                      height: 9 * SizeConfig.heightMultiplier,
                      width: 100 * SizeConfig.widthMultiplier,
                      color: btoomNavColor,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          bottomNavTile(
                              'My Task', Icons.check_circle, 0, context),
                          bottomNavTile('Menu', Icons.menu, 1, context),
                          Container(width: 9 * SizeConfig.widthMultiplier),
                          bottomNavTile(
                              'Quick', Icons.content_paste, 2, context),
                          bottomNavTile(
                              'Profile', Icons.account_circle, 3, context),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 4 * SizeConfig.heightMultiplier,
                    left: 0,
                    right: 0,
                    child: AddTask(
                      onTap: () {
                        Get.dialog(Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                                padding: const EdgeInsets.all(12),
                                width: 70 * SizeConfig.widthMultiplier,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        TextButtonWidget(
                                          onTap: () {
                                            Get.to(() => NewTaskPage());
                                          },
                                          title: 'Add Task',
                                        ),
                                        TextButtonWidget(
                                          onTap: () {
                                            Get.to(() => const AddQuickNote());
                                          },
                                          title: 'Add Quick Note',
                                        ),
                                        TextButtonWidget(
                                          onTap: () {
                                            Get.to(() => AddChecklist());
                                          },
                                          title: 'Add Checklist',
                                          isShowDivider: false,
                                        ),
                                      ],
                                    ))),
                          ],
                        ));
                      },
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget bottomNavTile(
      String title, IconData icon, int index, BuildContext context) {
    return GestureDetector(
        onTap: () {
          controller.bottomNavselectedPageIndex.value = index;
        },
        child: Obx(() => Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  icon,
                  color: controller.bottomNavselectedPageIndex.value == index
                      ? primaryColor
                      : Colors.white,
                ),
                const SizedBox(height: 5),
                Text(
                  title,
                  style: Theme.of(context).textTheme.subtitle2.copyWith(
                        color:
                            index == controller.bottomNavselectedPageIndex.value
                                ? primaryColor
                                : Colors.white,
                      ),
                )
              ],
            )));
  }
}
