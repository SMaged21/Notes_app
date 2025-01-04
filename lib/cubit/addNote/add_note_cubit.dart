import 'dart:math';

import 'package:hive/hive.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/cubit/addNote/add_note_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/models/note_model.dart';

class NoteCubit extends Cubit<NoteState> {
  NoteCubit() : super(NoteInitial());

  void addNote(NoteModel note) async {
    emit(NoteLoading());
    try {
      var notesBox = Hive.box<NoteModel>(kNotesBox);
      emit(NoteSuccess());
      await notesBox.add(note);
    } catch (e) {
      emit(NoteError(e.toString()));
    }
  }
}
