import 'package:flutter/material.dart';
import 'package:todo_task_management/constants/size_config.dart';
import 'package:todo_task_management/utils/colors.dart';
import 'package:todo_task_management/views/pages/new_task/components/description_widget.dart';
import 'package:todo_task_management/views/widgets/choose_color.dart';
import 'package:todo_task_management/views/widgets/primary_button.dart';

class AddQuickNote extends StatelessWidget {
  const AddQuickNote({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: primaryColor,
        elevation: 0,
        title: Text(
          'New Note',
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
                              'Description',
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle1!
                                  .copyWith(color: Colors.black),
                            ),
                            const SizedBox(height: 10),
                            const DescriptionWidget(),
                            const SizedBox(height: 10),
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
                                  text: 'Add Note',
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
