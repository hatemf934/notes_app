import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/displayNotes/display_notes_cubit.dart';
import 'package:note_app/models/model_notes.dart';
import 'package:note_app/widgets/note_tips.dart';

class NotesListViewBuilder extends StatelessWidget {
  const NotesListViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DisplayNotesCubit, DisplayNotesState>(
      builder: (context, state) {
        List<ModelNotes> notes =
            BlocProvider.of<DisplayNotesCubit>(context).notes ?? [];
        return ListView.builder(
            itemCount: notes.length,
            itemBuilder: (context, index) {
              return NoteTips(
                note: notes[index],
              );
            });
      },
    );
  }
}
