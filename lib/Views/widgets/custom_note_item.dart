import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:notes_app/Views/edit_note_item_view.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/cubit/note_cubit/note_cubit.dart';
import 'package:notes_app/models/note_model.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key, required this.note, required this.id});
  final NoteModel note;
  final int id;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return const EditNoteItemView();
        }));
      },
      child: Container(
        padding: const EdgeInsets.only(top: 24, bottom: 24, left: 16),
        decoration: BoxDecoration(
          color: Color(note.color),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(
                note.title,
                style: const TextStyle(color: Colors.black, fontSize: 26),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: Text(note.content,
                    style: TextStyle(
                        color: Colors.black.withOpacity(.4), fontSize: 20)),
              ),
              trailing: IconButton(
                onPressed: () {
                  Hive.box<NoteModel>(kNotesBox).deleteAt(id);
                  BlocProvider.of<NoteCubit>(context).fetchAllNotes();
                },
                icon: const Icon(
                  Icons.delete,
                  color: Colors.black,
                  size: 30,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 24.0),
              child: Text(
                note.date,
                style: TextStyle(
                    color: Colors.black.withOpacity(.5), fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
