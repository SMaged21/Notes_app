import 'package:flutter/material.dart';
import 'package:notes_app/Views/widgets/edit_note_item_body.dart';

class EditNoteItemView extends StatelessWidget {
  const EditNoteItemView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: EditNoteItemBody(),
    );
  }
}
