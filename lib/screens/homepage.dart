import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_show_model_bottomsheet.dart';

import 'package:note_app/widgets/notes_body.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const NotesBody(),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            // add ShowModelBottonSheet
            showModalBottomSheet(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                context: context,
                builder: (context) {
                  return const AddNoteBottomSheet();
                });
          },
          child: const Icon(Icons.add)),
    );
  }
}
