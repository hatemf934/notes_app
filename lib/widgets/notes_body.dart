import 'package:flutter/material.dart';
import 'package:note_app/widgets/note_app_bar.dart';
import 'package:note_app/widgets/note_tips.dart';

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
          NoteTips(),
        ],
      ),
    );
  }
}
