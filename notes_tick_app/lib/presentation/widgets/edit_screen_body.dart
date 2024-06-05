import 'package:flutter/material.dart';

import 'custom_app_bar.dart';
import 'custom_text_form_filed.dart';

class EditViewBody extends StatelessWidget {
  const EditViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            CustomAppBar(
              title: 'Edit Notes',
              icon: Icons.check,
            ),
            SizedBox(
              height: 50,
            ),
            CustomTextFormField(
              hint: 'Title',
            ),
            SizedBox(
              height: 16,
            ),
            CustomTextFormField(
              hint: 'Content',
              maxlines: 6,
            ),
          ],
        ),
      ),
    );
  }
}
