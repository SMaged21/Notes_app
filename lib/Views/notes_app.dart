import 'package:flutter/material.dart';
import 'package:notes_app/Views/widgets/note_model_bottom_sheet.dart';
import 'package:notes_app/Views/widgets/notes_widget.dart';

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xFF03FCEC),
        foregroundColor: Colors.black38,
        onPressed: () {
          showModalBottomSheet(
              isScrollControlled: true,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              context: context,
              builder: (context) {
                return const NoteModelBottomSheet();
              });
        },
        child: const Icon(Icons.add),
      ),
      body: const NotesWidget(),
    );
  }
}
