import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notes_tick_app/constants/constants.dart';
import 'package:notes_tick_app/data/models/note_model.dart';

part 'add_notes_state.dart';

class AddNotesCubit extends Cubit<AddNotesState> {
  AddNotesCubit() : super(AddNotesInitial());

  addNote(NoteModel note) async {
    emit(AddNotesLodding());
    try {
      var notesBox = Hive.box<NoteModel>(kNotesBox);
      emit(AddNotesSucess());
      await notesBox.add(note);
    } catch (e) {
      AddNotesFailure();
    }
  }
}
