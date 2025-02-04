import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_notes_list_view.dart';
import 'package:note_app/widgets/note_app_bar.dart';

class NotesBody extends StatelessWidget {
  const NotesBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          NotesAppBar(),
          Expanded(
            child: NotesListViewBuilder(),
          ),
        ],
      ),
    );
  }
}
