import 'package:flutter/material.dart';
import 'package:notes_tick_app/presentation/widgets/custom_text_form_filed.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          height: 32,
        ),
        CustomTextFormField(hint: 'title'),
        SizedBox(
          height: 32,
        ),
        CustomTextFormField(
          hint: 'subtitle',
          maxlines: 6,
        ),
      ],
    );
  }
}
