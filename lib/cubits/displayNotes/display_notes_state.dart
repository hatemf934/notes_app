part of 'display_notes_cubit.dart';

@immutable
sealed class DisplayNotesState {}

final class DisplayNotesInitial extends DisplayNotesState {}

final class DisplayNotesSuccess extends DisplayNotesState {
  final List<ModelNotes> notes;

  DisplayNotesSuccess(this.notes);
}
