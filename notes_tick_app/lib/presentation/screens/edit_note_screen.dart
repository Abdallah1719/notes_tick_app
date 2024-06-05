import 'package:flutter/material.dart';
import 'package:notes_tick_app/presentation/widgets/edit_screen_body.dart';

class EditNote extends StatelessWidget {
  const EditNote({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: EditViewBody(),
    );
  }
}
