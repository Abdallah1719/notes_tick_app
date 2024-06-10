import 'package:flutter/material.dart';
import 'package:notes_tick_app/presentation/widgets/custom_button.dart';
import 'package:notes_tick_app/presentation/widgets/custom_text_form_filed.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const AddNoteForm();
  }
}

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formkey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subtitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      child: Column(
        children: [
          const SizedBox(
            height: 32,
          ),
          CustomTextFormField(
            hint: 'title',
            onsaved: (value) {
              title = value;
            },
          ),
          const SizedBox(
            height: 32,
          ),
          CustomTextFormField(
            hint: 'subtitle',
            maxlines: 6,
            onsaved: (value) {
              subtitle = value;
            },
          ),
          const SizedBox(
            height: 32,
          ),
          CustomBUtton(
            ontap: () {
              if (formkey.currentState!.validate()) {
                formkey.currentState!.save();
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
          ),
        ],
      ),
    );
  }
}
