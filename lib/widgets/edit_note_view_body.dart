import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_text_feild.dart';
import 'package:note_app/widgets/note_app_bar.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          NotesAppBar(icon: Icons.check, textAppbar: "Edit Note"),
          SizedBox(
            height: 20,
          ),
          CustomTextFiled(hint: "Title"),
          SizedBox(
            height: 25,
          ),
          CustomTextFiled(
            hint: "Content",
            maxlines: 5,
          ),
        ],
      ),
    );
  }
}
