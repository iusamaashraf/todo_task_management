import 'package:flutter/material.dart';
import 'package:todo_task_management/constants/size_config.dart';
import 'package:todo_task_management/utils/colors.dart';
import 'package:todo_task_management/views/pages/new_task/components/new_task_header.dart';
import 'package:todo_task_management/views/pages/new_task/components/new_task_text_field.dart';
import 'package:todo_task_management/views/widgets/primary_button.dart';

import 'components/description_widget.dart';

class NewTaskPage extends StatelessWidget {
  NewTaskPage({Key key}) : super(key: key);
  final TextEditingController titleController = TextEditingController();
  final TextEditingController dueDate = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: primaryColor,
        elevation: 0,
        title: Text(
          'New Task',
          style: Theme.of(context)
              .textTheme
              .headline5
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
                    const NewTaskHeader(),
                    const SizedBox(height: 10),
                    NewTaskTextField(
                      controller: titleController,
                      hintText: 'Title',
                    ),
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
                                  .subtitle1
                                  .copyWith(color: Colors.black),
                            ),
                            const SizedBox(height: 10),
                            const DescriptionWidget(),
                            const SizedBox(height: 10),
                            NewTaskTextField(
                              hintText: 'Due Date',
                              controller: dueDate,
                            ),
                            const SizedBox(height: 10),
                            Text(
                              'Add member',
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle1
                                  .copyWith(color: Colors.black),
                            ),
                            const SizedBox(height: 10),
                            Container(
                              padding: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                  borderRadius: BorderRadius.circular(30)),
                              child: Text('Anyone',
                                  style: Theme.of(context)
                                      .textTheme
                                      .subtitle1
                                      .copyWith(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w600)),
                            ),
                            SizedBox(height: 2 * SizeConfig.heightMultiplier),
                            Center(
                              child: PrimaryButton(
                                  isExpanded: true,
                                  text: 'Add tasks',
                                  onTap: () {},
                                  bgColor: primaryColor,
                                  textColor: Colors.white),
                            )
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
