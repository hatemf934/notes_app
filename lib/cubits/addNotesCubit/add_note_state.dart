part of 'add_note_cubit.dart';

@immutable
sealed class NotesState {}

final class NotesInitial extends NotesState {}

final class NotesLoading extends NotesState {}

final class NotesSuccess extends NotesState {}

final class NotesFailure extends NotesState {
  final String errormessage;

  NotesFailure(this.errormessage);
}
