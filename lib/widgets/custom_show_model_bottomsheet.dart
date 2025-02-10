import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/addNotesCubit/add_note_cubit.dart';
import 'package:note_app/helper/snakbar.dart';
import 'package:note_app/widgets/form_note_view.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(),
      child: Container(
        padding: EdgeInsets.only(
            top: 16,
            right: 16,
            left: 16,
            bottom: MediaQuery.of(context).viewInsets.bottom),
        child: BlocConsumer<NotesCubit, NotesState>(
          listener: (context, state) {
            if (state is NotesSuccess) {
              Navigator.pop(context);
            }
            if (state is NotesFailure) {
              snackBar(context, state.errormessage);
            }
          },
          builder: (context, state) {
            return AbsorbPointer(
              absorbing: state is NotesLoading ? true : false,
              child: const SingleChildScrollView(child: NoteFormView()),
            );
          },
        ),
      ),
    );
  }
}
