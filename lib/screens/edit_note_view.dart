import 'package:flutter/material.dart';
import 'package:note_app/widgets/edit_note_view_body.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});
  static String id = "eidtnoteview";
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          EditNoteViewBody(),
        ],
      ),
    );
  }
}
