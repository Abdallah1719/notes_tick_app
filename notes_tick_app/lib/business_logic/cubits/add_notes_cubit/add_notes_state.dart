part of 'add_notes_cubit.dart';

@immutable
abstract class AddNotesState {}

class AddNotesInitial extends AddNotesState {}

class AddNotesLodding extends AddNotesState {}

class AddNotesSucess extends AddNotesState {}

class AddNotesFailure extends AddNotesState {
  final String? errorMassage;

  AddNotesFailure({ this.errorMassage});

}
