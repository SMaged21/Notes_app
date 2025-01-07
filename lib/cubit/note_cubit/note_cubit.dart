import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'note_state.dart';

class NoteCubitCubit extends Cubit<NoteState> {
  NoteCubitCubit() : super(NoteInitial());
}
