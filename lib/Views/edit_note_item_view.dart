import 'package:flutter/material.dart';
import 'package:notes_app/Views/widgets/edit_note_item_body.dart';
import 'package:notes_app/models/note_model.dart';

class EditNoteItemView extends StatelessWidget {
  const EditNoteItemView({super.key, required this.note});
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EditNoteItemBody(note: note),
    );
  }
}
