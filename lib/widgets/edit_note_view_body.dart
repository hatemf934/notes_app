import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/displayNotes/display_notes_cubit.dart';
import 'package:note_app/models/model_notes.dart';
import 'package:note_app/widgets/custom_text_feild.dart';
import 'package:note_app/widgets/edit_list_color_item.dart';
import 'package:note_app/widgets/note_app_bar.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({super.key});

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  @override
  Widget build(BuildContext context) {
    ModelNotes note = ModalRoute.of(context)!.settings.arguments as ModelNotes;
    String? title, subTitle;

    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          NotesAppBar(
              onPressed: () {
                note.title = title ?? note.title;
                note.subtitle = subTitle ?? note.subtitle;
                note.save();
                Navigator.pop(context);
                BlocProvider.of<DisplayNotesCubit>(context).displayNote();
              },
              icon: Icons.check,
              textAppbar: "Edit Note"),
          const SizedBox(
            height: 20,
          ),
          CustomTextFiled(
            onchange: (value) {
              title = value;
            },
            hint: note.title,
          ),
          const SizedBox(
            height: 25,
          ),
          CustomTextFiled(
            onchange: (value) {
              subTitle = value;
            },
            hint: note.subtitle,
            maxlines: 5,
          ),
          const SizedBox(
            height: 20,
          ),
          EditListColorItem(
            note: note,
          ),
        ],
      ),
    );
  }
}
