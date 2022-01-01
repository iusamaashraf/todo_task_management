import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_task_management/constants/size_config.dart';
import 'package:todo_task_management/controllers/onoboard_controller.dart';
import 'package:todo_task_management/utils/colors.dart';
import 'package:todo_task_management/views/pages/new_task/components/new_task_text_field.dart';
import 'package:todo_task_management/views/widgets/choose_color.dart';
import 'package:todo_task_management/views/widgets/primary_button.dart';

class AddChecklist extends StatelessWidget {
  AddChecklist({Key? key}) : super(key: key);

  final checkBoxController = OnboardController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: primaryColor,
        elevation: 0,
        title: Text(
          'New Checklist',
          style: Theme.of(context)
              .textTheme
              .headline5!
              .copyWith(color: Colors.white),
        ),
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: SizedBox.expand(
        child: Stack(
          children: [
            Container(
              height: 5 * SizeConfig.heightMultiplier,
              width: 100 * SizeConfig.widthMultiplier,
              color: primaryColor,
            ),
            Positioned(
              bottom: 0,
              child: Container(
                  height: 8 * SizeConfig.heightMultiplier,
                  width: 100 * SizeConfig.widthMultiplier,
                  color: Colors.black.withOpacity(1)),
            ),
            Container(
              margin: EdgeInsets.symmetric(
                  horizontal: 5 * SizeConfig.widthMultiplier),
              height: 85 * SizeConfig.heightMultiplier,
              width: 100 * SizeConfig.widthMultiplier,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                    vertical: 4 * SizeConfig.heightMultiplier,
                    horizontal: 2 * SizeConfig.heightMultiplier),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(1 * SizeConfig.heightMultiplier),
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Title',
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle1!
                                  .copyWith(color: Colors.black),
                            ),
                            const NewTaskTextField(
                                hintText: 'Enter the title here'),
                            const SizedBox(height: 10),
                            CheckBoxWidget(
                              checkBoxController: checkBoxController,
                              title: 'Listitem 1',
                            ),
                            CheckBoxWidget(
                              checkBoxController: checkBoxController,
                              title: 'Listitem 2',
                            ),
                            CheckBoxWidget(
                              checkBoxController: checkBoxController,
                              title: 'Listitem 3',
                            ),
                            Text(
                              'Color',
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle1!
                                  .copyWith(color: Colors.black),
                            ),
                            const SizedBox(height: 5),
                            SizedBox(height: 2 * SizeConfig.heightMultiplier),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                ChooseColor(
                                  color: primaryColor,
                                  onTap: () {},
                                ),
                                ChooseColor(
                                  color: Colors.blue.withOpacity(0.5),
                                  onTap: () {},
                                ),
                                ChooseColor(
                                  color: Colors.green,
                                  onTap: () {},
                                ),
                                ChooseColor(
                                  color: Colors.amber.withOpacity(0.5),
                                  onTap: () {},
                                ),
                                ChooseColor(
                                  color: Colors.purple,
                                  onTap: () {},
                                ),
                              ],
                            ),
                            SizedBox(height: 5 * SizeConfig.heightMultiplier),
                            Center(
                              child: PrimaryButton(
                                  isExpanded: true,
                                  text: 'Add Checklist',
                                  onTap: () {},
                                  bgColor: primaryColor,
                                  textColor: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CheckBoxWidget extends StatelessWidget {
  const CheckBoxWidget({
    Key? key,
    required this.checkBoxController,
    required this.title,
  }) : super(key: key);

  final OnboardController checkBoxController;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      GetX<OnboardController>(
          init: checkBoxController,
          builder: (con) {
            return Checkbox(
              value: con.rememberMe.value,
              onChanged: (val) {
                con.rememberMe.value = val as bool;
              },
            );
          }),
      // SizedBox(width:  * SizeConfig.widthMultiplier),
      Text(
        title,
        style: Theme.of(context)
            .textTheme
            .subtitle2!
            .copyWith(color: Colors.black),
      ),
    ]);
  }
}
