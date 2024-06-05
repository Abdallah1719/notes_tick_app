import 'package:flutter/material.dart';
import 'package:notes_tick_app/presentation/widgets/custom_text_form_filed.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: CustomTextFormField(hint: 'title'),
        ),
      ),
    );
  }
}
