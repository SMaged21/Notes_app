import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/Views/widgets/custom_app_bar.dart';
import 'package:notes_app/Views/widgets/custom_textfield.dart';
import 'package:notes_app/cubit/note_cubit/note_cubit.dart';
import 'package:notes_app/models/note_model.dart';

class EditNoteItemBody extends StatefulWidget {
  const EditNoteItemBody({super.key, required this.note});
  final NoteModel note;
  @override
  State<EditNoteItemBody> createState() => _EditNoteItemBodyState();
}

class _EditNoteItemBodyState extends State<EditNoteItemBody> {
  String? title, content;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          CustomAppBar(
              onTap: () {
                widget.note.title = title ?? widget.note.title;
                widget.note.content = content ?? widget.note.content;
                widget.note.save();
                BlocProvider.of<NoteCubit>(context).fetchAllNotes();
                Navigator.pop(context, widget.note);
              },
              title: "Edit",
              iconData: Icons.check),
          const SizedBox(
            height: 50,
          ),
          CustomTextfield(
              onChanged: (value) {
                title = value;
              },
              hintText: "Title"),
          const SizedBox(
            height: 16,
          ),
          CustomTextfield(
            onChanged: (value) {
              content = value;
            },
            hintText: "Content",
            maxLines: 5,
          )
        ],
      ),
    );
  }
}
