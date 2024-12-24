import 'package:flutter/material.dart';
import 'package:notes_app/Views/widgets/custom_note_item.dart';

class ListViewNote extends StatelessWidget {
  const ListViewNote({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: ListView.builder(
          padding: EdgeInsets.zero,
          itemBuilder: (context, item) {
            return const Padding(
              padding: EdgeInsets.symmetric(vertical: 4.0),
              child: NoteItem(),
            );
          }),
    );
  }
}
