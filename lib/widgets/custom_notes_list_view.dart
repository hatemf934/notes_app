import 'package:flutter/material.dart';
import 'package:note_app/widgets/note_tips.dart';

class NotesListViewBuilder extends StatelessWidget {
  const NotesListViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index) {
      return const NoteTips();
    });
  }
}
