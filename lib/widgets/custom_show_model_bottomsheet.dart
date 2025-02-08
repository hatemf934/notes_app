import 'package:flutter/material.dart';
import 'package:note_app/widgets/form_note_view.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: const SingleChildScrollView(
        child: NoteFormView(),
      ),
    );
  }
}
