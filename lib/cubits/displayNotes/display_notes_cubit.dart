import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:note_app/constants.dart';
import 'package:note_app/models/model_notes.dart';

part 'display_notes_state.dart';

class DisplayNotesCubit extends Cubit<DisplayNotesState> {
  DisplayNotesCubit() : super(DisplayNotesInitial());
  List<ModelNotes>? notes;
  displayNote() {
    var display = Hive.box<ModelNotes>(kNotesHive);
    notes = display.values.toList();
  }
}
