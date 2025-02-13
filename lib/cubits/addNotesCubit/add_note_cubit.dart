import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:note_app/constants.dart';
import 'package:note_app/models/model_notes.dart';

part 'add_note_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());
  Color color = const Color(0xff889E73);
  addNotes(ModelNotes note) {
    note.color = color.value;
    emit(NotesLoading());
    try {
      var notebox = Hive.box<ModelNotes>(kNotesHive);
      notebox.add(note);
      emit(NotesSuccess());
    } catch (e) {
      emit(NotesFailure(e.toString()));
    }
  }
}
