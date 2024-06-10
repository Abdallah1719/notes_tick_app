import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_tick_app/constants/constants.dart';

import 'package:notes_tick_app/presentation/screens/notes_screen.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.box(kNotesBox);
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(brightness: Brightness.dark),
      home: const NotesView(),
    );
  }
}
