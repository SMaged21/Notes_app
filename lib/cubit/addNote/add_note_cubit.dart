import 'package:hive/hive.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/cubit/addNote/add_note_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/models/note_model.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  void addNote(NoteModel note) async {
    emit(AddNoteLoading());
    try {
      var notesBox = Hive.box<NoteModel>(kNotesBox);
      await notesBox.add(note);
      emit(AddNoteSuccess());
    } catch (e) {
      emit(AddNoteError(e.toString()));
    }
  }
}
