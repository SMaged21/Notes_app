import 'package:flutter/material.dart';
import 'package:notes_app/Views/widgets/notes_widget.dart';

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: NotesWidget()),
    );
  }
}
