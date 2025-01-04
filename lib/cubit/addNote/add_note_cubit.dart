import 'package:notes_app/cubit/addNote/add_note_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NoteCubit extends Cubit<NoteState> {
  NoteCubit() : super(NoteInitial());
}
